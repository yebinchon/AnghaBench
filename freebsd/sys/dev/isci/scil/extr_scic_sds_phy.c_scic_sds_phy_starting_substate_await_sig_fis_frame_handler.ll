; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_sds_phy_starting_substate_await_sig_fis_frame_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_sds_phy_starting_substate_await_sig_fis_frame_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SATA_FIS_TYPE_REGD2H = common dso_local global i64 0, align 8
@ATA_STATUS_REG_BSY_BIT = common dso_local global i32 0, align 4
@SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PHY = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_UNSOLICITED_FRAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"PHY starting substate machine received unexpected frame id %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32)* @scic_sds_phy_starting_substate_await_sig_fis_frame_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_phy_starting_substate_await_sig_fis_frame_handler(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = call %struct.TYPE_15__* @scic_sds_phy_get_controller(%struct.TYPE_13__* %10)
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  %14 = bitcast i32** %7 to i8**
  %15 = call i64 @scic_sds_unsolicited_frame_control_get_header(i32* %12, i32 %13, i8** %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @SCI_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %3, align 8
  br label %69

21:                                               ; preds = %2
  %22 = load i32*, i32** %7, align 8
  %23 = bitcast i32* %22 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %8, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SATA_FIS_TYPE_REGD2H, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %21
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ATA_STATUS_REG_BSY_BIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = call %struct.TYPE_15__* @scic_sds_phy_get_controller(%struct.TYPE_13__* %37)
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = bitcast i32** %9 to i8**
  %42 = call i32 @scic_sds_unsolicited_frame_control_get_buffer(i32* %39, i32 %40, i8** %41)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @scic_sds_controller_copy_sata_response(i32* %46, i32* %47, i32* %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = call i32 @scic_sds_phy_get_starting_substate_machine(%struct.TYPE_13__* %50)
  %52 = load i32, i32* @SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL, align 4
  %53 = call i32 @sci_base_state_machine_change_state(i32 %51, i32 %52)
  %54 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %54, i64* %6, align 8
  br label %63

55:                                               ; preds = %29, %21
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = call i32 @sci_base_object_get_logger(%struct.TYPE_13__* %56)
  %58 = load i32, i32* @SCIC_LOG_OBJECT_PHY, align 4
  %59 = load i32, i32* @SCIC_LOG_OBJECT_UNSOLICITED_FRAMES, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @SCIC_LOG_WARNING(i32 %61)
  br label %63

63:                                               ; preds = %55, %36
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = call %struct.TYPE_15__* @scic_sds_phy_get_controller(%struct.TYPE_13__* %64)
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @scic_sds_controller_release_frame(%struct.TYPE_15__* %65, i32 %66)
  %68 = load i64, i64* %6, align 8
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %63, %19
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

declare dso_local i64 @scic_sds_unsolicited_frame_control_get_header(i32*, i32, i8**) #1

declare dso_local %struct.TYPE_15__* @scic_sds_phy_get_controller(%struct.TYPE_13__*) #1

declare dso_local i32 @scic_sds_unsolicited_frame_control_get_buffer(i32*, i32, i8**) #1

declare dso_local i32 @scic_sds_controller_copy_sata_response(i32*, i32*, i32*) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32, i32) #1

declare dso_local i32 @scic_sds_phy_get_starting_substate_machine(%struct.TYPE_13__*) #1

declare dso_local i32 @SCIC_LOG_WARNING(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_13__*) #1

declare dso_local i32 @scic_sds_controller_release_frame(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
