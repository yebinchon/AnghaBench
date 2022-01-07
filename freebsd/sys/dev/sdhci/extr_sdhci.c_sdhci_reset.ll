; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i64, i64, i32 }

@SDHCI_QUIRK_NO_CARD_NO_RESET = common dso_local global i32 0, align 4
@SDHCI_RESET_ALL = common dso_local global i32 0, align 4
@SDHCI_QUIRK_CLOCK_BEFORE_RESET = common dso_local global i32 0, align 4
@SDHCI_SOFTWARE_RESET = common dso_local global i32 0, align 4
@SDHCI_QUIRK_WAITFOR_RESET_ASSERTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Reset 0x%x never completed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_slot*, i32)* @sdhci_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_reset(%struct.sdhci_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %8 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SDHCI_QUIRK_NO_CARD_NO_RESET, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %15 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %18 = call i32 @SDHCI_GET_CARD_PRESENT(i32 %16, %struct.sdhci_slot* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %103

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %29 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SDHCI_QUIRK_CLOCK_BEFORE_RESET, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %36 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  %38 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %39 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @sdhci_set_clock(%struct.sdhci_slot* %40, i64 %41)
  br label %43

43:                                               ; preds = %34, %27, %22
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %50 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %52 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %55 = load i32, i32* @SDHCI_SOFTWARE_RESET, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @WR1(%struct.sdhci_slot* %54, i32 %55, i32 %56)
  %58 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %59 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SDHCI_QUIRK_WAITFOR_RESET_ASSERTED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %53
  store i32 10000, i32* %5, align 4
  br label %65

65:                                               ; preds = %77, %64
  %66 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %67 = load i32, i32* @SDHCI_SOFTWARE_RESET, align 4
  %68 = call i32 @RD1(%struct.sdhci_slot* %66, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i32, i32* %5, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %81

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %5, align 4
  %80 = call i32 @DELAY(i32 1)
  br label %65

81:                                               ; preds = %76, %65
  br label %82

82:                                               ; preds = %81, %53
  store i32 10000, i32* %5, align 4
  br label %83

83:                                               ; preds = %99, %82
  %84 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %85 = load i32, i32* @SDHCI_SOFTWARE_RESET, align 4
  %86 = call i32 @RD1(%struct.sdhci_slot* %84, i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %83
  %91 = load i32, i32* %5, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @slot_printf(%struct.sdhci_slot* %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %98 = call i32 @sdhci_dumpregs(%struct.sdhci_slot* %97)
  br label %103

99:                                               ; preds = %90
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %5, align 4
  %102 = call i32 @DELAY(i32 10)
  br label %83

103:                                              ; preds = %20, %93, %83
  ret void
}

declare dso_local i32 @SDHCI_GET_CARD_PRESENT(i32, %struct.sdhci_slot*) #1

declare dso_local i32 @sdhci_set_clock(%struct.sdhci_slot*, i64) #1

declare dso_local i32 @WR1(%struct.sdhci_slot*, i32, i32) #1

declare dso_local i32 @RD1(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @slot_printf(%struct.sdhci_slot*, i8*, i32) #1

declare dso_local i32 @sdhci_dumpregs(%struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
