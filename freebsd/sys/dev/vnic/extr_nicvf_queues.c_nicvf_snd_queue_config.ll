; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_snd_queue_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_snd_queue_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }
%struct.queue_set = type { i32, %struct.snd_queue* }
%struct.snd_queue = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%union.nic_mbx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.sq_cfg = type { i32, i64, i32, i64, i64 }

@NIC_QSET_SQ_0_7_CFG = common dso_local global i32 0, align 4
@NICVF_SQ_RESET = common dso_local global i32 0, align 4
@NIC_MBOX_MSG_SQ_CFG = common dso_local global i32 0, align 4
@NIC_QSET_SQ_0_7_BASE = common dso_local global i32 0, align 4
@SND_QSIZE = common dso_local global i32 0, align 4
@NIC_QSET_SQ_0_7_THRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, %struct.queue_set*, i32, i32)* @nicvf_snd_queue_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_snd_queue_config(%struct.nicvf* %0, %struct.queue_set* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.queue_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.nic_mbx, align 4
  %10 = alloca %struct.snd_queue*, align 8
  %11 = alloca %struct.sq_cfg, align 8
  store %struct.nicvf* %0, %struct.nicvf** %5, align 8
  store %struct.queue_set* %1, %struct.queue_set** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = bitcast %union.nic_mbx* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 20, i1 false)
  %13 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %14 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %13, i32 0, i32 1
  %15 = load %struct.snd_queue*, %struct.snd_queue** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %15, i64 %17
  store %struct.snd_queue* %18, %struct.snd_queue** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.snd_queue*, %struct.snd_queue** %10, align 8
  %21 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.snd_queue*, %struct.snd_queue** %10, align 8
  %23 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %4
  %27 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %28 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @nicvf_reclaim_snd_queue(%struct.nicvf* %27, %struct.queue_set* %28, i32 %29)
  br label %101

31:                                               ; preds = %4
  %32 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %33 = load i32, i32* @NIC_QSET_SQ_0_7_CFG, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @NICVF_SQ_RESET, align 4
  %36 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %38 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.snd_queue*, %struct.snd_queue** %10, align 8
  %41 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.snd_queue*, %struct.snd_queue** %10, align 8
  %44 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @NIC_MBOX_MSG_SQ_CFG, align 4
  %46 = bitcast %union.nic_mbx* %9 to %struct.TYPE_3__*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %49 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = bitcast %union.nic_mbx* %9 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = bitcast %union.nic_mbx* %9 to %struct.TYPE_3__*
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %57 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = bitcast %union.nic_mbx* %9 to %struct.TYPE_3__*
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.snd_queue*, %struct.snd_queue** %10, align 8
  %62 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = shl i32 %63, 3
  %65 = load %struct.snd_queue*, %struct.snd_queue** %10, align 8
  %66 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %64, %67
  %69 = bitcast %union.nic_mbx* %9 to %struct.TYPE_3__*
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %72 = call i32 @nicvf_send_msg_to_pf(%struct.nicvf* %71, %union.nic_mbx* %9)
  %73 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %74 = load i32, i32* @NIC_QSET_SQ_0_7_BASE, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.snd_queue*, %struct.snd_queue** %10, align 8
  %77 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %73, i32 %74, i32 %75, i32 %80)
  %82 = getelementptr inbounds %struct.sq_cfg, %struct.sq_cfg* %11, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = getelementptr inbounds %struct.sq_cfg, %struct.sq_cfg* %11, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = getelementptr inbounds %struct.sq_cfg, %struct.sq_cfg* %11, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* @SND_QSIZE, align 4
  %86 = getelementptr inbounds %struct.sq_cfg, %struct.sq_cfg* %11, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds %struct.sq_cfg, %struct.sq_cfg* %11, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %89 = load i32, i32* @NIC_QSET_SQ_0_7_CFG, align 4
  %90 = load i32, i32* %7, align 4
  %91 = bitcast %struct.sq_cfg* %11 to i32*
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %88, i32 %89, i32 %90, i32 %92)
  %94 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %95 = load i32, i32* @NIC_QSET_SQ_0_7_THRESH, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.snd_queue*, %struct.snd_queue** %10, align 8
  %98 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %94, i32 %95, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %31, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nicvf_reclaim_snd_queue(%struct.nicvf*, %struct.queue_set*, i32) #2

declare dso_local i32 @nicvf_queue_reg_write(%struct.nicvf*, i32, i32, i32) #2

declare dso_local i32 @nicvf_send_msg_to_pf(%struct.nicvf*, %union.nic_mbx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
