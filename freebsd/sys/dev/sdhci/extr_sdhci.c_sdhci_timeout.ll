; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Controller timeout\0A\00", align 1
@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@MMC_ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Spurious timeout - no active command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sdhci_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sdhci_slot*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sdhci_slot*
  store %struct.sdhci_slot* %5, %struct.sdhci_slot** %3, align 8
  %6 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %7 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %12 = call i32 @slot_printf(%struct.sdhci_slot* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %14 = call i32 @sdhci_dumpregs(%struct.sdhci_slot* %13)
  %15 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %16 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %17 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @sdhci_reset(%struct.sdhci_slot* %15, i32 %18)
  %20 = load i32, i32* @MMC_ERR_TIMEOUT, align 4
  %21 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %22 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %26 = call i32 @sdhci_req_done(%struct.sdhci_slot* %25)
  br label %30

27:                                               ; preds = %1
  %28 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %29 = call i32 @slot_printf(%struct.sdhci_slot* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %10
  ret void
}

declare dso_local i32 @slot_printf(%struct.sdhci_slot*, i8*) #1

declare dso_local i32 @sdhci_dumpregs(%struct.sdhci_slot*) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @sdhci_req_done(%struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
