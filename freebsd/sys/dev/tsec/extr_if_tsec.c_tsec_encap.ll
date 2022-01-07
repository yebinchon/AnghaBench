; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_encap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.tsec_softc = type { i64, %struct.tsec_desc*, i32, %struct.tsec_bufmap* }
%struct.tsec_desc = type { i64, i32, i32 }
%struct.tsec_bufmap = type { %struct.mbuf*, i32 }
%struct.mbuf = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@TSEC_TX_MAX_DMA_SEGS = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@TSEC_TX_NUM_DESC = common dso_local global i32 0, align 4
@TSEC_TXBD_L = common dso_local global i64 0, align 8
@TSEC_TXBD_I = common dso_local global i64 0, align 8
@TSEC_TXBD_R = common dso_local global i64 0, align 8
@TSEC_TXBD_TC = common dso_local global i64 0, align 8
@TSEC_TXBD_TOE = common dso_local global i64 0, align 8
@TSEC_TXBD_W = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.tsec_softc*, %struct.mbuf*, i64, i32*)* @tsec_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_encap(%struct.ifnet* %0, %struct.tsec_softc* %1, %struct.mbuf* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.tsec_softc*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tsec_bufmap*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.mbuf*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.tsec_desc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.tsec_softc* %1, %struct.tsec_softc** %7, align 8
  store %struct.mbuf* %2, %struct.mbuf** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %22 = load i32, i32* @TSEC_TX_MAX_DMA_SEGS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca %struct.TYPE_3__, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %27 = call i32 @TSEC_TRANSMIT_LOCK_ASSERT(%struct.tsec_softc* %26)
  %28 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %29 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %17, align 8
  %31 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %32 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %31, i32 0, i32 3
  %33 = load %struct.tsec_bufmap*, %struct.tsec_bufmap** %32, align 8
  %34 = load i64, i64* %17, align 8
  %35 = getelementptr inbounds %struct.tsec_bufmap, %struct.tsec_bufmap* %33, i64 %34
  store %struct.tsec_bufmap* %35, %struct.tsec_bufmap** %16, align 8
  %36 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %37 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tsec_bufmap*, %struct.tsec_bufmap** %16, align 8
  %40 = getelementptr inbounds %struct.tsec_bufmap, %struct.tsec_bufmap* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %43 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %44 = call i32 @bus_dmamap_load_mbuf_sg(i32 %38, i32 %41, %struct.mbuf* %42, %struct.TYPE_3__* %25, i32* %15, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @EFBIG, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %5
  %49 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %50 = load i32, i32* @M_NOWAIT, align 4
  %51 = call %struct.mbuf* @m_defrag(%struct.mbuf* %49, i32 %50)
  store %struct.mbuf* %51, %struct.mbuf** %19, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %53 = icmp eq %struct.mbuf* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %56 = call i32 @m_freem(%struct.mbuf* %55)
  store i32 1, i32* %20, align 4
  br label %175

57:                                               ; preds = %48
  %58 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  store %struct.mbuf* %58, %struct.mbuf** %8, align 8
  %59 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %60 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.tsec_bufmap*, %struct.tsec_bufmap** %16, align 8
  %63 = getelementptr inbounds %struct.tsec_bufmap, %struct.tsec_bufmap* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %66 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %67 = call i32 @bus_dmamap_load_mbuf_sg(i32 %61, i32 %64, %struct.mbuf* %65, %struct.TYPE_3__* %25, i32* %15, i32 %66)
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %57, %5
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %73 = call i32 @m_freem(%struct.mbuf* %72)
  store i32 1, i32* %20, align 4
  br label %175

74:                                               ; preds = %68
  %75 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %76 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.tsec_bufmap*, %struct.tsec_bufmap** %16, align 8
  %79 = getelementptr inbounds %struct.tsec_bufmap, %struct.tsec_bufmap* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %82 = call i32 @bus_dmamap_sync(i32 %77, i32 %80, i32 %81)
  %83 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %84 = load %struct.tsec_bufmap*, %struct.tsec_bufmap** %16, align 8
  %85 = getelementptr inbounds %struct.tsec_bufmap, %struct.tsec_bufmap* %84, i32 0, i32 0
  store %struct.mbuf* %83, %struct.mbuf** %85, align 8
  %86 = load i64, i64* %17, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %86, %88
  %90 = load i32, i32* @TSEC_TX_NUM_DESC, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = and i64 %89, %92
  store i64 %93, i64* %17, align 8
  %94 = load i64, i64* %17, align 8
  %95 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %96 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* @TSEC_TXBD_L, align 8
  %98 = load i64, i64* @TSEC_TXBD_I, align 8
  %99 = or i64 %97, %98
  %100 = load i64, i64* @TSEC_TXBD_R, align 8
  %101 = or i64 %99, %100
  %102 = load i64, i64* @TSEC_TXBD_TC, align 8
  %103 = or i64 %101, %102
  store i64 %103, i64* %18, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %167, %74
  %107 = load i32, i32* %14, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %170

109:                                              ; preds = %106
  %110 = load i64, i64* %17, align 8
  %111 = sub i64 %110, 1
  %112 = load i32, i32* @TSEC_TX_NUM_DESC, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = and i64 %111, %114
  store i64 %115, i64* %17, align 8
  %116 = load %struct.tsec_softc*, %struct.tsec_softc** %7, align 8
  %117 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %116, i32 0, i32 1
  %118 = load %struct.tsec_desc*, %struct.tsec_desc** %117, align 8
  %119 = load i64, i64* %17, align 8
  %120 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %118, i64 %119
  store %struct.tsec_desc* %120, %struct.tsec_desc** %21, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.tsec_desc*, %struct.tsec_desc** %21, align 8
  %127 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.tsec_desc*, %struct.tsec_desc** %21, align 8
  %134 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %14, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %109
  %138 = call i32 (...) @wmb()
  %139 = load i64, i64* %9, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i64, i64* @TSEC_TXBD_TOE, align 8
  %143 = load i64, i64* %18, align 8
  %144 = or i64 %143, %142
  store i64 %144, i64* %18, align 8
  br label %145

145:                                              ; preds = %141, %137
  br label %146

146:                                              ; preds = %145, %109
  %147 = load i64, i64* %17, align 8
  %148 = load i32, i32* @TSEC_TX_NUM_DESC, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = icmp eq i64 %147, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i64, i64* @TSEC_TXBD_W, align 8
  br label %155

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i64 [ %153, %152 ], [ 0, %154 ]
  %157 = load i64, i64* %18, align 8
  %158 = or i64 %156, %157
  %159 = load %struct.tsec_desc*, %struct.tsec_desc** %21, align 8
  %160 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load i64, i64* @TSEC_TXBD_L, align 8
  %162 = load i64, i64* @TSEC_TXBD_I, align 8
  %163 = or i64 %161, %162
  %164 = xor i64 %163, -1
  %165 = load i64, i64* %18, align 8
  %166 = and i64 %165, %164
  store i64 %166, i64* %18, align 8
  br label %167

167:                                              ; preds = %155
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %14, align 4
  br label %106

170:                                              ; preds = %106
  %171 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %172 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %173 = call i32 @BPF_MTAP(%struct.ifnet* %171, %struct.mbuf* %172)
  %174 = load i32*, i32** %10, align 8
  store i32 1, i32* %174, align 4
  store i32 0, i32* %20, align 4
  br label %175

175:                                              ; preds = %170, %71, %54
  %176 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %20, align 4
  switch i32 %177, label %179 [
    i32 0, label %178
    i32 1, label %178
  ]

178:                                              ; preds = %175, %175
  ret void

179:                                              ; preds = %175
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TSEC_TRANSMIT_LOCK_ASSERT(%struct.tsec_softc*) #2

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_3__*, i32*, i32) #2

declare dso_local %struct.mbuf* @m_defrag(%struct.mbuf*, i32) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

declare dso_local i32 @wmb(...) #2

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
