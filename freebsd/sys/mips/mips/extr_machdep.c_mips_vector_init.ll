; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_machdep.c_mips_vector_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_machdep.c_mips_vector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MipsWaitEnd = common dso_local global i32 0, align 4
@MipsWaitStart = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"startup: MIPS wait region not correct\00", align 1
@MipsTLBMissEnd = common dso_local global i32 0, align 4
@MipsTLBMiss = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"startup: UTLB code too large\00", align 1
@MipsCacheEnd = common dso_local global i32 0, align 4
@MipsCache = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"startup: Cache error code too large\00", align 1
@MIPS_UTLB_MISS_EXC_VEC = common dso_local global i64 0, align 8
@MipsException = common dso_local global i32 0, align 4
@MIPS_GEN_EXC_VEC = common dso_local global i64 0, align 8
@MipsExceptionEnd = common dso_local global i32 0, align 4
@MIPS_CACHE_ERR_EXC_VEC = common dso_local global i64 0, align 8
@MIPS_SR_BEV = common dso_local global i32 0, align 4
@MIPS_XTLB_MISS_EXC_VEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_vector_init() #0 {
  %1 = load i32, i32* @MipsWaitEnd, align 4
  %2 = load i32, i32* @MipsWaitStart, align 4
  %3 = sub nsw i32 %1, %2
  %4 = icmp ne i32 %3, 16
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* @MipsTLBMissEnd, align 4
  %9 = load i32, i32* @MipsTLBMiss, align 4
  %10 = sub nsw i32 %8, %9
  %11 = icmp sgt i32 %10, 128
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %7
  %15 = load i32, i32* @MipsCacheEnd, align 4
  %16 = load i32, i32* @MipsCache, align 4
  %17 = sub nsw i32 %15, %16
  %18 = icmp sgt i32 %17, 128
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i32, i32* @MipsTLBMiss, align 4
  %23 = load i64, i64* @MIPS_UTLB_MISS_EXC_VEC, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* @MipsTLBMissEnd, align 4
  %26 = load i32, i32* @MipsTLBMiss, align 4
  %27 = sub nsw i32 %25, %26
  %28 = call i32 @bcopy(i32 %22, i8* %24, i32 %27)
  %29 = load i32, i32* @MipsException, align 4
  %30 = load i64, i64* @MIPS_GEN_EXC_VEC, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load i32, i32* @MipsExceptionEnd, align 4
  %33 = load i32, i32* @MipsException, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i32 @bcopy(i32 %29, i8* %31, i32 %34)
  %36 = load i32, i32* @MipsCache, align 4
  %37 = load i64, i64* @MIPS_CACHE_ERR_EXC_VEC, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load i32, i32* @MipsCacheEnd, align 4
  %40 = load i32, i32* @MipsCache, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i32 @bcopy(i32 %36, i8* %38, i32 %41)
  %43 = call i32 (...) @mips_icache_sync_all()
  %44 = call i32 (...) @mips_dcache_wbinv_all()
  %45 = call i32 @set_intr_mask(i32 0)
  %46 = call i32 (...) @mips_rd_status()
  %47 = load i32, i32* @MIPS_SR_BEV, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i32 @mips_wr_status(i32 %49)
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bcopy(i32, i8*, i32) #1

declare dso_local i32 @mips_icache_sync_all(...) #1

declare dso_local i32 @mips_dcache_wbinv_all(...) #1

declare dso_local i32 @set_intr_mask(i32) #1

declare dso_local i32 @mips_wr_status(i32) #1

declare dso_local i32 @mips_rd_status(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
