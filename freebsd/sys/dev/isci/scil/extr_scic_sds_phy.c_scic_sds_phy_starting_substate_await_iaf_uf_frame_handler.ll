; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_sds_phy_starting_substate_await_iaf_uf_frame_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_sds_phy_starting_substate_await_iaf_uf_frame_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL = common dso_local global i32 0, align 4
@SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SAS_POWER = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PHY = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_UNSOLICITED_FRAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"PHY starting substate machine received unexpected frame id %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, i32)* @scic_sds_phy_starting_substate_await_iaf_uf_frame_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scic_sds_phy_starting_substate_await_iaf_uf_frame_handler(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %10 = call %struct.TYPE_15__* @scic_sds_phy_get_controller(%struct.TYPE_22__* %9)
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i32, i32* %5, align 4
  %13 = bitcast i32** %7 to i8**
  %14 = call i64 @scic_sds_unsolicited_frame_control_get_header(i32* %11, i32 %12, i8** %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @SCI_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %3, align 8
  br label %103

20:                                               ; preds = %2
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SCIC_SWAP_DWORD(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %28, %struct.TYPE_21__** %8, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %89

33:                                               ; preds = %20
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SCIC_SWAP_DWORD(i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SCIC_SWAP_DWORD(i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SCIC_SWAP_DWORD(i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @SCIC_SWAP_DWORD(i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @SCIC_SWAP_DWORD(i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %69 = call i32 @memcpy(i32* %67, %struct.TYPE_21__* %68, i32 16)
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %33
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %79 = call i32 @scic_sds_phy_get_starting_substate_machine(%struct.TYPE_22__* %78)
  %80 = load i32, i32* @SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL, align 4
  %81 = call i32 @sci_base_state_machine_change_state(i32 %79, i32 %80)
  br label %87

82:                                               ; preds = %33
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %84 = call i32 @scic_sds_phy_get_starting_substate_machine(%struct.TYPE_22__* %83)
  %85 = load i32, i32* @SCIC_SDS_PHY_STARTING_SUBSTATE_AWAIT_SAS_POWER, align 4
  %86 = call i32 @sci_base_state_machine_change_state(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %88, i64* %6, align 8
  br label %97

89:                                               ; preds = %20
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %91 = call i32 @sci_base_object_get_logger(%struct.TYPE_22__* %90)
  %92 = load i32, i32* @SCIC_LOG_OBJECT_PHY, align 4
  %93 = load i32, i32* @SCIC_LOG_OBJECT_UNSOLICITED_FRAMES, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @SCIC_LOG_WARNING(i32 %95)
  br label %97

97:                                               ; preds = %89, %87
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %99 = call %struct.TYPE_15__* @scic_sds_phy_get_controller(%struct.TYPE_22__* %98)
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @scic_sds_controller_release_frame(%struct.TYPE_15__* %99, i32 %100)
  %102 = load i64, i64* %6, align 8
  store i64 %102, i64* %3, align 8
  br label %103

103:                                              ; preds = %97, %18
  %104 = load i64, i64* %3, align 8
  ret i64 %104
}

declare dso_local i64 @scic_sds_unsolicited_frame_control_get_header(i32*, i32, i8**) #1

declare dso_local %struct.TYPE_15__* @scic_sds_phy_get_controller(%struct.TYPE_22__*) #1

declare dso_local i32 @SCIC_SWAP_DWORD(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @sci_base_state_machine_change_state(i32, i32) #1

declare dso_local i32 @scic_sds_phy_get_starting_substate_machine(%struct.TYPE_22__*) #1

declare dso_local i32 @SCIC_LOG_WARNING(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_22__*) #1

declare dso_local i32 @scic_sds_controller_release_frame(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
