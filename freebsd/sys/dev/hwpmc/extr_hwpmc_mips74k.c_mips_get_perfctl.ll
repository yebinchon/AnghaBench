; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mips74k.c_mips_get_perfctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mips74k.c_mips_get_perfctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIPS74K_PMC_SELECT = common dso_local global i32 0, align 4
@PMC_CAP_SYSTEM = common dso_local global i32 0, align 4
@MIPS74K_PMC_SUPER_ENABLE = common dso_local global i32 0, align 4
@MIPS74K_PMC_KERNEL_ENABLE = common dso_local global i32 0, align 4
@PMC_CAP_USER = common dso_local global i32 0, align 4
@MIPS74K_PMC_USER_ENABLE = common dso_local global i32 0, align 4
@MIPS74K_PMC_ENABLE = common dso_local global i32 0, align 4
@PMC_CAP_INTERRUPT = common dso_local global i32 0, align 4
@MIPS74K_PMC_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@MDP = common dso_local global i32 0, align 4
@ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"mips74k-get_perfctl ri=%d -> config=0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_get_perfctl(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @MIPS74K_PMC_SELECT, align 4
  %12 = load i32, i32* %9, align 4
  %13 = shl i32 %12, %11
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PMC_CAP_SYSTEM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i32, i32* @MIPS74K_PMC_SUPER_ENABLE, align 4
  %20 = load i32, i32* @MIPS74K_PMC_KERNEL_ENABLE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %18, %4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @PMC_CAP_USER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @MIPS74K_PMC_USER_ENABLE, align 4
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PMC_CAP_USER, align 4
  %36 = load i32, i32* @PMC_CAP_SYSTEM, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @MIPS74K_PMC_ENABLE, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @PMC_CAP_INTERRUPT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @MIPS74K_PMC_INTERRUPT_ENABLE, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* @MDP, align 4
  %55 = load i32, i32* @ALL, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @PMCDBG2(i32 %54, i32 %55, i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @PMCDBG2(i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
