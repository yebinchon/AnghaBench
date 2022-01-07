; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_start_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena_datapath.c_ena_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i64, %struct.TYPE_8__*, i32, %struct.TYPE_7__, i32, %struct.ena_adapter* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ena_adapter = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ena_com_io_sq* }
%struct.ena_com_io_sq = type { i32 }
%struct.mbuf = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ENA_FLAG_LINK_UP = common dso_local global i32 0, align 4
@ENA_DBG = common dso_local global i32 0, align 4
@ENA_TXPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"\0Adequeued mbuf %p with flags %#x and header csum flags %#jx\0A\00", align 1
@ENA_COM_NO_MEM = common dso_local global i32 0, align 4
@ENA_COM_NO_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_ring*)* @ena_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_start_xmit(%struct.ena_ring* %0) #0 {
  %2 = alloca %struct.ena_ring*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca %struct.ena_com_io_sq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ena_ring* %0, %struct.ena_ring** %2, align 8
  %8 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %9 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %8, i32 0, i32 5
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %9, align 8
  store %struct.ena_adapter* %10, %struct.ena_adapter** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @if_getdrvflags(i32 %13)
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %200

22:                                               ; preds = %1
  %23 = load i32, i32* @ENA_FLAG_LINK_UP, align 4
  %24 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %25 = call i32 @ENA_FLAG_ISSET(i32 %23, %struct.ena_adapter* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %200

32:                                               ; preds = %22
  %33 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %34 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ENA_IO_TXQ_IDX(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %43, i64 %45
  store %struct.ena_com_io_sq* %46, %struct.ena_com_io_sq** %5, align 8
  br label %47

47:                                               ; preds = %151, %32
  %48 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %52 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.mbuf* @drbr_peek(i32 %50, i32 %53)
  store %struct.mbuf* %54, %struct.mbuf** %3, align 8
  %55 = icmp ne %struct.mbuf* %54, null
  br i1 %55, label %56, label %161

56:                                               ; preds = %47
  %57 = load i32, i32* @ENA_DBG, align 4
  %58 = load i32, i32* @ENA_TXPTH, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @ena_trace(i32 %59, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), %struct.mbuf* %60, i32 %63, i32 %68)
  %70 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %71 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %56
  %79 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %80 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %83 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %86 = call i32 @drbr_putback(i32 %81, i32 %84, %struct.mbuf* %85)
  br label %161

87:                                               ; preds = %56
  %88 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %89 = call i32 @ena_xmit_mbuf(%struct.ena_ring* %88, %struct.mbuf** %3)
  store i32 %89, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %132

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @ENA_COM_NO_MEM, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %100 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %103 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %106 = call i32 @drbr_putback(i32 %101, i32 %104, %struct.mbuf* %105)
  br label %131

107:                                              ; preds = %94
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @ENA_COM_NO_SPACE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %113 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %116 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %119 = call i32 @drbr_putback(i32 %114, i32 %117, %struct.mbuf* %118)
  br label %130

120:                                              ; preds = %107
  %121 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %122 = call i32 @m_freem(%struct.mbuf* %121)
  %123 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %124 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %127 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @drbr_advance(i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %120, %111
  br label %131

131:                                              ; preds = %130, %98
  br label %161

132:                                              ; preds = %87
  %133 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %134 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %137 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @drbr_advance(i32 %135, i32 %138)
  %140 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %141 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @if_getdrvflags(i32 %142)
  %144 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %145 = and i32 %143, %144
  %146 = icmp eq i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i64 @unlikely(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %132
  br label %200

151:                                              ; preds = %132
  %152 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %153 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %153, align 8
  %156 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %157 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %160 = call i32 @BPF_MTAP(i32 %158, %struct.mbuf* %159)
  br label %47

161:                                              ; preds = %131, %78, %47
  %162 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %163 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  %166 = zext i1 %165 to i32
  %167 = call i64 @likely(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %161
  %170 = call i32 (...) @wmb()
  %171 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %172 = call i32 @ena_com_write_sq_doorbell(%struct.ena_com_io_sq* %171)
  %173 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %174 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @counter_u64_add(i32 %176, i32 1)
  %178 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %179 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %178, i32 0, i32 0
  store i64 0, i64* %179, align 8
  br label %180

180:                                              ; preds = %169, %161
  %181 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %182 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = call i64 @unlikely(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %180
  %190 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %191 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %190, i32 0, i32 1
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %196 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %195, i32 0, i32 1
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = call i32 @taskqueue_enqueue(i32 %194, i32* %198)
  br label %200

200:                                              ; preds = %21, %31, %150, %189, %180
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ENA_IO_TXQ_IDX(i32) #1

declare dso_local %struct.mbuf* @drbr_peek(i32, i32) #1

declare dso_local i32 @ena_trace(i32, i8*, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @drbr_putback(i32, i32, %struct.mbuf*) #1

declare dso_local i32 @ena_xmit_mbuf(%struct.ena_ring*, %struct.mbuf**) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @drbr_advance(i32, i32) #1

declare dso_local i32 @BPF_MTAP(i32, %struct.mbuf*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ena_com_write_sq_doorbell(%struct.ena_com_io_sq*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
