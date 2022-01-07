; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_txpkt_chim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_txpkt_chim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_tx_ring = type { i32 }
%struct.hn_txdesc = type { i64, i64, i32 }
%struct.hn_nvs_rndis = type { i64, i64, i32, i32 }

@HN_NVS_CHIM_IDX_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"invalid rndis chim txd\00", align 1
@HN_NVS_TYPE_RNDIS = common dso_local global i32 0, align 4
@HN_NVS_RNDIS_MTYPE_DATA = common dso_local global i32 0, align 4
@VMBUS_CHANPKT_FLAG_RC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_tx_ring*, %struct.hn_txdesc*)* @hn_txpkt_chim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_txpkt_chim(%struct.hn_tx_ring* %0, %struct.hn_txdesc* %1) #0 {
  %3 = alloca %struct.hn_tx_ring*, align 8
  %4 = alloca %struct.hn_txdesc*, align 8
  %5 = alloca %struct.hn_nvs_rndis, align 8
  store %struct.hn_tx_ring* %0, %struct.hn_tx_ring** %3, align 8
  store %struct.hn_txdesc* %1, %struct.hn_txdesc** %4, align 8
  %6 = load %struct.hn_txdesc*, %struct.hn_txdesc** %4, align 8
  %7 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HN_NVS_CHIM_IDX_INVALID, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.hn_txdesc*, %struct.hn_txdesc** %4, align 8
  %13 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i1 [ false, %2 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @HN_NVS_TYPE_RNDIS, align 4
  %21 = getelementptr inbounds %struct.hn_nvs_rndis, %struct.hn_nvs_rndis* %5, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @HN_NVS_RNDIS_MTYPE_DATA, align 4
  %23 = getelementptr inbounds %struct.hn_nvs_rndis, %struct.hn_nvs_rndis* %5, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = load %struct.hn_txdesc*, %struct.hn_txdesc** %4, align 8
  %25 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.hn_nvs_rndis, %struct.hn_nvs_rndis* %5, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load %struct.hn_txdesc*, %struct.hn_txdesc** %4, align 8
  %29 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.hn_nvs_rndis, %struct.hn_nvs_rndis* %5, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %3, align 8
  %33 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VMBUS_CHANPKT_FLAG_RC, align 4
  %36 = load %struct.hn_txdesc*, %struct.hn_txdesc** %4, align 8
  %37 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %36, i32 0, i32 2
  %38 = call i32 @hn_nvs_send(i32 %34, i32 %35, %struct.hn_nvs_rndis* %5, i32 24, i32* %37)
  ret i32 %38
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @hn_nvs_send(i32, i32, %struct.hn_nvs_rndis*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
