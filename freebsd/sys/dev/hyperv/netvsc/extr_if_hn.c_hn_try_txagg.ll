; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_try_txagg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_try_txagg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.hn_tx_ring = type { i32, i32, i32, i32, %struct.rndis_packet_msg*, %struct.hn_txdesc*, i32, %struct.TYPE_2__*, i32, i32 }
%struct.rndis_packet_msg = type { i32 }
%struct.TYPE_2__ = type { i32, i8* }
%struct.hn_txdesc = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"lingering aggregating txdesc\00", align 1
@HN_NVS_CHIM_IDX_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ifnet*, %struct.hn_tx_ring*, %struct.hn_txdesc*, i32)* @hn_try_txagg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hn_try_txagg(%struct.ifnet* %0, %struct.hn_tx_ring* %1, %struct.hn_txdesc* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.hn_tx_ring*, align 8
  %8 = alloca %struct.hn_txdesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.hn_txdesc*, align 8
  %12 = alloca %struct.rndis_packet_msg*, align 8
  %13 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.hn_tx_ring* %1, %struct.hn_tx_ring** %7, align 8
  store %struct.hn_txdesc* %2, %struct.hn_txdesc** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %15 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %14, i32 0, i32 5
  %16 = load %struct.hn_txdesc*, %struct.hn_txdesc** %15, align 8
  %17 = icmp ne %struct.hn_txdesc* %16, null
  br i1 %17, label %18, label %96

18:                                               ; preds = %4
  %19 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %20 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %21, 1
  br i1 %22, label %23, label %92

23:                                               ; preds = %18
  %24 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %25 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %92

29:                                               ; preds = %23
  %30 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %31 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %30, i32 0, i32 5
  %32 = load %struct.hn_txdesc*, %struct.hn_txdesc** %31, align 8
  store %struct.hn_txdesc* %32, %struct.hn_txdesc** %11, align 8
  %33 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %34 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %33, i32 0, i32 4
  %35 = load %struct.rndis_packet_msg*, %struct.rndis_packet_msg** %34, align 8
  store %struct.rndis_packet_msg* %35, %struct.rndis_packet_msg** %12, align 8
  %36 = load %struct.rndis_packet_msg*, %struct.rndis_packet_msg** %12, align 8
  %37 = getelementptr inbounds %struct.rndis_packet_msg, %struct.rndis_packet_msg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %41 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @roundup2(i32 %39, i32 %42)
  %44 = load %struct.rndis_packet_msg*, %struct.rndis_packet_msg** %12, align 8
  %45 = getelementptr inbounds %struct.rndis_packet_msg, %struct.rndis_packet_msg* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.rndis_packet_msg*, %struct.rndis_packet_msg** %12, align 8
  %47 = getelementptr inbounds %struct.rndis_packet_msg, %struct.rndis_packet_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load %struct.hn_txdesc*, %struct.hn_txdesc** %11, align 8
  %52 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.hn_txdesc*, %struct.hn_txdesc** %11, align 8
  %56 = load %struct.hn_txdesc*, %struct.hn_txdesc** %8, align 8
  %57 = call i32 @hn_txdesc_agg(%struct.hn_txdesc* %55, %struct.hn_txdesc* %56)
  %58 = load %struct.rndis_packet_msg*, %struct.rndis_packet_msg** %12, align 8
  %59 = bitcast %struct.rndis_packet_msg* %58 to i32*
  %60 = load %struct.rndis_packet_msg*, %struct.rndis_packet_msg** %12, align 8
  %61 = getelementptr inbounds %struct.rndis_packet_msg, %struct.rndis_packet_msg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = bitcast i32* %64 to i8*
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = bitcast i8* %66 to %struct.rndis_packet_msg*
  %68 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %69 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %68, i32 0, i32 4
  store %struct.rndis_packet_msg* %67, %struct.rndis_packet_msg** %69, align 8
  %70 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %71 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %76 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %80 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %83 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @HN_PKTSIZE_MIN(i32 %84)
  %86 = icmp sle i32 %81, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %29
  %88 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %89 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %29
  %91 = load i8*, i8** %10, align 8
  store i8* %91, i8** %5, align 8
  br label %178

92:                                               ; preds = %23, %18
  %93 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %94 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %95 = call i32 @hn_flush_txagg(%struct.ifnet* %93, %struct.hn_tx_ring* %94)
  br label %96

96:                                               ; preds = %92, %4
  %97 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %98 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %97, i32 0, i32 5
  %99 = load %struct.hn_txdesc*, %struct.hn_txdesc** %98, align 8
  %100 = icmp eq %struct.hn_txdesc* %99, null
  %101 = zext i1 %100 to i32
  %102 = call i32 @KASSERT(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %103 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %104 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %108 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %107, i32 0, i32 7
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = call i32 @hn_chim_alloc(%struct.TYPE_2__* %109)
  %111 = load %struct.hn_txdesc*, %struct.hn_txdesc** %8, align 8
  %112 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load %struct.hn_txdesc*, %struct.hn_txdesc** %8, align 8
  %114 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @HN_NVS_CHIM_IDX_INVALID, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %96
  store i8* null, i8** %5, align 8
  br label %178

119:                                              ; preds = %96
  %120 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %121 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %125 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %124, i32 0, i32 7
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.hn_txdesc*, %struct.hn_txdesc** %8, align 8
  %130 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %133 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %132, i32 0, i32 7
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 %131, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr i8, i8* %128, i64 %138
  store i8* %139, i8** %10, align 8
  %140 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %141 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %176

144:                                              ; preds = %119
  %145 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %146 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %150 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @HN_PKTSIZE_MIN(i32 %151)
  %153 = add nsw i32 %148, %152
  %154 = icmp sgt i32 %147, %153
  br i1 %154, label %155, label %176

155:                                              ; preds = %144
  %156 = load %struct.hn_txdesc*, %struct.hn_txdesc** %8, align 8
  %157 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %158 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %157, i32 0, i32 5
  store %struct.hn_txdesc* %156, %struct.hn_txdesc** %158, align 8
  %159 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %160 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, 1
  %163 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %164 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %166 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %9, align 4
  %169 = sub nsw i32 %167, %168
  %170 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %171 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load i8*, i8** %10, align 8
  %173 = bitcast i8* %172 to %struct.rndis_packet_msg*
  %174 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %175 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %174, i32 0, i32 4
  store %struct.rndis_packet_msg* %173, %struct.rndis_packet_msg** %175, align 8
  br label %176

176:                                              ; preds = %155, %144, %119
  %177 = load i8*, i8** %10, align 8
  store i8* %177, i8** %5, align 8
  br label %178

178:                                              ; preds = %176, %118, %90
  %179 = load i8*, i8** %5, align 8
  ret i8* %179
}

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @hn_txdesc_agg(%struct.hn_txdesc*, %struct.hn_txdesc*) #1

declare dso_local i32 @HN_PKTSIZE_MIN(i32) #1

declare dso_local i32 @hn_flush_txagg(%struct.ifnet*, %struct.hn_tx_ring*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @hn_chim_alloc(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
