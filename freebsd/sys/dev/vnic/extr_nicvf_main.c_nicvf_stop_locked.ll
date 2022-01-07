; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.ifnet*, i32, %struct.queue_set* }
%struct.ifnet = type { i32 }
%struct.queue_set = type { i32 }
%union.nic_mbx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NIC_MBOX_MSG_SHUTDOWN = common dso_local global i32 0, align 4
@NICVF_INTR_RBDR = common dso_local global i32 0, align 4
@NICVF_INTR_QS_ERR = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NICVF_INTR_MBOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*)* @nicvf_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_stop_locked(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.queue_set*, align 8
  %6 = alloca %union.nic_mbx, align 4
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  %7 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %8 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %7, i32 0, i32 2
  %9 = load %struct.queue_set*, %struct.queue_set** %8, align 8
  store %struct.queue_set* %9, %struct.queue_set** %5, align 8
  %10 = bitcast %union.nic_mbx* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %12 = call i32 @NICVF_CORE_LOCK_ASSERT(%struct.nicvf* %11)
  %13 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %14 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %13, i32 0, i32 1
  %15 = call i32 @callout_drain(i32* %14)
  %16 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %17 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %16, i32 0, i32 0
  %18 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  store %struct.ifnet* %18, %struct.ifnet** %3, align 8
  %19 = load i32, i32* @NIC_MBOX_MSG_SHUTDOWN, align 4
  %20 = bitcast %union.nic_mbx* %6 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %23 = call i32 @nicvf_send_msg_to_pf(%struct.nicvf* %22, %union.nic_mbx* %6)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %39, %1
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.queue_set*, %struct.queue_set** %5, align 8
  %27 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %32 = load i32, i32* @NICVF_INTR_RBDR, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @nicvf_disable_intr(%struct.nicvf* %31, i32 %32, i32 %33)
  %35 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %36 = load i32, i32* @NICVF_INTR_RBDR, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @nicvf_clear_intr(%struct.nicvf* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %44 = load i32, i32* @NICVF_INTR_QS_ERR, align 4
  %45 = call i32 @nicvf_disable_intr(%struct.nicvf* %43, i32 %44, i32 0)
  %46 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %47 = load i32, i32* @NICVF_INTR_QS_ERR, align 4
  %48 = call i32 @nicvf_clear_intr(%struct.nicvf* %46, i32 %47, i32 0)
  %49 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %50 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %51 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %52 = call i32 @if_setdrvflagbits(%struct.ifnet* %49, i32 %50, i32 %51)
  %53 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @nicvf_config_data_transfer(%struct.nicvf* %53, i32 %54)
  %56 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32 @nicvf_qset_config(%struct.nicvf* %56, i32 %57)
  %59 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %60 = load i32, i32* @NICVF_INTR_MBOX, align 4
  %61 = call i32 @nicvf_disable_intr(%struct.nicvf* %59, i32 %60, i32 0)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @NICVF_CORE_LOCK_ASSERT(%struct.nicvf*) #2

declare dso_local i32 @callout_drain(i32*) #2

declare dso_local i32 @nicvf_send_msg_to_pf(%struct.nicvf*, %union.nic_mbx*) #2

declare dso_local i32 @nicvf_disable_intr(%struct.nicvf*, i32, i32) #2

declare dso_local i32 @nicvf_clear_intr(%struct.nicvf*, i32, i32) #2

declare dso_local i32 @if_setdrvflagbits(%struct.ifnet*, i32, i32) #2

declare dso_local i32 @nicvf_config_data_transfer(%struct.nicvf*, i32) #2

declare dso_local i32 @nicvf_qset_config(%struct.nicvf*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
