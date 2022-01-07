; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_ll2_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_ll2_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ib_qp_init_attr = type { i32 }
%struct.qlnxr_qp = type { i32 }
%struct.ecore_ll2_acquire_data = type { i32*, %struct.ecore_ll2_cbs*, %struct.TYPE_6__ }
%struct.ecore_ll2_cbs = type { %struct.qlnxr_dev*, i8*, i32, i8*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i8*, i8*, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@qlnxr_ll2_complete_rx_packet = common dso_local global i32 0, align 4
@qlnxr_ll2_complete_tx_packet = common dso_local global i8* null, align 8
@qlnxr_ll2_release_rx_packet = common dso_local global i32 0, align 4
@ECORE_LL2_TYPE_ROCE = common dso_local global i32 0, align 4
@ECORE_LL2_TX_DEST_NW = common dso_local global i32 0, align 4
@ECORE_LL2_DROP_PACKET = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"ecore_ll2_acquire_connection failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"ll2 connection acquired successfully\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"ecore_ll2_establish_connection failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"ll2 connection established successfully\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"qlnx_rdma_ll2_set_mac_filter failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"exit rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_ll2_start(%struct.qlnxr_dev* %0, %struct.ib_qp_init_attr* %1, %struct.qlnxr_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlnxr_dev*, align 8
  %6 = alloca %struct.ib_qp_init_attr*, align 8
  %7 = alloca %struct.qlnxr_qp*, align 8
  %8 = alloca %struct.ecore_ll2_acquire_data, align 8
  %9 = alloca %struct.ecore_ll2_cbs, align 8
  %10 = alloca i32, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %5, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %6, align 8
  store %struct.qlnxr_qp* %2, %struct.qlnxr_qp** %7, align 8
  %11 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %12 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = call i32 (%struct.TYPE_7__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_7__* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @qlnxr_ll2_complete_rx_packet, align 4
  %16 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %9, i32 0, i32 4
  store i32 %15, i32* %16, align 8
  %17 = load i8*, i8** @qlnxr_ll2_complete_tx_packet, align 8
  %18 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %9, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* @qlnxr_ll2_release_rx_packet, align 4
  %20 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %9, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** @qlnxr_ll2_complete_tx_packet, align 8
  %22 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %9, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %24 = getelementptr inbounds %struct.ecore_ll2_cbs, %struct.ecore_ll2_cbs* %9, i32 0, i32 0
  store %struct.qlnxr_dev* %23, %struct.qlnxr_dev** %24, align 8
  %25 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %26 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %25, i32 0, i32 0
  store i32 255, i32* %26, align 8
  %27 = call i32 @memset(%struct.ecore_ll2_acquire_data* %8, i32 0, i32 80)
  %28 = load i32, i32* @ECORE_LL2_TYPE_ROCE, align 4
  %29 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %8, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 4
  %31 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %32 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %8, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %8, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 8192, i32* %41, align 8
  %42 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %8, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %8, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 8
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %8, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32 8192, i32* %47, align 8
  %48 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %8, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @ECORE_LL2_TX_DEST_NW, align 4
  %51 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %8, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @ECORE_LL2_DROP_PACKET, align 8
  %54 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %8, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @ECORE_LL2_DROP_PACKET, align 8
  %57 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %8, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %8, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  %61 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %62 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %8, i32 0, i32 0
  store i32* %62, i32** %63, align 8
  %64 = getelementptr inbounds %struct.ecore_ll2_acquire_data, %struct.ecore_ll2_acquire_data* %8, i32 0, i32 1
  store %struct.ecore_ll2_cbs* %9, %struct.ecore_ll2_cbs** %64, align 8
  %65 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %66 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ecore_ll2_acquire_connection(i32 %67, %struct.ecore_ll2_acquire_data* %8)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %3
  %72 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %73 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (%struct.TYPE_7__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_7__* %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %148

78:                                               ; preds = %3
  %79 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %80 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = call i32 (%struct.TYPE_7__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_7__* %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %84 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %87 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ecore_ll2_establish_connection(i32 %85, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %78
  %93 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %94 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 (%struct.TYPE_7__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_7__* %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  br label %134

98:                                               ; preds = %78
  %99 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %100 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = call i32 (%struct.TYPE_7__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_7__* %101, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %104 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %107 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @qlnx_rdma_ll2_set_mac_filter(i32 %105, i32* null, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %98
  %115 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %116 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 (%struct.TYPE_7__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_7__* %117, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  br label %126

120:                                              ; preds = %98
  %121 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %122 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 (%struct.TYPE_7__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_7__* %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  store i32 0, i32* %4, align 4
  br label %148

126:                                              ; preds = %114
  %127 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %128 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %131 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ecore_ll2_terminate_connection(i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %126, %92
  %135 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %136 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %139 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @ecore_ll2_release_connection(i32 %137, i32 %140)
  %142 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %143 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %142, i32 0, i32 1
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 (%struct.TYPE_7__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_7__* %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %134, %120, %71
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @memset(%struct.ecore_ll2_acquire_data*, i32, i32) #1

declare dso_local i32 @ecore_ll2_acquire_connection(i32, %struct.ecore_ll2_acquire_data*) #1

declare dso_local i32 @QL_DPRINT11(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @ecore_ll2_establish_connection(i32, i32) #1

declare dso_local i32 @qlnx_rdma_ll2_set_mac_filter(i32, i32*, i32) #1

declare dso_local i32 @ecore_ll2_terminate_connection(i32, i32) #1

declare dso_local i32 @ecore_ll2_release_connection(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
