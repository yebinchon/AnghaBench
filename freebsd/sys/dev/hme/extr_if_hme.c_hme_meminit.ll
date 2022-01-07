; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_meminit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_meminit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { i32, i32, i32, %struct.hme_ring, i32 }
%struct.hme_ring = type { i8*, i8*, i8*, i8*, i64, i64, i64, i64, i32, %struct.hme_txdesc*, i32, i8*, i8* }
%struct.hme_txdesc = type { i32*, i32 }

@HME_NTXDESC = common dso_local global i32 0, align 4
@HME_XD_SIZE = common dso_local global i32 0, align 4
@HME_NRXDESC = common dso_local global i32 0, align 4
@HME_PCI = common dso_local global i32 0, align 4
@HME_NTXQ = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@htx_q = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@KTR_HME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"hme_meminit: tx ring va %p, pa %#lx\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"hme_meminit: rx ring va %p, pa %#lx\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"rx entry 1: flags %x, address %x\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"tx entry 1: flags %x, address %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hme_softc*)* @hme_meminit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hme_meminit(%struct.hme_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hme_softc*, align 8
  %4 = alloca %struct.hme_ring*, align 8
  %5 = alloca %struct.hme_txdesc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hme_softc* %0, %struct.hme_softc** %3, align 8
  %10 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %11 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %10, i32 0, i32 3
  store %struct.hme_ring* %11, %struct.hme_ring** %4, align 8
  %12 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %13 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %12, i32 0, i32 12
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %16 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %15, i32 0, i32 11
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %20 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %23 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @HME_NTXDESC, align 4
  %25 = load i32, i32* @HME_XD_SIZE, align 4
  %26 = mul i32 %24, %25
  %27 = load i8*, i8** %7, align 8
  %28 = zext i32 %26 to i64
  %29 = getelementptr i8, i8* %27, i64 %28
  store i8* %29, i8** %7, align 8
  %30 = load i32, i32* @HME_NTXDESC, align 4
  %31 = load i32, i32* @HME_XD_SIZE, align 4
  %32 = mul i32 %30, %31
  %33 = load i8*, i8** %6, align 8
  %34 = zext i32 %32 to i64
  %35 = getelementptr i8, i8* %33, i64 %34
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = call i64 @roundup(i32 %37, i32 2048)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = ptrtoint i8* %40 to i32
  %42 = call i64 @roundup(i32 %41, i32 2048)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %46 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %49 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @HME_NRXDESC, align 4
  %51 = load i32, i32* @HME_XD_SIZE, align 4
  %52 = mul i32 %50, %51
  %53 = load i8*, i8** %7, align 8
  %54 = zext i32 %52 to i64
  %55 = getelementptr i8, i8* %53, i64 %54
  store i8* %55, i8** %7, align 8
  %56 = load i32, i32* @HME_NRXDESC, align 4
  %57 = load i32, i32* @HME_XD_SIZE, align 4
  %58 = mul i32 %56, %57
  %59 = load i8*, i8** %6, align 8
  %60 = zext i32 %58 to i64
  %61 = getelementptr i8, i8* %59, i64 %60
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = call i64 @roundup(i32 %63, i32 2048)
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = call i64 @roundup(i32 %67, i32 2048)
  %69 = inttoptr i64 %68 to i8*
  store i8* %69, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %95, %1
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @HME_NTXDESC, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %70
  %75 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %76 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @HME_PCI, align 4
  %79 = and i32 %77, %78
  %80 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %81 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @HME_XD_SETADDR(i32 %79, i8* %82, i32 %83, i32 0)
  %85 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %86 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @HME_PCI, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %91 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @HME_XD_SETFLAGS(i32 %89, i8* %92, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %74
  %96 = load i32, i32* %8, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %70

98:                                               ; preds = %70
  %99 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %100 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %100, i32 0, i32 8
  %102 = call i32 @STAILQ_INIT(i32* %101)
  %103 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %104 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %104, i32 0, i32 10
  %106 = call i32 @STAILQ_INIT(i32* %105)
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %152, %98
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @HME_NTXQ, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %155

111:                                              ; preds = %107
  %112 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %113 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %113, i32 0, i32 9
  %115 = load %struct.hme_txdesc*, %struct.hme_txdesc** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.hme_txdesc, %struct.hme_txdesc* %115, i64 %117
  store %struct.hme_txdesc* %118, %struct.hme_txdesc** %5, align 8
  %119 = load %struct.hme_txdesc*, %struct.hme_txdesc** %5, align 8
  %120 = getelementptr inbounds %struct.hme_txdesc, %struct.hme_txdesc* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %145

123:                                              ; preds = %111
  %124 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %125 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.hme_txdesc*, %struct.hme_txdesc** %5, align 8
  %128 = getelementptr inbounds %struct.hme_txdesc, %struct.hme_txdesc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %131 = call i32 @bus_dmamap_sync(i32 %126, i32 %129, i32 %130)
  %132 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %133 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.hme_txdesc*, %struct.hme_txdesc** %5, align 8
  %136 = getelementptr inbounds %struct.hme_txdesc, %struct.hme_txdesc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @bus_dmamap_unload(i32 %134, i32 %137)
  %139 = load %struct.hme_txdesc*, %struct.hme_txdesc** %5, align 8
  %140 = getelementptr inbounds %struct.hme_txdesc, %struct.hme_txdesc* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @m_freem(i32* %141)
  %143 = load %struct.hme_txdesc*, %struct.hme_txdesc** %5, align 8
  %144 = getelementptr inbounds %struct.hme_txdesc, %struct.hme_txdesc* %143, i32 0, i32 0
  store i32* null, i32** %144, align 8
  br label %145

145:                                              ; preds = %123, %111
  %146 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %147 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %147, i32 0, i32 8
  %149 = load %struct.hme_txdesc*, %struct.hme_txdesc** %5, align 8
  %150 = load i32, i32* @htx_q, align 4
  %151 = call i32 @STAILQ_INSERT_TAIL(i32* %148, %struct.hme_txdesc* %149, i32 %150)
  br label %152

152:                                              ; preds = %145
  %153 = load i32, i32* %8, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %107

155:                                              ; preds = %107
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %169, %155
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @HME_NRXDESC, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %172

160:                                              ; preds = %156
  %161 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @hme_add_rxbuf(%struct.hme_softc* %161, i32 %162, i32 1)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %2, align 4
  br label %233

168:                                              ; preds = %160
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %8, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %8, align 4
  br label %156

172:                                              ; preds = %156
  %173 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %174 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %177 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %180 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @bus_dmamap_sync(i32 %175, i32 %178, i32 %181)
  %183 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %184 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %183, i32 0, i32 6
  store i64 0, i64* %184, align 8
  %185 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %186 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %185, i32 0, i32 7
  store i64 0, i64* %186, align 8
  %187 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %188 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %187, i32 0, i32 5
  store i64 0, i64* %188, align 8
  %189 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %190 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %189, i32 0, i32 4
  store i64 0, i64* %190, align 8
  %191 = load i32, i32* @KTR_HME, align 4
  %192 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %193 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %196 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %195, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @CTR2(i32 %191, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %194, i8* %197)
  %199 = load i32, i32* @KTR_HME, align 4
  %200 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %201 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %204 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %203, i32 0, i32 2
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @CTR2(i32 %199, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %202, i8* %205)
  %207 = load i32, i32* @KTR_HME, align 4
  %208 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %209 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = bitcast i8* %210 to i8**
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %214 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = getelementptr i8, i8* %215, i64 4
  %217 = bitcast i8* %216 to i8**
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @CTR2(i32 %207, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %212, i8* %218)
  %220 = load i32, i32* @KTR_HME, align 4
  %221 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %222 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = bitcast i8* %223 to i8**
  %225 = load i8*, i8** %224, align 8
  %226 = load %struct.hme_ring*, %struct.hme_ring** %4, align 8
  %227 = getelementptr inbounds %struct.hme_ring, %struct.hme_ring* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = getelementptr i8, i8* %228, i64 4
  %230 = bitcast i8* %229 to i8**
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @CTR2(i32 %220, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %225, i8* %231)
  store i32 0, i32* %2, align 4
  br label %233

233:                                              ; preds = %172, %166
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local i32 @HME_XD_SETADDR(i32, i8*, i32, i32) #1

declare dso_local i32 @HME_XD_SETFLAGS(i32, i8*, i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.hme_txdesc*, i32) #1

declare dso_local i32 @hme_add_rxbuf(%struct.hme_softc*, i32, i32) #1

declare dso_local i32 @CTR2(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
