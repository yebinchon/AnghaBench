; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_phy_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_phy_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"scic_phy_get_counter(0x%x, 0x%x) enter\0A\00", align 1
@received_frame_count = common dso_local global i32 0, align 4
@transmit_frame_count = common dso_local global i32 0, align 4
@received_dword_count = common dso_local global i32 0, align 4
@transmit_dword_count = common dso_local global i32 0, align 4
@loss_of_sync_error_count = common dso_local global i32 0, align 4
@running_disparity_error_count = common dso_local global i32 0, align 4
@received_frame_crc_error_count = common dso_local global i32 0, align 4
@SCU_ERR_CNT_RX_DONE_ACK_NAK_TIMEOUT_INDEX = common dso_local global i64 0, align 8
@SCU_ERR_CNT_TX_DONE_ACK_NAK_TIMEOUT_INDEX = common dso_local global i64 0, align 8
@SCU_ERR_CNT_INACTIVITY_TIMER_EXPIRED_INDEX = common dso_local global i64 0, align 8
@SCU_ERR_CNT_RX_DONE_CREDIT_TIMEOUT_INDEX = common dso_local global i64 0, align 8
@SCU_ERR_CNT_TX_DONE_CREDIT_TIMEOUT_INDEX = common dso_local global i64 0, align 8
@SCU_ERR_CNT_RX_CREDIT_BLOCKED_RECEIVED_INDEX = common dso_local global i64 0, align 8
@received_short_frame_count = common dso_local global i32 0, align 4
@received_frame_without_credit_count = common dso_local global i32 0, align 4
@received_frame_after_done_count = common dso_local global i32 0, align 4
@phy_reset_problem_count = common dso_local global i32 0, align 4
@SCI_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_phy_get_counter(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i64, i64* %4, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %13 = call i32 @sci_base_object_get_logger(%struct.TYPE_4__* %12)
  %14 = load i32, i32* @SCIC_LOG_OBJECT_PHY, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @SCIC_LOG_TRACE(i32 %16)
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %122 [
    i32 138, label %19
    i32 129, label %24
    i32 135, label %29
    i32 128, label %34
    i32 143, label %39
    i32 141, label %44
    i32 136, label %49
    i32 140, label %54
    i32 131, label %62
    i32 144, label %70
    i32 139, label %78
    i32 130, label %86
    i32 142, label %94
    i32 133, label %102
    i32 134, label %107
    i32 137, label %112
    i32 132, label %117
  ]

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = load i32, i32* @received_frame_count, align 4
  %22 = call i32 @scu_link_layer_register_read(%struct.TYPE_4__* %20, i32 %21)
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  br label %124

24:                                               ; preds = %3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = load i32, i32* @transmit_frame_count, align 4
  %27 = call i32 @scu_link_layer_register_read(%struct.TYPE_4__* %25, i32 %26)
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %124

29:                                               ; preds = %3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = load i32, i32* @received_dword_count, align 4
  %32 = call i32 @scu_link_layer_register_read(%struct.TYPE_4__* %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %124

34:                                               ; preds = %3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = load i32, i32* @transmit_dword_count, align 4
  %37 = call i32 @scu_link_layer_register_read(%struct.TYPE_4__* %35, i32 %36)
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %124

39:                                               ; preds = %3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = load i32, i32* @loss_of_sync_error_count, align 4
  %42 = call i32 @scu_link_layer_register_read(%struct.TYPE_4__* %40, i32 %41)
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  br label %124

44:                                               ; preds = %3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = load i32, i32* @running_disparity_error_count, align 4
  %47 = call i32 @scu_link_layer_register_read(%struct.TYPE_4__* %45, i32 %46)
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  br label %124

49:                                               ; preds = %3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = load i32, i32* @received_frame_crc_error_count, align 4
  %52 = call i32 @scu_link_layer_register_read(%struct.TYPE_4__* %50, i32 %51)
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  br label %124

54:                                               ; preds = %3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @SCU_ERR_CNT_RX_DONE_ACK_NAK_TIMEOUT_INDEX, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  br label %124

62:                                               ; preds = %3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @SCU_ERR_CNT_TX_DONE_ACK_NAK_TIMEOUT_INDEX, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  br label %124

70:                                               ; preds = %3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @SCU_ERR_CNT_INACTIVITY_TIMER_EXPIRED_INDEX, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  br label %124

78:                                               ; preds = %3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @SCU_ERR_CNT_RX_DONE_CREDIT_TIMEOUT_INDEX, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %6, align 8
  store i32 %84, i32* %85, align 4
  br label %124

86:                                               ; preds = %3
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @SCU_ERR_CNT_TX_DONE_CREDIT_TIMEOUT_INDEX, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %6, align 8
  store i32 %92, i32* %93, align 4
  br label %124

94:                                               ; preds = %3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @SCU_ERR_CNT_RX_CREDIT_BLOCKED_RECEIVED_INDEX, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %6, align 8
  store i32 %100, i32* %101, align 4
  br label %124

102:                                              ; preds = %3
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %104 = load i32, i32* @received_short_frame_count, align 4
  %105 = call i32 @scu_link_layer_register_read(%struct.TYPE_4__* %103, i32 %104)
  %106 = load i32*, i32** %6, align 8
  store i32 %105, i32* %106, align 4
  br label %124

107:                                              ; preds = %3
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %109 = load i32, i32* @received_frame_without_credit_count, align 4
  %110 = call i32 @scu_link_layer_register_read(%struct.TYPE_4__* %108, i32 %109)
  %111 = load i32*, i32** %6, align 8
  store i32 %110, i32* %111, align 4
  br label %124

112:                                              ; preds = %3
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %114 = load i32, i32* @received_frame_after_done_count, align 4
  %115 = call i32 @scu_link_layer_register_read(%struct.TYPE_4__* %113, i32 %114)
  %116 = load i32*, i32** %6, align 8
  store i32 %115, i32* %116, align 4
  br label %124

117:                                              ; preds = %3
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %119 = load i32, i32* @phy_reset_problem_count, align 4
  %120 = call i32 @scu_link_layer_register_read(%struct.TYPE_4__* %118, i32 %119)
  %121 = load i32*, i32** %6, align 8
  store i32 %120, i32* %121, align 4
  br label %124

122:                                              ; preds = %3
  %123 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %122, %117, %112, %107, %102, %94, %86, %78, %70, %62, %54, %49, %44, %39, %34, %29, %24, %19
  %125 = load i32, i32* %8, align 4
  ret i32 %125
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_4__*) #1

declare dso_local i32 @scu_link_layer_register_read(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
