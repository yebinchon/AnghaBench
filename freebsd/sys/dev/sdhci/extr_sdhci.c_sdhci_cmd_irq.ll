; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_cmd_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_cmd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"Got command interrupt 0x%08x, but there is no active command.\0A\00", align 1
@SDHCI_INT_TIMEOUT = common dso_local global i32 0, align 4
@MMC_ERR_TIMEOUT = common dso_local global i32 0, align 4
@SDHCI_INT_CRC = common dso_local global i32 0, align 4
@MMC_ERR_BADCRC = common dso_local global i32 0, align 4
@SDHCI_INT_END_BIT = common dso_local global i32 0, align 4
@SDHCI_INT_INDEX = common dso_local global i32 0, align 4
@MMC_ERR_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_slot*, i32)* @sdhci_cmd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_cmd_irq(%struct.sdhci_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_slot*, align 8
  %4 = alloca i32, align 4
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %6 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @slot_printf(%struct.sdhci_slot* %10, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %14 = call i32 @sdhci_dumpregs(%struct.sdhci_slot* %13)
  br label %55

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SDHCI_INT_TIMEOUT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @MMC_ERR_TIMEOUT, align 4
  %22 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %23 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  br label %52

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SDHCI_INT_CRC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @MMC_ERR_BADCRC, align 4
  %33 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %34 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  br label %51

37:                                               ; preds = %26
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SDHCI_INT_END_BIT, align 4
  %40 = load i32, i32* @SDHCI_INT_INDEX, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* @MMC_ERR_FIFO, align 4
  %46 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %47 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %37
  br label %51

51:                                               ; preds = %50, %31
  br label %52

52:                                               ; preds = %51, %20
  %53 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %54 = call i32 @sdhci_finish_command(%struct.sdhci_slot* %53)
  br label %55

55:                                               ; preds = %52, %9
  ret void
}

declare dso_local i32 @slot_printf(%struct.sdhci_slot*, i8*, i32) #1

declare dso_local i32 @sdhci_dumpregs(%struct.sdhci_slot*) #1

declare dso_local i32 @sdhci_finish_command(%struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
