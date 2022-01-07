; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_rx_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_rx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { %struct.xgbe_ring*, %struct.xgbe_prv_data* }
%struct.xgbe_ring = type { i32, %struct.xgbe_packet_data }
%struct.xgbe_packet_data = type { i64, i32 }
%struct.xgbe_prv_data = type { %struct.ifnet*, %struct.xgbe_hw_if }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { i64, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.xgbe_hw_if = type { i64 (%struct.xgbe_channel.0*)* }
%struct.xgbe_channel.0 = type opaque
%struct.xgbe_ring_data = type { i32, %struct.TYPE_5__, %struct.mbuf* }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"-->xgbe_rx_poll: budget=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"  cur = %d\0A\00", align 1
@XGBE_RX_DESC_CNT = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES = common dso_local global i32 0, align 4
@INCOMPLETE = common dso_local global i32 0, align 4
@CONTEXT_NEXT = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"<--xgbe_rx_poll: packet_count = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_channel*, i32)* @xgbe_rx_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_rx_poll(%struct.xgbe_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca %struct.xgbe_hw_if*, align 8
  %8 = alloca %struct.xgbe_ring*, align 8
  %9 = alloca %struct.xgbe_ring_data*, align 8
  %10 = alloca %struct.xgbe_packet_data*, align 8
  %11 = alloca %struct.ifnet*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.xgbe_channel* %0, %struct.xgbe_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %18 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %17, i32 0, i32 1
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %18, align 8
  store %struct.xgbe_prv_data* %19, %struct.xgbe_prv_data** %6, align 8
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 1
  store %struct.xgbe_hw_if* %21, %struct.xgbe_hw_if** %7, align 8
  %22 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %23 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %22, i32 0, i32 0
  %24 = load %struct.xgbe_ring*, %struct.xgbe_ring** %23, align 8
  store %struct.xgbe_ring* %24, %struct.xgbe_ring** %8, align 8
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %26 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %25, i32 0, i32 0
  %27 = load %struct.ifnet*, %struct.ifnet** %26, align 8
  store %struct.ifnet* %27, %struct.ifnet** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @DBGPR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %31 = icmp ne %struct.xgbe_ring* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %177

33:                                               ; preds = %2
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %34 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %35 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %36 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %34, i32 %37)
  store %struct.xgbe_ring_data* %38, %struct.xgbe_ring_data** %9, align 8
  %39 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %40 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %39, i32 0, i32 1
  store %struct.xgbe_packet_data* %40, %struct.xgbe_packet_data** %10, align 8
  br label %41

41:                                               ; preds = %170, %33
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %173

45:                                               ; preds = %41
  %46 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %47 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @DBGPR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %100, %45
  %51 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %52 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %53 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %51, i32 %54)
  store %struct.xgbe_ring_data* %55, %struct.xgbe_ring_data** %9, align 8
  %56 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %57 = call i32 @xgbe_rx_dirty_desc(%struct.xgbe_ring* %56)
  %58 = load i32, i32* @XGBE_RX_DESC_CNT, align 4
  %59 = ashr i32 %58, 3
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %63 = call i32 @xgbe_rx_refresh(%struct.xgbe_channel* %62)
  br label %64

64:                                               ; preds = %61, %50
  %65 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %66 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %65, i32 0, i32 0
  %67 = load i64 (%struct.xgbe_channel.0*)*, i64 (%struct.xgbe_channel.0*)** %66, align 8
  %68 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %69 = bitcast %struct.xgbe_channel* %68 to %struct.xgbe_channel.0*
  %70 = call i64 %67(%struct.xgbe_channel.0* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %173

73:                                               ; preds = %64
  %74 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %75 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %74, i32 0, i32 2
  %76 = load %struct.mbuf*, %struct.mbuf** %75, align 8
  store %struct.mbuf* %76, %struct.mbuf** %12, align 8
  %77 = load i32, i32* %15, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %15, align 4
  %79 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  %80 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %84 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %87 = load i32, i32* @INCOMPLETE, align 4
  %88 = call i32 @XGMAC_GET_BITS(i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %90 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %93 = load i32, i32* @CONTEXT_NEXT, align 4
  %94 = call i32 @XGMAC_GET_BITS(i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %73
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97, %73
  br label %50

101:                                              ; preds = %97
  %102 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %10, align 8
  %103 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %108 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  br label %170

109:                                              ; preds = %101
  %110 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %111 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %110, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %111, align 8
  %112 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %113 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %117 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %115, %119
  %121 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %122 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i64 %120, i64* %123, align 8
  %124 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %125 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %109
  %130 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %131 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %135 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %137 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %141 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %140, i32 0, i32 1
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i64 %139, i64* %143, align 8
  br label %157

144:                                              ; preds = %109
  %145 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %9, align 8
  %146 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %150 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %152 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %151, i32 0, i32 1
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = call i32 @m_freem(%struct.TYPE_6__* %153)
  %155 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %156 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %155, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %156, align 8
  br label %157

157:                                              ; preds = %144, %129
  %158 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %159 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %160 = call i32 @if_setrcvif(%struct.mbuf* %158, %struct.ifnet* %159)
  %161 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %162 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %163 = call i32 @if_inc_counter(%struct.ifnet* %161, i32 %162, i32 1)
  %164 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %165 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %164, i32 0, i32 0
  %166 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %165, align 8
  %167 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %168 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %169 = call i32 %166(%struct.ifnet* %167, %struct.mbuf* %168)
  br label %170

170:                                              ; preds = %157, %106
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %16, align 4
  br label %41

173:                                              ; preds = %72, %41
  %174 = load i32, i32* %16, align 4
  %175 = call i32 @DBGPR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %16, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %173, %32
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @DBGPR(i8*, i32) #1

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

declare dso_local i32 @xgbe_rx_dirty_desc(%struct.xgbe_ring*) #1

declare dso_local i32 @xgbe_rx_refresh(%struct.xgbe_channel*) #1

declare dso_local i32 @XGMAC_GET_BITS(i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.TYPE_6__*) #1

declare dso_local i32 @if_setrcvif(%struct.mbuf*, %struct.ifnet*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
