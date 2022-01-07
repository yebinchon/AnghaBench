; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_machdep_e500.c_booke_enable_l2_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_machdep_e500.c_booke_enable_l2_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSL_E500mc = common dso_local global i32 0, align 4
@FSL_E5500 = common dso_local global i32 0, align 4
@SPR_L2CSR0 = common dso_local global i32 0, align 4
@L2CSR0_L2E = common dso_local global i32 0, align 4
@boothowto = common dso_local global i32 0, align 4
@RB_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"L2 cache %sabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @booke_enable_l2_cache() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @mfpvr()
  %3 = ashr i32 %2, 16
  %4 = and i32 %3, 65535
  %5 = load i32, i32* @FSL_E500mc, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %0
  %8 = call i32 (...) @mfpvr()
  %9 = ashr i32 %8, 16
  %10 = and i32 %9, 65535
  %11 = load i32, i32* @FSL_E5500, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %7, %0
  %14 = load i32, i32* @SPR_L2CSR0, align 4
  %15 = call i32 @mfspr(i32 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @L2CSR0_L2E, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = call i32 (...) @l2cache_inval()
  %22 = call i32 (...) @l2cache_enable()
  br label %23

23:                                               ; preds = %20, %13
  %24 = load i32, i32* @SPR_L2CSR0, align 4
  %25 = call i32 @mfspr(i32 %24)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* @boothowto, align 4
  %27 = load i32, i32* @RB_VERBOSE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @L2CSR0_L2E, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30, %23
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @L2CSR0_L2E, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %42 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %35, %30
  br label %44

44:                                               ; preds = %43, %7
  ret void
}

declare dso_local i32 @mfpvr(...) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @l2cache_inval(...) #1

declare dso_local i32 @l2cache_enable(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
