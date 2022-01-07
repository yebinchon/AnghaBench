; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i64, i64, i32, i32, i32, i32, i32, %struct.ipoib_rx_buf*, i32, i32, %struct.ipoib_tx_buf* }
%struct.ipoib_rx_buf = type { i32* }
%struct.ipoib_tx_buf = type { i32* }
%struct.ib_qp_attr = type { i32 }

@IPOIB_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"timing out; %d sends %d receives not completed\0A\00", align 1
@ipoib_sendq_size = common dso_local global i32 0, align 4
@ipoib_recvq_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"All sends and receives done.\0A\00", align 1
@IB_QPS_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to modify QP to RESET state\0A\00", align 1
@IPOIB_STOP_REAPER = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_ib_dev_stop(%struct.ipoib_dev_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp_attr, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ipoib_tx_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipoib_rx_buf*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @IPOIB_FLAG_INITIALIZED, align 4
  %11 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %11, i32 0, i32 4
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %15 = call i32 @ipoib_cm_dev_stop(%struct.ipoib_dev_priv* %14)
  %16 = load i32, i32* @IB_QPS_ERR, align 4
  %17 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IB_QP_STATE, align 4
  %22 = call i64 @ib_modify_qp(i32 %20, %struct.ib_qp_attr* %5, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %26 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %27 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IB_QPS_ERR, align 4
  %30 = call i32 @check_qp_movement_and_print(%struct.ipoib_dev_priv* %25, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %2
  %32 = load i64, i64* @jiffies, align 8
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %144, %31
  %34 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %35 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %43 = call i64 @recvs_pending(%struct.ipoib_dev_priv* %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %41, %33
  %46 = phi i1 [ true, %33 ], [ %44, %41 ]
  br i1 %46, label %47, label %148

47:                                               ; preds = %45
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* @HZ, align 4
  %51 = mul nsw i32 5, %50
  %52 = sext i32 %51 to i64
  %53 = add i64 %49, %52
  %54 = call i64 @time_after(i64 %48, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %144

56:                                               ; preds = %47
  %57 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %58 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %59 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %62 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %66 = call i64 @recvs_pending(%struct.ipoib_dev_priv* %65)
  %67 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %64, i64 %66)
  br label %68

68:                                               ; preds = %79, %56
  %69 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %70 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %74 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = sub nsw i32 %72, %76
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %108

79:                                               ; preds = %68
  %80 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %81 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %80, i32 0, i32 10
  %82 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %81, align 8
  %83 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %84 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @ipoib_sendq_size, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = and i64 %85, %88
  %90 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %82, i64 %89
  store %struct.ipoib_tx_buf* %90, %struct.ipoib_tx_buf** %7, align 8
  %91 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %92 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %7, align 8
  %95 = call i32 @ipoib_dma_unmap_tx(i32 %93, %struct.ipoib_tx_buf* %94)
  %96 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %7, align 8
  %97 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @m_freem(i32* %98)
  %100 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %101 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %101, align 8
  %104 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %105 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %105, align 8
  br label %68

108:                                              ; preds = %68
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %140, %108
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @ipoib_recvq_size, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %143

113:                                              ; preds = %109
  %114 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %115 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %114, i32 0, i32 7
  %116 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %116, i64 %118
  store %struct.ipoib_rx_buf* %119, %struct.ipoib_rx_buf** %9, align 8
  %120 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %9, align 8
  %121 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %113
  br label %140

125:                                              ; preds = %113
  %126 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %127 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %128 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %127, i32 0, i32 7
  %129 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %129, i64 %131
  %133 = call i32 @ipoib_dma_unmap_rx(%struct.ipoib_dev_priv* %126, %struct.ipoib_rx_buf* %132)
  %134 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %9, align 8
  %135 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @m_freem(i32* %136)
  %138 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %9, align 8
  %139 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %138, i32 0, i32 0
  store i32* null, i32** %139, align 8
  br label %140

140:                                              ; preds = %125, %124
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %109

143:                                              ; preds = %109
  br label %151

144:                                              ; preds = %47
  %145 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %146 = call i32 @ipoib_drain_cq(%struct.ipoib_dev_priv* %145)
  %147 = call i32 @msleep(i32 1)
  br label %33

148:                                              ; preds = %45
  %149 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %150 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %143
  %152 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %153 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %152, i32 0, i32 6
  %154 = call i32 @del_timer_sync(i32* %153)
  %155 = load i32, i32* @IB_QPS_RESET, align 4
  %156 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 0
  store i32 %155, i32* %156, align 4
  %157 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %158 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IB_QP_STATE, align 4
  %161 = call i64 @ib_modify_qp(i32 %159, %struct.ib_qp_attr* %5, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %151
  %164 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %165 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %164, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %151
  %167 = load i32, i32* @IPOIB_STOP_REAPER, align 4
  %168 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %169 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %168, i32 0, i32 4
  %170 = call i32 @set_bit(i32 %167, i32* %169)
  %171 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %172 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %171, i32 0, i32 3
  %173 = call i32 @cancel_delayed_work(i32* %172)
  %174 = load i32, i32* %4, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %166
  %177 = load i32, i32* @ipoib_workqueue, align 4
  %178 = call i32 @flush_workqueue(i32 %177)
  br label %179

179:                                              ; preds = %176, %166
  %180 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %181 = call i32 @ipoib_ah_dev_cleanup(%struct.ipoib_dev_priv* %180)
  %182 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %183 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %186 = call i32 @ib_req_notify_cq(i32 %184, i32 %185)
  ret i32 0
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ipoib_cm_dev_stop(%struct.ipoib_dev_priv*) #1

declare dso_local i64 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @check_qp_movement_and_print(%struct.ipoib_dev_priv*, i32, i32) #1

declare dso_local i64 @recvs_pending(%struct.ipoib_dev_priv*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, ...) #1

declare dso_local i32 @ipoib_dma_unmap_tx(i32, %struct.ipoib_tx_buf*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ipoib_dma_unmap_rx(%struct.ipoib_dev_priv*, %struct.ipoib_rx_buf*) #1

declare dso_local i32 @ipoib_drain_cq(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @ipoib_ah_dev_cleanup(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @ib_req_notify_cq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
