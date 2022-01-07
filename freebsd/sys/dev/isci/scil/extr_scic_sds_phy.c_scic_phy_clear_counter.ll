; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_phy_clear_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_phy.c_scic_phy_clear_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"scic_phy_clear_counter(0x%x, 0x%x) enter\0A\00", align 1
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
define dso_local i32 @scic_phy_clear_counter(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i64, i64* %3, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = call i32 @sci_base_object_get_logger(%struct.TYPE_4__* %10)
  %12 = load i32, i32* @SCIC_LOG_OBJECT_PHY, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @SCIC_LOG_TRACE(i32 %14)
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %97 [
    i32 138, label %17
    i32 129, label %21
    i32 135, label %25
    i32 128, label %29
    i32 143, label %33
    i32 141, label %37
    i32 136, label %41
    i32 140, label %45
    i32 131, label %51
    i32 144, label %57
    i32 139, label %63
    i32 130, label %69
    i32 142, label %75
    i32 133, label %81
    i32 134, label %85
    i32 137, label %89
    i32 132, label %93
  ]

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = load i32, i32* @received_frame_count, align 4
  %20 = call i32 @scu_link_layer_register_write(%struct.TYPE_4__* %18, i32 %19, i32 0)
  br label %99

21:                                               ; preds = %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = load i32, i32* @transmit_frame_count, align 4
  %24 = call i32 @scu_link_layer_register_write(%struct.TYPE_4__* %22, i32 %23, i32 0)
  br label %99

25:                                               ; preds = %2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = load i32, i32* @received_dword_count, align 4
  %28 = call i32 @scu_link_layer_register_write(%struct.TYPE_4__* %26, i32 %27, i32 0)
  br label %99

29:                                               ; preds = %2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = load i32, i32* @transmit_dword_count, align 4
  %32 = call i32 @scu_link_layer_register_write(%struct.TYPE_4__* %30, i32 %31, i32 0)
  br label %99

33:                                               ; preds = %2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = load i32, i32* @loss_of_sync_error_count, align 4
  %36 = call i32 @scu_link_layer_register_write(%struct.TYPE_4__* %34, i32 %35, i32 0)
  br label %99

37:                                               ; preds = %2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = load i32, i32* @running_disparity_error_count, align 4
  %40 = call i32 @scu_link_layer_register_write(%struct.TYPE_4__* %38, i32 %39, i32 0)
  br label %99

41:                                               ; preds = %2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = load i32, i32* @received_frame_crc_error_count, align 4
  %44 = call i32 @scu_link_layer_register_write(%struct.TYPE_4__* %42, i32 %43, i32 0)
  br label %99

45:                                               ; preds = %2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @SCU_ERR_CNT_RX_DONE_ACK_NAK_TIMEOUT_INDEX, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 0, i32* %50, align 4
  br label %99

51:                                               ; preds = %2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @SCU_ERR_CNT_TX_DONE_ACK_NAK_TIMEOUT_INDEX, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 0, i32* %56, align 4
  br label %99

57:                                               ; preds = %2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @SCU_ERR_CNT_INACTIVITY_TIMER_EXPIRED_INDEX, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 0, i32* %62, align 4
  br label %99

63:                                               ; preds = %2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @SCU_ERR_CNT_RX_DONE_CREDIT_TIMEOUT_INDEX, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 0, i32* %68, align 4
  br label %99

69:                                               ; preds = %2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @SCU_ERR_CNT_TX_DONE_CREDIT_TIMEOUT_INDEX, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 0, i32* %74, align 4
  br label %99

75:                                               ; preds = %2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @SCU_ERR_CNT_RX_CREDIT_BLOCKED_RECEIVED_INDEX, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 0, i32* %80, align 4
  br label %99

81:                                               ; preds = %2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = load i32, i32* @received_short_frame_count, align 4
  %84 = call i32 @scu_link_layer_register_write(%struct.TYPE_4__* %82, i32 %83, i32 0)
  br label %99

85:                                               ; preds = %2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = load i32, i32* @received_frame_without_credit_count, align 4
  %88 = call i32 @scu_link_layer_register_write(%struct.TYPE_4__* %86, i32 %87, i32 0)
  br label %99

89:                                               ; preds = %2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = load i32, i32* @received_frame_after_done_count, align 4
  %92 = call i32 @scu_link_layer_register_write(%struct.TYPE_4__* %90, i32 %91, i32 0)
  br label %99

93:                                               ; preds = %2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = load i32, i32* @phy_reset_problem_count, align 4
  %96 = call i32 @scu_link_layer_register_write(%struct.TYPE_4__* %94, i32 %95, i32 0)
  br label %99

97:                                               ; preds = %2
  %98 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %97, %93, %89, %85, %81, %75, %69, %63, %57, %51, %45, %41, %37, %33, %29, %25, %21, %17
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_4__*) #1

declare dso_local i32 @scu_link_layer_register_write(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
