; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i64, i64, i32**, i32, %struct.mbuf**, %struct.TYPE_3__*, i32 }
%struct.mbuf = type { i32, %struct.mbuf*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@CGEM_RXDESC_OWN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@CGEM_NUM_RX_DESCS = common dso_local global i64 0, align 8
@CGEM_RXDESC_BAD_FCS = common dso_local global i32 0, align 4
@CGEM_RXDESC_SOF = common dso_local global i32 0, align 4
@CGEM_RXDESC_EOF = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i64 0, align 8
@CGEM_RXDESC_LENGTH_MASK = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@CGEM_RXDESC_CKSUM_STAT_MASK = common dso_local global i32 0, align 4
@CGEM_RXDESC_CKSUM_STAT_TCP_GOOD = common dso_local global i32 0, align 4
@CGEM_RXDESC_CKSUM_STAT_UDP_GOOD = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@CGEM_RXDESC_CKSUM_STAT_IP_GOOD = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgem_softc*)* @cgem_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgem_recv(%struct.cgem_softc* %0) #0 {
  %2 = alloca %struct.cgem_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf**, align 8
  %7 = alloca i32, align 4
  store %struct.cgem_softc* %0, %struct.cgem_softc** %2, align 8
  %8 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %9 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %12 = call i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc* %11)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  store %struct.mbuf** %5, %struct.mbuf*** %6, align 8
  br label %13

13:                                               ; preds = %212, %130, %1
  %14 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %15 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %20 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %19, i32 0, i32 5
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %23 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CGEM_RXDESC_OWN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %18, %13
  %32 = phi i1 [ false, %13 ], [ %30, %18 ]
  br i1 %32, label %33, label %217

33:                                               ; preds = %31
  %34 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %35 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %34, i32 0, i32 5
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %38 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  %43 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %44 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %43, i32 0, i32 4
  %45 = load %struct.mbuf**, %struct.mbuf*** %44, align 8
  %46 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %47 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %45, i64 %48
  %50 = load %struct.mbuf*, %struct.mbuf** %49, align 8
  store %struct.mbuf* %50, %struct.mbuf** %4, align 8
  %51 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %52 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %51, i32 0, i32 4
  %53 = load %struct.mbuf**, %struct.mbuf*** %52, align 8
  %54 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %55 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %53, i64 %56
  store %struct.mbuf* null, %struct.mbuf** %57, align 8
  %58 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %59 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %62 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %61, i32 0, i32 2
  %63 = load i32**, i32*** %62, align 8
  %64 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %65 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32*, i32** %63, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %70 = call i32 @bus_dmamap_sync(i32 %60, i32* %68, i32 %69)
  %71 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %72 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %75 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %74, i32 0, i32 2
  %76 = load i32**, i32*** %75, align 8
  %77 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %78 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32*, i32** %76, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @bus_dmamap_unload(i32 %73, i32* %81)
  %83 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %84 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %87 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %86, i32 0, i32 2
  %88 = load i32**, i32*** %87, align 8
  %89 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %90 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32*, i32** %88, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @bus_dmamap_destroy(i32 %85, i32* %93)
  %95 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %96 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %95, i32 0, i32 2
  %97 = load i32**, i32*** %96, align 8
  %98 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %99 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32*, i32** %97, i64 %100
  store i32* null, i32** %101, align 8
  %102 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %103 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = load i64, i64* @CGEM_NUM_RX_DESCS, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %33
  %109 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %110 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %108, %33
  %112 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %113 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, -1
  store i64 %115, i64* %113, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @CGEM_RXDESC_BAD_FCS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @CGEM_RXDESC_SOF, align 4
  %123 = load i32, i32* @CGEM_RXDESC_EOF, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = load i32, i32* @CGEM_RXDESC_SOF, align 4
  %127 = load i32, i32* @CGEM_RXDESC_EOF, align 4
  %128 = or i32 %126, %127
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %120, %111
  %131 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %132 = call i32 @m_free(%struct.mbuf* %131)
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %135 = call i32 @if_inc_counter(i32 %133, i32 %134, i32 1)
  br label %13

136:                                              ; preds = %120
  %137 = load i64, i64* @ETHER_ALIGN, align 8
  %138 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %139 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %137
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @CGEM_RXDESC_LENGTH_MASK, align 4
  %146 = and i32 %144, %145
  %147 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %148 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %3, align 4
  %150 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %151 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 3
  store i32 %149, i32* %152, align 4
  %153 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %154 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %157 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @if_getcapenable(i32 %159)
  %161 = load i32, i32* @IFCAP_RXCSUM, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %212

164:                                              ; preds = %136
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @CGEM_RXDESC_CKSUM_STAT_MASK, align 4
  %167 = and i32 %165, %166
  %168 = load i32, i32* @CGEM_RXDESC_CKSUM_STAT_TCP_GOOD, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %176, label %170

170:                                              ; preds = %164
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @CGEM_RXDESC_CKSUM_STAT_MASK, align 4
  %173 = and i32 %171, %172
  %174 = load i32, i32* @CGEM_RXDESC_CKSUM_STAT_UDP_GOOD, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %170, %164
  %177 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %178 = load i32, i32* @CSUM_IP_VALID, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @CSUM_DATA_VALID, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %183 = or i32 %181, %182
  %184 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %185 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %183
  store i32 %188, i32* %186, align 4
  %189 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %190 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  store i32 65535, i32* %191, align 8
  br label %211

192:                                              ; preds = %170
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @CGEM_RXDESC_CKSUM_STAT_MASK, align 4
  %195 = and i32 %193, %194
  %196 = load i32, i32* @CGEM_RXDESC_CKSUM_STAT_IP_GOOD, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %210

198:                                              ; preds = %192
  %199 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %200 = load i32, i32* @CSUM_IP_VALID, align 4
  %201 = or i32 %199, %200
  %202 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %203 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %201
  store i32 %206, i32* %204, align 4
  %207 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %208 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 2
  store i32 65535, i32* %209, align 8
  br label %210

210:                                              ; preds = %198, %192
  br label %211

211:                                              ; preds = %210, %176
  br label %212

212:                                              ; preds = %211, %136
  %213 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %214 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %213, %struct.mbuf** %214, align 8
  %215 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %216 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %215, i32 0, i32 1
  store %struct.mbuf** %216, %struct.mbuf*** %6, align 8
  br label %13

217:                                              ; preds = %31
  %218 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %219 = call i32 @cgem_fill_rqueue(%struct.cgem_softc* %218)
  %220 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %221 = call i32 @CGEM_UNLOCK(%struct.cgem_softc* %220)
  br label %222

222:                                              ; preds = %225, %217
  %223 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %224 = icmp ne %struct.mbuf* %223, null
  br i1 %224, label %225, label %238

225:                                              ; preds = %222
  %226 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %226, %struct.mbuf** %4, align 8
  %227 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %228 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %227, i32 0, i32 1
  %229 = load %struct.mbuf*, %struct.mbuf** %228, align 8
  store %struct.mbuf* %229, %struct.mbuf** %5, align 8
  %230 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %231 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %230, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %231, align 8
  %232 = load i32, i32* %3, align 4
  %233 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %234 = call i32 @if_inc_counter(i32 %232, i32 %233, i32 1)
  %235 = load i32, i32* %3, align 4
  %236 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %237 = call i32 @if_input(i32 %235, %struct.mbuf* %236)
  br label %222

238:                                              ; preds = %222
  %239 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %240 = call i32 @CGEM_LOCK(%struct.cgem_softc* %239)
  ret void
}

declare dso_local i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @cgem_fill_rqueue(%struct.cgem_softc*) #1

declare dso_local i32 @CGEM_UNLOCK(%struct.cgem_softc*) #1

declare dso_local i32 @if_input(i32, %struct.mbuf*) #1

declare dso_local i32 @CGEM_LOCK(%struct.cgem_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
