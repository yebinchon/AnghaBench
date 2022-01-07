; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.hifn_softc = type { i32, i32, i64, i32, %struct.hifn_dma* }
%struct.hifn_dma = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.hifn_command = type { i64, i64, i32, i64, i64, i32, %struct.TYPE_7__*, i64, %struct.mbuf*, %struct.mbuf*, %struct.cryptop* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.mbuf = type { i32, %struct.TYPE_5__, %struct.mbuf* }
%struct.TYPE_5__ = type { i32 }
%struct.cryptop = type { i32, i32*, %struct.cryptodesc* }
%struct.cryptodesc = type { i64, i64, %struct.cryptodesc*, i64, i64 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@CRYPTO_F_IMBUF = common dso_local global i32 0, align 4
@HIFN_D_DST_RSIZE = common dso_local global i32 0, align 4
@HIFN_D_VALID = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@hifnstats = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@HIFN_BASE_CMD_CRYPT = common dso_local global i32 0, align 4
@HIFN_BASE_CMD_DECODE = common dso_local global i32 0, align 4
@CRYPTO_DES_CBC = common dso_local global i64 0, align 8
@CRYPTO_3DES_CBC = common dso_local global i64 0, align 8
@CRYPTO_AES_CBC = common dso_local global i64 0, align 8
@HIFN_AES_IV_LENGTH = common dso_local global i32 0, align 4
@HIFN_IV_LENGTH = common dso_local global i32 0, align 4
@CRYPTO_MD5 = common dso_local global i64 0, align 8
@CRYPTO_SHA1 = common dso_local global i64 0, align 8
@CRYPTO_MD5_HMAC = common dso_local global i64 0, align 8
@CRYPTO_SHA1_HMAC = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hifn_softc*, %struct.hifn_command*, i32*)* @hifn_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_callback(%struct.hifn_softc* %0, %struct.hifn_command* %1, i32* %2) #0 {
  %4 = alloca %struct.hifn_softc*, align 8
  %5 = alloca %struct.hifn_command*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hifn_dma*, align 8
  %8 = alloca %struct.cryptop*, align 8
  %9 = alloca %struct.cryptodesc*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hifn_softc* %0, %struct.hifn_softc** %4, align 8
  store %struct.hifn_command* %1, %struct.hifn_command** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %17 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %16, i32 0, i32 4
  %18 = load %struct.hifn_dma*, %struct.hifn_dma** %17, align 8
  store %struct.hifn_dma* %18, %struct.hifn_dma** %7, align 8
  %19 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %20 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %19, i32 0, i32 10
  %21 = load %struct.cryptop*, %struct.cryptop** %20, align 8
  store %struct.cryptop* %21, %struct.cryptop** %8, align 8
  %22 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %23 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %26 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %31 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %34 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %37 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @bus_dmamap_sync(i32 %32, i64 %35, i32 %38)
  br label %57

40:                                               ; preds = %3
  %41 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %42 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %45 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %48 = call i32 @bus_dmamap_sync(i32 %43, i64 %46, i32 %47)
  %49 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %50 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %53 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %56 = call i32 @bus_dmamap_sync(i32 %51, i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %40, %29
  %58 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %59 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CRYPTO_F_IMBUF, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %126

64:                                               ; preds = %57
  %65 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %66 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %65, i32 0, i32 8
  %67 = load %struct.mbuf*, %struct.mbuf** %66, align 8
  %68 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %69 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %68, i32 0, i32 9
  %70 = load %struct.mbuf*, %struct.mbuf** %69, align 8
  %71 = icmp ne %struct.mbuf* %67, %70
  br i1 %71, label %72, label %125

72:                                               ; preds = %64
  %73 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %74 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %73, i32 0, i32 9
  %75 = load %struct.mbuf*, %struct.mbuf** %74, align 8
  %76 = bitcast %struct.mbuf* %75 to i32*
  %77 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %78 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %80 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %11, align 4
  %82 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %83 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %82, i32 0, i32 9
  %84 = load %struct.mbuf*, %struct.mbuf** %83, align 8
  store %struct.mbuf* %84, %struct.mbuf** %10, align 8
  br label %85

85:                                               ; preds = %105, %72
  %86 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %87 = icmp ne %struct.mbuf* %86, null
  br i1 %87, label %88, label %109

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %97 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  store i32 0, i32* %11, align 4
  br label %104

98:                                               ; preds = %88
  %99 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %98, %94
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %107 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %106, i32 0, i32 2
  %108 = load %struct.mbuf*, %struct.mbuf** %107, align 8
  store %struct.mbuf* %108, %struct.mbuf** %10, align 8
  br label %85

109:                                              ; preds = %85
  %110 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %111 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %110, i32 0, i32 8
  %112 = load %struct.mbuf*, %struct.mbuf** %111, align 8
  %113 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %117 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %116, i32 0, i32 9
  %118 = load %struct.mbuf*, %struct.mbuf** %117, align 8
  %119 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i32 %115, i32* %120, align 4
  %121 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %122 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %121, i32 0, i32 8
  %123 = load %struct.mbuf*, %struct.mbuf** %122, align 8
  %124 = call i32 @m_freem(%struct.mbuf* %123)
  br label %125

125:                                              ; preds = %109, %64
  br label %126

126:                                              ; preds = %125, %57
  %127 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %128 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %158

131:                                              ; preds = %126
  %132 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %133 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %136 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %139 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %143 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %141, %144
  %146 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %147 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = load %struct.hifn_dma*, %struct.hifn_dma** %7, align 8
  %151 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %154 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = call i32 @crypto_copyback(i32 %134, i32* %137, i64 %145, i32 %149, i32* %156)
  br label %158

158:                                              ; preds = %131, %126
  %159 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %160 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %12, align 4
  %162 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %163 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %207, %158
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %212

168:                                              ; preds = %165
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @HIFN_D_DST_RSIZE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  store i32 0, i32* %12, align 4
  br label %173

173:                                              ; preds = %172, %168
  %174 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %175 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %178 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %181 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @bus_dmamap_sync(i32 %176, i64 %179, i32 %182)
  %184 = load %struct.hifn_dma*, %struct.hifn_dma** %7, align 8
  %185 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %184, i32 0, i32 0
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @HIFN_D_VALID, align 4
  %193 = call i32 @htole32(i32 %192)
  %194 = and i32 %191, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %173
  %197 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %198 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %201 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %204 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @bus_dmamap_sync(i32 %199, i64 %202, i32 %205)
  br label %212

207:                                              ; preds = %173
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %12, align 4
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %13, align 4
  br label %165

212:                                              ; preds = %196, %165
  %213 = load i32, i32* %12, align 4
  %214 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %215 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* %13, align 4
  %217 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %218 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %220 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %219, i32 0, i32 7
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 0), align 4
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %223, %221
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hifnstats, i32 0, i32 0), align 4
  %226 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %227 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @HIFN_BASE_CMD_CRYPT, align 4
  %230 = load i32, i32* @HIFN_BASE_CMD_DECODE, align 4
  %231 = or i32 %229, %230
  %232 = and i32 %228, %231
  %233 = load i32, i32* @HIFN_BASE_CMD_CRYPT, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %301

235:                                              ; preds = %212
  %236 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %237 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %236, i32 0, i32 2
  %238 = load %struct.cryptodesc*, %struct.cryptodesc** %237, align 8
  store %struct.cryptodesc* %238, %struct.cryptodesc** %9, align 8
  br label %239

239:                                              ; preds = %296, %235
  %240 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %241 = icmp ne %struct.cryptodesc* %240, null
  br i1 %241, label %242, label %300

242:                                              ; preds = %239
  %243 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %244 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @CRYPTO_DES_CBC, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %261

248:                                              ; preds = %242
  %249 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %250 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @CRYPTO_3DES_CBC, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %261

254:                                              ; preds = %248
  %255 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %256 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @CRYPTO_AES_CBC, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %254
  br label %296

261:                                              ; preds = %254, %248, %242
  %262 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %263 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @CRYPTO_AES_CBC, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %261
  %268 = load i32, i32* @HIFN_AES_IV_LENGTH, align 4
  br label %271

269:                                              ; preds = %261
  %270 = load i32, i32* @HIFN_IV_LENGTH, align 4
  br label %271

271:                                              ; preds = %269, %267
  %272 = phi i32 [ %268, %267 ], [ %270, %269 ]
  store i32 %272, i32* %14, align 4
  %273 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %274 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %277 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %280 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %279, i32 0, i32 4
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %283 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %281, %284
  %286 = load i32, i32* %14, align 4
  %287 = sext i32 %286 to i64
  %288 = sub nsw i64 %285, %287
  %289 = load i32, i32* %14, align 4
  %290 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %291 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %290, i32 0, i32 6
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @crypto_copydata(i32 %275, i32* %278, i64 %288, i32 %289, i32 %294)
  br label %300

296:                                              ; preds = %260
  %297 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %298 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %297, i32 0, i32 2
  %299 = load %struct.cryptodesc*, %struct.cryptodesc** %298, align 8
  store %struct.cryptodesc* %299, %struct.cryptodesc** %9, align 8
  br label %239

300:                                              ; preds = %271, %239
  br label %301

301:                                              ; preds = %300, %212
  %302 = load i32*, i32** %6, align 8
  %303 = icmp ne i32* %302, null
  br i1 %303, label %304, label %359

304:                                              ; preds = %301
  %305 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %306 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %305, i32 0, i32 2
  %307 = load %struct.cryptodesc*, %struct.cryptodesc** %306, align 8
  store %struct.cryptodesc* %307, %struct.cryptodesc** %9, align 8
  br label %308

308:                                              ; preds = %354, %304
  %309 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %310 = icmp ne %struct.cryptodesc* %309, null
  br i1 %310, label %311, label %358

311:                                              ; preds = %308
  %312 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %313 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @CRYPTO_MD5, align 8
  %316 = icmp ne i64 %314, %315
  br i1 %316, label %317, label %336

317:                                              ; preds = %311
  %318 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %319 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @CRYPTO_SHA1, align 8
  %322 = icmp ne i64 %320, %321
  br i1 %322, label %323, label %336

323:                                              ; preds = %317
  %324 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %325 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @CRYPTO_MD5_HMAC, align 8
  %328 = icmp ne i64 %326, %327
  br i1 %328, label %329, label %336

329:                                              ; preds = %323
  %330 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %331 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @CRYPTO_SHA1_HMAC, align 8
  %334 = icmp ne i64 %332, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %329
  br label %354

336:                                              ; preds = %329, %323, %317, %311
  %337 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %338 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %337, i32 0, i32 6
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  store i32 %341, i32* %15, align 4
  %342 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %343 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %346 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %349 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = load i32, i32* %15, align 4
  %352 = load i32*, i32** %6, align 8
  %353 = call i32 @crypto_copyback(i32 %344, i32* %347, i64 %350, i32 %351, i32* %352)
  br label %358

354:                                              ; preds = %335
  %355 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %356 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %355, i32 0, i32 2
  %357 = load %struct.cryptodesc*, %struct.cryptodesc** %356, align 8
  store %struct.cryptodesc* %357, %struct.cryptodesc** %9, align 8
  br label %308

358:                                              ; preds = %336, %308
  br label %359

359:                                              ; preds = %358, %301
  %360 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %361 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %364 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %362, %365
  br i1 %366, label %367, label %382

367:                                              ; preds = %359
  %368 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %369 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %372 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = call i32 @bus_dmamap_unload(i32 %370, i64 %373)
  %375 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %376 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %379 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = call i32 @bus_dmamap_destroy(i32 %377, i64 %380)
  br label %382

382:                                              ; preds = %367, %359
  %383 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %384 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %387 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = call i32 @bus_dmamap_unload(i32 %385, i64 %388)
  %390 = load %struct.hifn_softc*, %struct.hifn_softc** %4, align 8
  %391 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %394 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = call i32 @bus_dmamap_destroy(i32 %392, i64 %395)
  %397 = load %struct.hifn_command*, %struct.hifn_command** %5, align 8
  %398 = load i32, i32* @M_DEVBUF, align 4
  %399 = call i32 @free(%struct.hifn_command* %397, i32 %398)
  %400 = load %struct.cryptop*, %struct.cryptop** %8, align 8
  %401 = call i32 @crypto_done(%struct.cryptop* %400)
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i64, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @crypto_copyback(i32, i32*, i64, i32, i32*) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @crypto_copydata(i32, i32*, i64, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i64) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i64) #1

declare dso_local i32 @free(%struct.hifn_command*, i32) #1

declare dso_local i32 @crypto_done(%struct.cryptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
