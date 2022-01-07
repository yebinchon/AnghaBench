; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_machdep_e500.c_booke_enable_l1_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_machdep_e500.c_booke_enable_l1_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPR_L1CSR0 = common dso_local global i32 0, align 4
@L1CSR0_DCE = common dso_local global i32 0, align 4
@boothowto = common dso_local global i32 0, align 4
@RB_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"L1 D-cache %sabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@SPR_L1CSR1 = common dso_local global i32 0, align 4
@L1CSR1_ICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"L1 I-cache %sabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @booke_enable_l1_cache() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SPR_L1CSR0, align 4
  %3 = call i32 @mfspr(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @L1CSR0_DCE, align 4
  %6 = and i32 %4, %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 (...) @dcache_inval()
  %10 = call i32 (...) @dcache_enable()
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, i32* @SPR_L1CSR0, align 4
  %13 = call i32 @mfspr(i32 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @boothowto, align 4
  %15 = load i32, i32* @RB_VERBOSE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @L1CSR0_DCE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18, %11
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @L1CSR0_DCE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %23, %18
  %32 = load i32, i32* @SPR_L1CSR1, align 4
  %33 = call i32 @mfspr(i32 %32)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @L1CSR1_ICE, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = call i32 (...) @icache_inval()
  %40 = call i32 (...) @icache_enable()
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32, i32* @SPR_L1CSR1, align 4
  %43 = call i32 @mfspr(i32 %42)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* @boothowto, align 4
  %45 = load i32, i32* @RB_VERBOSE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @L1CSR1_ICE, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48, %41
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* @L1CSR1_ICE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %53, %48
  ret void
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @dcache_inval(...) #1

declare dso_local i32 @dcache_enable(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @icache_inval(...) #1

declare dso_local i32 @icache_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
