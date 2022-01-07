; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_add_queues_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_add_queues_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32, i32, %struct.ixl_tx_queue*, %struct.ixl_rx_queue*, %struct.sysctl_oid* }
%struct.ixl_tx_queue = type { i32, %struct.tx_ring }
%struct.tx_ring = type { i32, i32, i32, i32 }
%struct.ixl_rx_queue = type { i32, %struct.rx_ring }
%struct.rx_ring = type { i32, i32, i32, i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@QUEUE_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rxq%02d\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"RX Queue #\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"irqs\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"irqs on this queue (both Tx and Rx)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"packets\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Queue Packets Received\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Queue Bytes Received\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"desc_err\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Queue Rx Descriptor Errors\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"itr\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Queue Rx ITR Interval\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"txq%02d\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"TX Queue #\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"tso\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"TSO\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"mss_too_small\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"TSO sends with an MSS less than 64\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Queue Packets Transmitted\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Queue Bytes Transmitted\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Queue Tx ITR Interval\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_add_queues_sysctls(i32 %0, %struct.ixl_vsi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca %struct.sysctl_oid_list*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca %struct.ixl_rx_queue*, align 8
  %11 = alloca %struct.ixl_tx_queue*, align 8
  %12 = alloca %struct.tx_ring*, align 8
  %13 = alloca %struct.rx_ring*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ixl_vsi* %1, %struct.ixl_vsi** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %16)
  store %struct.sysctl_ctx_list* %17, %struct.sysctl_ctx_list** %5, align 8
  %18 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %19 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %18, i32 0, i32 4
  %20 = load %struct.sysctl_oid*, %struct.sysctl_oid** %19, align 8
  %21 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %20)
  store %struct.sysctl_oid_list* %21, %struct.sysctl_oid_list** %6, align 8
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %86, %2
  %23 = load i32, i32* %14, align 4
  %24 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %25 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %89

28:                                               ; preds = %22
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %30 = call i32 @bzero(i8* %29, i32 32)
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %32 = load i32, i32* @QUEUE_NAME_LEN, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %36 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %37 = load i32, i32* @OID_AUTO, align 4
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %39 = load i32, i32* @CTLFLAG_RD, align 4
  %40 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %35, %struct.sysctl_oid_list* %36, i32 %37, i8* %38, i32 %39, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %40, %struct.sysctl_oid** %8, align 8
  %41 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %42 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %41)
  store %struct.sysctl_oid_list* %42, %struct.sysctl_oid_list** %7, align 8
  %43 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %44 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %43, i32 0, i32 3
  %45 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %45, i64 %47
  store %struct.ixl_rx_queue* %48, %struct.ixl_rx_queue** %10, align 8
  %49 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %10, align 8
  %50 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %49, i32 0, i32 1
  store %struct.rx_ring* %50, %struct.rx_ring** %13, align 8
  %51 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %52 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %53 = load i32, i32* @OID_AUTO, align 4
  %54 = load i32, i32* @CTLFLAG_RD, align 4
  %55 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %10, align 8
  %56 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %55, i32 0, i32 0
  %57 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %51, %struct.sysctl_oid_list* %52, i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %59 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %60 = load i32, i32* @OID_AUTO, align 4
  %61 = load i32, i32* @CTLFLAG_RD, align 4
  %62 = load %struct.rx_ring*, %struct.rx_ring** %13, align 8
  %63 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %62, i32 0, i32 3
  %64 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %58, %struct.sysctl_oid_list* %59, i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32* %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %65 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %66 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %67 = load i32, i32* @OID_AUTO, align 4
  %68 = load i32, i32* @CTLFLAG_RD, align 4
  %69 = load %struct.rx_ring*, %struct.rx_ring** %13, align 8
  %70 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %69, i32 0, i32 2
  %71 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %65, %struct.sysctl_oid_list* %66, i32 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %68, i32* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %72 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %73 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %74 = load i32, i32* @OID_AUTO, align 4
  %75 = load i32, i32* @CTLFLAG_RD, align 4
  %76 = load %struct.rx_ring*, %struct.rx_ring** %13, align 8
  %77 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %76, i32 0, i32 1
  %78 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %72, %struct.sysctl_oid_list* %73, i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %75, i32* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %79 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %80 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %81 = load i32, i32* @OID_AUTO, align 4
  %82 = load i32, i32* @CTLFLAG_RD, align 4
  %83 = load %struct.rx_ring*, %struct.rx_ring** %13, align 8
  %84 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %83, i32 0, i32 0
  %85 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %79, %struct.sysctl_oid_list* %80, i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %82, i32* %84, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %86

86:                                               ; preds = %28
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %22

89:                                               ; preds = %22
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %154, %89
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %93 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %157

96:                                               ; preds = %90
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %98 = call i32 @bzero(i8* %97, i32 32)
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %100 = load i32, i32* @QUEUE_NAME_LEN, align 4
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @snprintf(i8* %99, i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %101)
  %103 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %104 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %105 = load i32, i32* @OID_AUTO, align 4
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %107 = load i32, i32* @CTLFLAG_RD, align 4
  %108 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %103, %struct.sysctl_oid_list* %104, i32 %105, i8* %106, i32 %107, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  store %struct.sysctl_oid* %108, %struct.sysctl_oid** %8, align 8
  %109 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %110 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %109)
  store %struct.sysctl_oid_list* %110, %struct.sysctl_oid_list** %7, align 8
  %111 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %112 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %111, i32 0, i32 2
  %113 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %113, i64 %115
  store %struct.ixl_tx_queue* %116, %struct.ixl_tx_queue** %11, align 8
  %117 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %11, align 8
  %118 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %117, i32 0, i32 1
  store %struct.tx_ring* %118, %struct.tx_ring** %12, align 8
  %119 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %120 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %121 = load i32, i32* @OID_AUTO, align 4
  %122 = load i32, i32* @CTLFLAG_RD, align 4
  %123 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %11, align 8
  %124 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %123, i32 0, i32 0
  %125 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %119, %struct.sysctl_oid_list* %120, i32 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %122, i32* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %126 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %127 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %128 = load i32, i32* @OID_AUTO, align 4
  %129 = load i32, i32* @CTLFLAG_RD, align 4
  %130 = load %struct.tx_ring*, %struct.tx_ring** %12, align 8
  %131 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %130, i32 0, i32 3
  %132 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %126, %struct.sysctl_oid_list* %127, i32 %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %129, i32* %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0))
  %133 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %134 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %135 = load i32, i32* @OID_AUTO, align 4
  %136 = load i32, i32* @CTLFLAG_RD, align 4
  %137 = load %struct.tx_ring*, %struct.tx_ring** %12, align 8
  %138 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %137, i32 0, i32 2
  %139 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %133, %struct.sysctl_oid_list* %134, i32 %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %136, i32* %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %140 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %141 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %142 = load i32, i32* @OID_AUTO, align 4
  %143 = load i32, i32* @CTLFLAG_RD, align 4
  %144 = load %struct.tx_ring*, %struct.tx_ring** %12, align 8
  %145 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %144, i32 0, i32 1
  %146 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %140, %struct.sysctl_oid_list* %141, i32 %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %143, i32* %145, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  %147 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %148 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %149 = load i32, i32* @OID_AUTO, align 4
  %150 = load i32, i32* @CTLFLAG_RD, align 4
  %151 = load %struct.tx_ring*, %struct.tx_ring** %12, align 8
  %152 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %151, i32 0, i32 0
  %153 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %147, %struct.sysctl_oid_list* %148, i32 %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %150, i32* %152, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  br label %154

154:                                              ; preds = %96
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %15, align 4
  br label %90

157:                                              ; preds = %90
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
