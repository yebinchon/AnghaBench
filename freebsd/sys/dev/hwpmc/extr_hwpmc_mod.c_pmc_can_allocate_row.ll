; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_can_allocate_row.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_can_allocate_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pmc_sx = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@PMC = common dso_local global i32 0, align 4
@ALR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can-allocate-row ri=%d mode=%d\00", align 1
@PMC_DISP_STANDALONE = common dso_local global i32 0, align 4
@PMC_DISP_THREAD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"can-allocate-row ri=%d mode=%d ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pmc_can_allocate_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_can_allocate_row(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @SX_XLOCKED, align 4
  %8 = call i32 @sx_assert(i32* @pmc_sx, i32 %7)
  %9 = load i32, i32* @PMC, align 4
  %10 = load i32, i32* @ALR, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @PMCDBG2(i32 %9, i32 %10, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @PMC_IS_SYSTEM_MODE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @PMC_DISP_STANDALONE, align 4
  store i32 %18, i32* %6, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @PMC_DISP_THREAD, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @PMC_ROW_DISP_IS_FREE(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PMC_DISP_THREAD, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @PMC_ROW_DISP_IS_THREAD(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PMC_DISP_STANDALONE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @PMC_ROW_DISP_IS_STANDALONE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @EBUSY, align 4
  store i32 %42, i32* %3, align 4
  br label %49

43:                                               ; preds = %37, %29, %21
  %44 = load i32, i32* @PMC, align 4
  %45 = load i32, i32* @ALR, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @PMCDBG2(i32 %44, i32 %45, i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %41
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @PMCDBG2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @PMC_IS_SYSTEM_MODE(i32) #1

declare dso_local i32 @PMC_ROW_DISP_IS_FREE(i32) #1

declare dso_local i64 @PMC_ROW_DISP_IS_THREAD(i32) #1

declare dso_local i64 @PMC_ROW_DISP_IS_STANDALONE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
