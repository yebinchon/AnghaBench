; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_em_txrx.c_lem_isc_rxd_pkt_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_em_txrx.c_lem_isc_rxd_pkt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i32, i8*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i8*, i64 }
%struct.adapter = type { %struct.TYPE_10__, i32, %struct.em_rx_queue*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.em_rx_queue = type { %struct.rx_ring }
%struct.rx_ring = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.e1000_rx_desc = type { i32, i32, i32, i32 }

@E1000_RXD_STAT_DD = common dso_local global i32 0, align 4
@E1000_RXD_STAT_EOP = common dso_local global i32 0, align 4
@E1000_RXD_ERR_FRAME_ERR_MASK = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i64 0, align 8
@E1000_RXD_STAT_IXSM = common dso_local global i32 0, align 4
@E1000_RXD_STAT_VP = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_12__*)* @lem_isc_rxd_pkt_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lem_isc_rxd_pkt_get(i8* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.em_rx_queue*, align 8
  %9 = alloca %struct.rx_ring*, align 8
  %10 = alloca %struct.e1000_rx_desc*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.adapter*
  store %struct.adapter* %18, %struct.adapter** %6, align 8
  %19 = load %struct.adapter*, %struct.adapter** %6, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %7, align 8
  %22 = load %struct.adapter*, %struct.adapter** %6, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 2
  %24 = load %struct.em_rx_queue*, %struct.em_rx_queue** %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %24, i64 %27
  store %struct.em_rx_queue* %28, %struct.em_rx_queue** %8, align 8
  %29 = load %struct.em_rx_queue*, %struct.em_rx_queue** %8, align 8
  %30 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %29, i32 0, i32 0
  store %struct.rx_ring* %30, %struct.rx_ring** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %16, align 4
  br label %34

34:                                               ; preds = %118, %2
  %35 = load %struct.rx_ring*, %struct.rx_ring** %9, align 8
  %36 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = bitcast i32* %40 to %struct.e1000_rx_desc*
  store %struct.e1000_rx_desc* %41, %struct.e1000_rx_desc** %10, align 8
  %42 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %10, align 8
  %43 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  %45 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %10, align 8
  %46 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @E1000_RXD_STAT_DD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @MPASS(i32 %52)
  %54 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %10, align 8
  %55 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le16toh(i32 %56)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr i8, i8* %58, i64 %62
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %60, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @E1000_RXD_ERR_FRAME_ERR_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %34
  %75 = load %struct.adapter*, %struct.adapter** %6, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* @EBADMSG, align 4
  store i32 %79, i32* %3, align 4
  br label %161

80:                                               ; preds = %34
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 %88, i32* %95, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i8* %96, i8** %103, align 8
  %104 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %10, align 8
  %105 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %104, i32 0, i32 0
  store i32 0, i32* %105, align 4
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %107, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %80
  store i32 0, i32* %16, align 4
  br label %115

115:                                              ; preds = %114, %80
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  br i1 %121, label %34, label %122

122:                                              ; preds = %118
  %123 = load %struct.adapter*, %struct.adapter** %6, align 8
  %124 = getelementptr inbounds %struct.adapter, %struct.adapter* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @e1000_82543, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %122
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @E1000_RXD_STAT_IXSM, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = call i32 @lem_receive_checksum(i32 %136, i32 %137, %struct.TYPE_12__* %138)
  br label %140

140:                                              ; preds = %135, %130, %122
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @E1000_RXD_STAT_VP, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %140
  %146 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %10, align 8
  %147 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @le16toh(i32 %148)
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* @M_VLANTAG, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %145, %140
  %158 = load i32, i32* %15, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %157, %74
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i8* @le16toh(i32) #1

declare dso_local i32 @lem_receive_checksum(i32, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
