; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_qset_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_qset_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, i32, %struct.queue_set* }
%struct.queue_set = type { i32, i64 }
%union.nic_mbx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.qs_cfg = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Qset is still not allocated, don't init queues\0A\00", align 1
@NIC_MBOX_MSG_QS_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nicvf_qset_config(%struct.nicvf* %0, i64 %1) #0 {
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.nic_mbx, align 8
  %6 = alloca %struct.queue_set*, align 8
  %7 = alloca %struct.qs_cfg*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = bitcast %union.nic_mbx* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %10 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %9, i32 0, i32 2
  %11 = load %struct.queue_set*, %struct.queue_set** %10, align 8
  store %struct.queue_set* %11, %struct.queue_set** %6, align 8
  %12 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %13 = icmp eq %struct.queue_set* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %16 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %56

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %22 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %24 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %27 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @NIC_MBOX_MSG_QS_CFG, align 4
  %29 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %32 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = bitcast i64* %39 to %struct.qs_cfg*
  store %struct.qs_cfg* %40, %struct.qs_cfg** %7, align 8
  %41 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %42 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %19
  %46 = load %struct.qs_cfg*, %struct.qs_cfg** %7, align 8
  %47 = getelementptr inbounds %struct.qs_cfg, %struct.qs_cfg* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %49 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.qs_cfg*, %struct.qs_cfg** %7, align 8
  %52 = getelementptr inbounds %struct.qs_cfg, %struct.qs_cfg* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %19
  %54 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %55 = call i32 @nicvf_send_msg_to_pf(%struct.nicvf* %54, %union.nic_mbx* %5)
  br label %56

56:                                               ; preds = %53, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @nicvf_send_msg_to_pf(%struct.nicvf*, %union.nic_mbx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
