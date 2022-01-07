; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_rcv_queue_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_rcv_queue_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.queue_set = type { i32, i32, %struct.rcv_queue* }
%struct.rcv_queue = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.lro_ctrl }
%struct.lro_ctrl = type { %struct.ifnet* }
%union.nic_mbx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.rq_cfg = type { i32, i64 }

@NIC_QSET_RQ_0_7_CFG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@IFCAP_LRO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to initialize LRO for RXQ%d\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@NIC_MBOX_MSG_RQ_CFG = common dso_local global i32 0, align 4
@NIC_MBOX_MSG_RQ_BP_CFG = common dso_local global i32 0, align 4
@NIC_MBOX_MSG_RQ_DROP_CFG = common dso_local global i32 0, align 4
@RQ_CQ_DROP = common dso_local global i32 0, align 4
@NIC_QSET_RQ_GEN_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, %struct.queue_set*, i32, i32)* @nicvf_rcv_queue_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_rcv_queue_config(%struct.nicvf* %0, %struct.queue_set* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.queue_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.nic_mbx, align 4
  %10 = alloca %struct.rcv_queue*, align 8
  %11 = alloca %struct.rq_cfg, align 8
  %12 = alloca %struct.ifnet*, align 8
  %13 = alloca %struct.lro_ctrl*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %5, align 8
  store %struct.queue_set* %1, %struct.queue_set** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = bitcast %union.nic_mbx* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %16 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %15, i32 0, i32 0
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %12, align 8
  %18 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %19 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %18, i32 0, i32 2
  %20 = load %struct.rcv_queue*, %struct.rcv_queue** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %20, i64 %22
  store %struct.rcv_queue* %23, %struct.rcv_queue** %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %26 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %28 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %27, i32 0, i32 9
  store %struct.lro_ctrl* %28, %struct.lro_ctrl** %13, align 8
  %29 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %30 = load i32, i32* @NIC_QSET_RQ_0_7_CFG, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %29, i32 %30, i32 %31, i32 0)
  %33 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %34 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %4
  %38 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %39 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @nicvf_reclaim_rcv_queue(%struct.nicvf* %38, %struct.queue_set* %39, i32 %40)
  %42 = load %struct.lro_ctrl*, %struct.lro_ctrl** %13, align 8
  %43 = call i32 @tcp_lro_free(%struct.lro_ctrl* %42)
  %44 = load i8*, i8** @FALSE, align 8
  %45 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %46 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %45, i32 0, i32 8
  store i8* %44, i8** %46, align 8
  br label %194

47:                                               ; preds = %4
  %48 = load i8*, i8** @FALSE, align 8
  %49 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %50 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %49, i32 0, i32 8
  store i8* %48, i8** %50, align 8
  %51 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  %52 = call i32 @if_getcapenable(%struct.ifnet* %51)
  %53 = load i32, i32* @IFCAP_LRO, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %47
  %57 = load %struct.lro_ctrl*, %struct.lro_ctrl** %13, align 8
  %58 = call i64 @tcp_lro_init(%struct.lro_ctrl* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %62 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %75

66:                                               ; preds = %56
  %67 = load i8*, i8** @TRUE, align 8
  %68 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %69 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %68, i32 0, i32 8
  store i8* %67, i8** %69, align 8
  %70 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %71 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %70, i32 0, i32 0
  %72 = load %struct.ifnet*, %struct.ifnet** %71, align 8
  %73 = load %struct.lro_ctrl*, %struct.lro_ctrl** %13, align 8
  %74 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %73, i32 0, i32 0
  store %struct.ifnet* %72, %struct.ifnet** %74, align 8
  br label %75

75:                                               ; preds = %66, %60
  br label %76

76:                                               ; preds = %75, %47
  %77 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %78 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %81 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %84 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %86 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %89 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %91 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  %94 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %95 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %97 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %100 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  %101 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %102 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 1
  %105 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %106 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 8
  %107 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %108 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %107, i32 0, i32 7
  store i32 1, i32* %108, align 4
  %109 = load i32, i32* @NIC_MBOX_MSG_RQ_CFG, align 4
  %110 = bitcast %union.nic_mbx* %9 to %struct.TYPE_2__*
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %113 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = bitcast %union.nic_mbx* %9 to %struct.TYPE_2__*
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %7, align 4
  %118 = bitcast %union.nic_mbx* %9 to %struct.TYPE_2__*
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %121 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 26
  %124 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %125 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 19
  %128 = or i32 %123, %127
  %129 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %130 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = shl i32 %131, 16
  %133 = or i32 %128, %132
  %134 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %135 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 9
  %138 = or i32 %133, %137
  %139 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %140 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = shl i32 %141, 8
  %143 = or i32 %138, %142
  %144 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %145 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 1
  %148 = or i32 %143, %147
  %149 = load %struct.rcv_queue*, %struct.rcv_queue** %10, align 8
  %150 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %148, %151
  %153 = bitcast %union.nic_mbx* %9 to %struct.TYPE_2__*
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  %155 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %156 = call i32 @nicvf_send_msg_to_pf(%struct.nicvf* %155, %union.nic_mbx* %9)
  %157 = load i32, i32* @NIC_MBOX_MSG_RQ_BP_CFG, align 4
  %158 = bitcast %union.nic_mbx* %9 to %struct.TYPE_2__*
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %161 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = shl i32 %162, 0
  %164 = sext i32 %163 to i64
  %165 = or i64 -4611686018427387904, %164
  %166 = trunc i64 %165 to i32
  %167 = bitcast %union.nic_mbx* %9 to %struct.TYPE_2__*
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 4
  %169 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %170 = call i32 @nicvf_send_msg_to_pf(%struct.nicvf* %169, %union.nic_mbx* %9)
  %171 = load i32, i32* @NIC_MBOX_MSG_RQ_DROP_CFG, align 4
  %172 = bitcast %union.nic_mbx* %9 to %struct.TYPE_2__*
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @RQ_CQ_DROP, align 4
  %175 = shl i32 %174, 8
  %176 = sext i32 %175 to i64
  %177 = or i64 4611686018427387904, %176
  %178 = trunc i64 %177 to i32
  %179 = bitcast %union.nic_mbx* %9 to %struct.TYPE_2__*
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 4
  %181 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %182 = call i32 @nicvf_send_msg_to_pf(%struct.nicvf* %181, %union.nic_mbx* %9)
  %183 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %184 = load i32, i32* @NIC_QSET_RQ_GEN_CFG, align 4
  %185 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %183, i32 %184, i32 0, i32 0)
  %186 = getelementptr inbounds %struct.rq_cfg, %struct.rq_cfg* %11, i32 0, i32 0
  store i32 1, i32* %186, align 8
  %187 = getelementptr inbounds %struct.rq_cfg, %struct.rq_cfg* %11, i32 0, i32 1
  store i64 0, i64* %187, align 8
  %188 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %189 = load i32, i32* @NIC_QSET_RQ_0_7_CFG, align 4
  %190 = load i32, i32* %7, align 4
  %191 = bitcast %struct.rq_cfg* %11 to i32*
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %188, i32 %189, i32 %190, i32 %192)
  br label %194

194:                                              ; preds = %76, %37
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nicvf_queue_reg_write(%struct.nicvf*, i32, i32, i32) #2

declare dso_local i32 @nicvf_reclaim_rcv_queue(%struct.nicvf*, %struct.queue_set*, i32) #2

declare dso_local i32 @tcp_lro_free(%struct.lro_ctrl*) #2

declare dso_local i32 @if_getcapenable(%struct.ifnet*) #2

declare dso_local i64 @tcp_lro_init(%struct.lro_ctrl*) #2

declare dso_local i32 @device_printf(i32, i8*, i32) #2

declare dso_local i32 @nicvf_send_msg_to_pf(%struct.nicvf*, %union.nic_mbx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
