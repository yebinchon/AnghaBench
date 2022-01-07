; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_set_power.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i32 }

@SDHCI_POWER_CONTROL = common dso_local global i32 0, align 4
@SDHCI_POWER_180 = common dso_local global i32 0, align 4
@SDHCI_POWER_300 = common dso_local global i32 0, align 4
@SDHCI_POWER_330 = common dso_local global i32 0, align 4
@SDHCI_POWER_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Bus power failed to enable\0A\00", align 1
@SDHCI_QUIRK_INTEL_POWER_UP_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_slot*, i32)* @sdhci_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_set_power(%struct.sdhci_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %8 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %96

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %16 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %18 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @WR1(%struct.sdhci_slot* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %96

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 1, %25
  switch i32 %26, label %39 [
    i32 128, label %27
    i32 132, label %31
    i32 131, label %31
    i32 130, label %35
    i32 129, label %35
  ]

27:                                               ; preds = %24
  %28 = load i32, i32* @SDHCI_POWER_180, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %39

31:                                               ; preds = %24, %24
  %32 = load i32, i32* @SDHCI_POWER_300, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %39

35:                                               ; preds = %24, %24
  %36 = load i32, i32* @SDHCI_POWER_330, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %24, %35, %31, %27
  %40 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %41 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @WR1(%struct.sdhci_slot* %40, i32 %41, i32 %42)
  %44 = load i32, i32* @SDHCI_POWER_ON, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %64, %39
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 20
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %52 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @WR1(%struct.sdhci_slot* %51, i32 %52, i32 %53)
  %55 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %56 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %57 = call i32 @RD1(%struct.sdhci_slot* %55, i32 %56)
  %58 = load i32, i32* @SDHCI_POWER_ON, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %67

62:                                               ; preds = %50
  %63 = call i32 @DELAY(i32 100)
  br label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %47

67:                                               ; preds = %61, %47
  %68 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %69 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %70 = call i32 @RD1(%struct.sdhci_slot* %68, i32 %69)
  %71 = load i32, i32* @SDHCI_POWER_ON, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %76 = call i32 @slot_printf(%struct.sdhci_slot* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %67
  %78 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %79 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SDHCI_QUIRK_INTEL_POWER_UP_RESET, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %77
  %85 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %86 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, 16
  %89 = call i32 @WR1(%struct.sdhci_slot* %85, i32 %86, i32 %88)
  %90 = call i32 @DELAY(i32 10)
  %91 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %92 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @WR1(%struct.sdhci_slot* %91, i32 %92, i32 %93)
  %95 = call i32 @DELAY(i32 300)
  br label %96

96:                                               ; preds = %12, %23, %84, %77
  ret void
}

declare dso_local i32 @WR1(%struct.sdhci_slot*, i32, i32) #1

declare dso_local i32 @RD1(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @slot_printf(%struct.sdhci_slot*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
