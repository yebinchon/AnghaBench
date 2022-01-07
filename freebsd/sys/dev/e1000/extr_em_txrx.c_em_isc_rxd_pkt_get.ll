; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_em_txrx.c_em_isc_rxd_pkt_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_em_txrx.c_em_isc_rxd_pkt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i32, i32, i32, i8*, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i8*, i64 }
%struct.adapter = type { %struct.TYPE_14__, i32, %struct.em_rx_queue*, %struct.TYPE_19__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.em_rx_queue = type { %struct.rx_ring }
%struct.rx_ring = type { %union.e1000_rx_desc_extended* }
%union.e1000_rx_desc_extended = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32* }

@E1000_RXD_STAT_DD = common dso_local global i32 0, align 4
@E1000_RXD_STAT_EOP = common dso_local global i32 0, align 4
@E1000_RXDEXT_ERR_FRAME_ERR_MASK = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i64 0, align 8
@E1000_RXD_STAT_VP = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_20__*)* @em_isc_rxd_pkt_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_isc_rxd_pkt_get(i8* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.em_rx_queue*, align 8
  %9 = alloca %struct.rx_ring*, align 8
  %10 = alloca %union.e1000_rx_desc_extended*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.adapter*
  store %struct.adapter* %19, %struct.adapter** %6, align 8
  %20 = load %struct.adapter*, %struct.adapter** %6, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 3
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %7, align 8
  %23 = load %struct.adapter*, %struct.adapter** %6, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 2
  %25 = load %struct.em_rx_queue*, %struct.em_rx_queue** %24, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %25, i64 %28
  store %struct.em_rx_queue* %29, %struct.em_rx_queue** %8, align 8
  %30 = load %struct.em_rx_queue*, %struct.em_rx_queue** %8, align 8
  %31 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %30, i32 0, i32 0
  store %struct.rx_ring* %31, %struct.rx_ring** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %16, align 4
  br label %35

35:                                               ; preds = %133, %2
  %36 = load %struct.rx_ring*, %struct.rx_ring** %9, align 8
  %37 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %36, i32 0, i32 0
  %38 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %37, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %union.e1000_rx_desc_extended, %union.e1000_rx_desc_extended* %38, i64 %40
  store %union.e1000_rx_desc_extended* %41, %union.e1000_rx_desc_extended** %10, align 8
  %42 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %43 = bitcast %union.e1000_rx_desc_extended* %42 to %struct.TYPE_18__*
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le32toh(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %50 = bitcast %union.e1000_rx_desc_extended* %49 to %struct.TYPE_18__*
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @le32toh(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @E1000_RXD_STAT_DD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @MPASS(i32 %60)
  %62 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %63 = bitcast %union.e1000_rx_desc_extended* %62 to %struct.TYPE_18__*
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @le16toh(i32 %66)
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %68, i64 %72
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %70, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @E1000_RXDEXT_ERR_FRAME_ERR_MASK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %35
  %85 = load %struct.adapter*, %struct.adapter** %6, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* @EBADMSG, align 4
  store i32 %89, i32* %3, align 4
  br label %191

90:                                               ; preds = %35
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 7
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %16, align 4
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 7
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  store i32 %98, i32* %105, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 7
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  store i8* %106, i8** %113, align 8
  %114 = call i32 @htole32(i32 -256)
  %115 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %116 = bitcast %union.e1000_rx_desc_extended* %115 to %struct.TYPE_18__*
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, %114
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %16, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %122, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %90
  store i32 0, i32* %16, align 4
  br label %130

130:                                              ; preds = %129, %90
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  br label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  br i1 %136, label %35, label %137

137:                                              ; preds = %133
  %138 = load %struct.adapter*, %struct.adapter** %6, align 8
  %139 = getelementptr inbounds %struct.adapter, %struct.adapter* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @e1000_82543, align 8
  %144 = icmp sge i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %137
  %146 = load i32, i32* %13, align 4
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %148 = call i32 @em_receive_checksum(i32 %146, %struct.TYPE_20__* %147)
  br label %149

149:                                              ; preds = %145, %137
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @E1000_RXD_STAT_VP, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %156 = bitcast %union.e1000_rx_desc_extended* %155 to %struct.TYPE_18__*
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @le16toh(i32 %159)
  %161 = ptrtoint i8* %160 to i32
  store i32 %161, i32* %17, align 4
  br label %162

162:                                              ; preds = %154, %149
  %163 = load i32, i32* %17, align 4
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %17, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = load i32, i32* @M_VLANTAG, align 4
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %168, %162
  %175 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %176 = bitcast %union.e1000_rx_desc_extended* %175 to %struct.TYPE_18__*
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @le32toh(i32 %180)
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 5
  store i8* %181, i8** %183, align 8
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @em_determine_rsstype(i32 %184)
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* %15, align 4
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 8
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %174, %84
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i8* @le32toh(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i8* @le16toh(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @em_receive_checksum(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @em_determine_rsstype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
