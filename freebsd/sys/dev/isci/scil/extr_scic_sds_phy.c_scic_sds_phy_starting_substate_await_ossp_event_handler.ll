; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_sds_phy_starting_substate_await_ossp_event_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_sds_phy_starting_substate_await_ossp_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@SCIC_LOG_OBJECT_PHY = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_RECEIVED_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"PHY starting substate machine received unexpected event_code %x\0A\00", align 1
@SCI_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @scic_sds_phy_starting_substate_await_ossp_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scic_sds_phy_starting_substate_await_ossp_event_handler(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @scu_get_event_code(i32 %7)
  switch i32 %8, label %21 [
    i32 129, label %9
    i32 128, label %15
  ]

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = call i32 @scic_sds_phy_start_sas_link_training(%struct.TYPE_6__* %10)
  %12 = load i8*, i8** @TRUE, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = call i32 @scic_sds_phy_start_sata_link_training(%struct.TYPE_6__* %16)
  %18 = load i8*, i8** @TRUE, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = call i32 @sci_base_object_get_logger(%struct.TYPE_6__* %22)
  %24 = load i32, i32* @SCIC_LOG_OBJECT_PHY, align 4
  %25 = load i32, i32* @SCIC_LOG_OBJECT_RECEIVED_EVENTS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @SCIC_LOG_WARNING(i32 %27)
  %29 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %21, %15, %9
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @scu_get_event_code(i32) #1

declare dso_local i32 @scic_sds_phy_start_sas_link_training(%struct.TYPE_6__*) #1

declare dso_local i32 @scic_sds_phy_start_sata_link_training(%struct.TYPE_6__*) #1

declare dso_local i32 @SCIC_LOG_WARNING(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
