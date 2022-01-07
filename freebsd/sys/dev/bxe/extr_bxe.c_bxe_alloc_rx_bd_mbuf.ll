; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_alloc_rx_bd_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_alloc_rx_bd_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_fastpath = type { %struct.eth_rx_bd*, i32, i32*, %struct.bxe_sw_rx_bd*, %struct.TYPE_6__, i32, i32 }
%struct.eth_rx_bd = type { i8*, i8* }
%struct.bxe_sw_rx_bd = type { %struct.mbuf*, i32* }
%struct.mbuf = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Too many segments, %d returned!\00", align 1
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_fastpath*, i64, i64)* @bxe_alloc_rx_bd_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_alloc_rx_bd_mbuf(%struct.bxe_fastpath* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_fastpath*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bxe_sw_rx_bd*, align 8
  %9 = alloca %struct.eth_rx_bd*, align 8
  %10 = alloca [1 x %struct.TYPE_7__], align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bxe_fastpath* %0, %struct.bxe_fastpath** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = load i32, i32* @MT_DATA, align 4
  %17 = load i32, i32* @M_PKTHDR, align 4
  %18 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %19 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.mbuf* @m_getjcl(i32 %15, i32 %16, i32 %17, i32 %20)
  store %struct.mbuf* %21, %struct.mbuf** %12, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %23 = icmp eq %struct.mbuf* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @__predict_false(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %29 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* @ENOBUFS, align 4
  store i32 %33, i32* %4, align 4
  br label %204

34:                                               ; preds = %3
  %35 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %36 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %41 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  %48 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %49 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %52 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %55 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %56 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %57 = call i32 @bus_dmamap_load_mbuf_sg(i32 %50, i32* %53, %struct.mbuf* %54, %struct.TYPE_7__* %55, i32* %13, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i64 @__predict_false(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %34
  %64 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %65 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %70 = call i32 @m_freem(%struct.mbuf* %69)
  %71 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %72 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %4, align 4
  br label %204

77:                                               ; preds = %34
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %78, 1
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = call i32 @KASSERT(i32 %80, i8* %83)
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %121

88:                                               ; preds = %77
  %89 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %90 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %89, i32 0, i32 3
  %91 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %91, i64 %92
  store %struct.bxe_sw_rx_bd* %93, %struct.bxe_sw_rx_bd** %8, align 8
  %94 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %8, align 8
  %95 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %114

98:                                               ; preds = %88
  %99 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %100 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %8, align 8
  %103 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %106 = call i32 @bus_dmamap_sync(i32 %101, i32* %104, i32 %105)
  %107 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %108 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %8, align 8
  %111 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @bus_dmamap_unload(i32 %109, i32* %112)
  br label %114

114:                                              ; preds = %98, %88
  %115 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %116 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %115, i32 0, i32 3
  %117 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %116, align 8
  %118 = load i64, i64* %6, align 8
  %119 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %117, i64 %118
  %120 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %119, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %120, align 8
  br label %121

121:                                              ; preds = %114, %77
  %122 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %123 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %122, i32 0, i32 3
  %124 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %123, align 8
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %124, i64 %125
  store %struct.bxe_sw_rx_bd* %126, %struct.bxe_sw_rx_bd** %8, align 8
  %127 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %8, align 8
  %128 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %147

131:                                              ; preds = %121
  %132 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %133 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %8, align 8
  %136 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %139 = call i32 @bus_dmamap_sync(i32 %134, i32* %137, i32 %138)
  %140 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %141 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %8, align 8
  %144 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @bus_dmamap_unload(i32 %142, i32* %145)
  br label %147

147:                                              ; preds = %131, %121
  %148 = load i64, i64* %6, align 8
  %149 = load i64, i64* %7, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %147
  %152 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %153 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %152, i32 0, i32 3
  %154 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %153, align 8
  %155 = load i64, i64* %6, align 8
  %156 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %154, i64 %155
  %157 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  br label %163

159:                                              ; preds = %147
  %160 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %8, align 8
  %161 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  br label %163

163:                                              ; preds = %159, %151
  %164 = phi i32* [ %158, %151 ], [ %162, %159 ]
  store i32* %164, i32** %11, align 8
  %165 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %166 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %8, align 8
  %169 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %168, i32 0, i32 1
  store i32* %167, i32** %169, align 8
  %170 = load i32*, i32** %11, align 8
  %171 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %172 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %171, i32 0, i32 2
  store i32* %170, i32** %172, align 8
  %173 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %174 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %8, align 8
  %177 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %180 = call i32 @bus_dmamap_sync(i32 %175, i32* %178, i32 %179)
  %181 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %182 = load %struct.bxe_sw_rx_bd*, %struct.bxe_sw_rx_bd** %8, align 8
  %183 = getelementptr inbounds %struct.bxe_sw_rx_bd, %struct.bxe_sw_rx_bd* %182, i32 0, i32 0
  store %struct.mbuf* %181, %struct.mbuf** %183, align 8
  %184 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %185 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %184, i32 0, i32 0
  %186 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %185, align 8
  %187 = load i64, i64* %7, align 8
  %188 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %186, i64 %187
  store %struct.eth_rx_bd* %188, %struct.eth_rx_bd** %9, align 8
  %189 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @U64_HI(i32 %191)
  %193 = call i8* @htole32(i32 %192)
  %194 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %9, align 8
  %195 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %194, i32 0, i32 1
  store i8* %193, i8** %195, align 8
  %196 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %10, i64 0, i64 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @U64_LO(i32 %198)
  %200 = call i8* @htole32(i32 %199)
  %201 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %9, align 8
  %202 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  %203 = load i32, i32* %14, align 4
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %163, %63, %27
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local %struct.mbuf* @m_getjcl(i32, i32, i32, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32*, %struct.mbuf*, %struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
