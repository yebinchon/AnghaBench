; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_ll2_post_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_cm.c_qlnxr_ll2_post_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ecore_roce_ll2_packet = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ecore_ll2_tx_pkt_info = type { i32, i32, i32, %struct.ecore_roce_ll2_packet*, i32, i32, i32, i64 }
%struct.ecore_ll2_stats = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@ROCE_V1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"roce_mode != ROCE_V1\0A\00", align 1
@ECORE_LL2_ROCE = common dso_local global i32 0, align 4
@ECORE_LL2_RROCE = common dso_local global i32 0, align 4
@ECORE_LL2_TX_DEST_NW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"ecore_ll2_prepare_tx_packet failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"ecore_ll2_set_fragment_of_tx_packet failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to obtain ll2 stats\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.ecore_roce_ll2_packet*)* @qlnxr_ll2_post_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_ll2_post_tx(%struct.qlnxr_dev* %0, %struct.ecore_roce_ll2_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca %struct.ecore_roce_ll2_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_ll2_tx_pkt_info, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_ll2_stats, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %4, align 8
  store %struct.ecore_roce_ll2_packet* %1, %struct.ecore_roce_ll2_packet** %5, align 8
  %11 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %12 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = call i32 @QL_DPRINT12(%struct.TYPE_7__* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @memset(%struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 48)
  %16 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_roce_ll2_packet, %struct.ecore_roce_ll2_packet* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ROCE_V1, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %23 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = call i32 @QL_DPRINT11(%struct.TYPE_7__* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %159

26:                                               ; preds = %2
  %27 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %5, align 8
  %28 = getelementptr inbounds %struct.ecore_roce_ll2_packet, %struct.ecore_roce_ll2_packet* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ROCE_V1, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @ECORE_LL2_ROCE, align 4
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @ECORE_LL2_RROCE, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %6, align 4
  %38 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %5, align 8
  %39 = getelementptr inbounds %struct.ecore_roce_ll2_packet, %struct.ecore_roce_ll2_packet* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 1, %40
  %42 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 7
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @ECORE_LL2_TX_DEST_NW, align 4
  %45 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 6
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %5, align 8
  %49 = getelementptr inbounds %struct.ecore_roce_ll2_packet, %struct.ecore_roce_ll2_packet* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 5
  store i32 %51, i32* %52, align 4
  %53 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %5, align 8
  %54 = getelementptr inbounds %struct.ecore_roce_ll2_packet, %struct.ecore_roce_ll2_packet* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 4
  store i32 %56, i32* %57, align 8
  %58 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %5, align 8
  %59 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 3
  store %struct.ecore_roce_ll2_packet* %58, %struct.ecore_roce_ll2_packet** %59, align 8
  %60 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %7, i32 0, i32 2
  store i32 1, i32* %60, align 8
  %61 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %62 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %65 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ecore_ll2_prepare_tx_packet(i32 %63, i32 %66, %struct.ecore_ll2_tx_pkt_info* %7, i32 1)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %36
  %71 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %72 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = call i32 @QL_DPRINT11(%struct.TYPE_7__* %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %76 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %5, align 8
  %80 = getelementptr inbounds %struct.ecore_roce_ll2_packet, %struct.ecore_roce_ll2_packet* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %5, align 8
  %84 = getelementptr inbounds %struct.ecore_roce_ll2_packet, %struct.ecore_roce_ll2_packet* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %5, align 8
  %88 = getelementptr inbounds %struct.ecore_roce_ll2_packet, %struct.ecore_roce_ll2_packet* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @qlnx_dma_free_coherent(i32* %78, i32 %82, i32 %86, i32 %90)
  %92 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %5, align 8
  %93 = call i32 @kfree(%struct.ecore_roce_ll2_packet* %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %159

95:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %135, %95
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %5, align 8
  %99 = getelementptr inbounds %struct.ecore_roce_ll2_packet, %struct.ecore_roce_ll2_packet* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %138

102:                                              ; preds = %96
  %103 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %104 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %107 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %5, align 8
  %110 = getelementptr inbounds %struct.ecore_roce_ll2_packet, %struct.ecore_roce_ll2_packet* %109, i32 0, i32 2
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ecore_roce_ll2_packet*, %struct.ecore_roce_ll2_packet** %5, align 8
  %118 = getelementptr inbounds %struct.ecore_roce_ll2_packet, %struct.ecore_roce_ll2_packet* %117, i32 0, i32 2
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ecore_ll2_set_fragment_of_tx_packet(i32 %105, i32 %108, i32 %116, i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %102
  %129 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %130 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = call i32 @QL_DPRINT11(%struct.TYPE_7__* %131, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %3, align 4
  br label %159

134:                                              ; preds = %102
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %96

138:                                              ; preds = %96
  %139 = bitcast %struct.ecore_ll2_stats* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %139, i8 0, i64 4, i1 false)
  %140 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %141 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %144 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ecore_ll2_get_stats(i32 %142, i32 %145, %struct.ecore_ll2_stats* %10)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %138
  %150 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %151 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = call i32 @QL_DPRINT11(%struct.TYPE_7__* %152, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %154

154:                                              ; preds = %149, %138
  %155 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %156 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %155, i32 0, i32 0
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = call i32 @QL_DPRINT12(%struct.TYPE_7__* %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %154, %128, %70, %21
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @memset(%struct.ecore_ll2_tx_pkt_info*, i32, i32) #1

declare dso_local i32 @QL_DPRINT11(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @ecore_ll2_prepare_tx_packet(i32, i32, %struct.ecore_ll2_tx_pkt_info*, i32) #1

declare dso_local i32 @qlnx_dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ecore_roce_ll2_packet*) #1

declare dso_local i32 @ecore_ll2_set_fragment_of_tx_packet(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ecore_ll2_get_stats(i32, i32, %struct.ecore_ll2_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
