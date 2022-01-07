; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i32, i64, %struct.mmc_request* }
%struct.mmc_request = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CMD_STARTED = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_AUTO_STOP = common dso_local global i32 0, align 4
@STOP_STARTED = common dso_local global i32 0, align 4
@sdhci_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"result: %d\0A\00", align 1
@SDHCI_QUIRK_RESET_AFTER_REQUEST = common dso_local global i32 0, align 4
@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_slot*)* @sdhci_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_start(%struct.sdhci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_slot*, align 8
  %3 = alloca %struct.mmc_request*, align 8
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %2, align 8
  %4 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %5 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %4, i32 0, i32 3
  %6 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  store %struct.mmc_request* %6, %struct.mmc_request** %3, align 8
  %7 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %8 = icmp eq %struct.mmc_request* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %112

10:                                               ; preds = %1
  %11 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %12 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CMD_STARTED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @CMD_STARTED, align 4
  %19 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %20 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %24 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @sdhci_start_command(%struct.sdhci_slot* %23, %struct.TYPE_2__* %26)
  br label %112

28:                                               ; preds = %10
  %29 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %30 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SDHCI_QUIRK_BROKEN_AUTO_STOP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %37 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @STOP_STARTED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %35
  %43 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %44 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load i32, i32* @STOP_STARTED, align 4
  %49 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %50 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %54 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %55 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.TYPE_2__*
  %58 = call i32 @sdhci_start_command(%struct.sdhci_slot* %53, %struct.TYPE_2__* %57)
  br label %112

59:                                               ; preds = %42, %35, %28
  %60 = load i32, i32* @sdhci_debug, align 4
  %61 = icmp sgt i32 %60, 1
  %62 = zext i1 %61 to i32
  %63 = call i64 @__predict_false(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %67 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %68 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @slot_printf(%struct.sdhci_slot* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %65, %59
  %74 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %75 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %109, label %80

80:                                               ; preds = %73
  %81 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %82 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %85 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %80
  %89 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %90 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SDHCI_QUIRK_BROKEN_AUTO_STOP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %88, %80
  %96 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %97 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SDHCI_QUIRK_RESET_AFTER_REQUEST, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %95, %88
  %103 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %104 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %105 = call i32 @sdhci_reset(%struct.sdhci_slot* %103, i32 %104)
  %106 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %107 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %108 = call i32 @sdhci_reset(%struct.sdhci_slot* %106, i32 %107)
  br label %109

109:                                              ; preds = %102, %95, %73
  %110 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %111 = call i32 @sdhci_req_done(%struct.sdhci_slot* %110)
  br label %112

112:                                              ; preds = %109, %47, %17, %9
  ret void
}

declare dso_local i32 @sdhci_start_command(%struct.sdhci_slot*, %struct.TYPE_2__*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @slot_printf(%struct.sdhci_slot*, i8*, i32) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @sdhci_req_done(%struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
