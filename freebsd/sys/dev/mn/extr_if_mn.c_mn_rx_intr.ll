; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_mn_rx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_mn_rx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn_softc = type { i8*, %struct.schan**, %struct.TYPE_3__ }
%struct.schan = type { i64, i32, i32, %struct.trxd*, %struct.trxd*, i8*, i32, i32, i32, i32, i32, i32, i8*, i32, i32 }
%struct.trxd = type { i32, i32, %struct.trxd*, i64, i64, %struct.mbuf* }
%struct.mbuf = type { i32, %struct.trxd*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64* }

@UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s: rx_intr when not UP\0A\00", align 1
@time_second = common dso_local global i8* null, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mn_softc*, i32)* @mn_rx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mn_rx_intr(%struct.mn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.trxd*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.schan*, align 8
  %10 = alloca i32, align 4
  store %struct.mn_softc* %0, %struct.mn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 31
  store i32 %12, i32* %5, align 4
  %13 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %13, i32 0, i32 1
  %15 = load %struct.schan**, %struct.schan*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.schan*, %struct.schan** %15, i64 %17
  %19 = load %struct.schan*, %struct.schan** %18, align 8
  %20 = icmp ne %struct.schan* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %283

22:                                               ; preds = %2
  %23 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %23, i32 0, i32 1
  %25 = load %struct.schan**, %struct.schan*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.schan*, %struct.schan** %25, i64 %27
  %29 = load %struct.schan*, %struct.schan** %28, align 8
  store %struct.schan* %29, %struct.schan** %9, align 8
  %30 = load %struct.schan*, %struct.schan** %9, align 8
  %31 = getelementptr inbounds %struct.schan, %struct.schan* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @UP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %283

40:                                               ; preds = %22
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, -32
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 805309184
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.schan*, %struct.schan** %9, align 8
  %47 = getelementptr inbounds %struct.schan, %struct.schan* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %217, %50
  %52 = load %struct.schan*, %struct.schan** %9, align 8
  %53 = getelementptr inbounds %struct.schan, %struct.schan* %52, i32 0, i32 4
  %54 = load %struct.trxd*, %struct.trxd** %53, align 8
  store %struct.trxd* %54, %struct.trxd** %7, align 8
  %55 = load %struct.trxd*, %struct.trxd** %7, align 8
  %56 = call i64 @vtophys(%struct.trxd* %55)
  %57 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %58 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %56, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %283

67:                                               ; preds = %51
  %68 = load %struct.trxd*, %struct.trxd** %7, align 8
  %69 = getelementptr inbounds %struct.trxd, %struct.trxd* %68, i32 0, i32 5
  %70 = load %struct.mbuf*, %struct.mbuf** %69, align 8
  store %struct.mbuf* %70, %struct.mbuf** %8, align 8
  %71 = load %struct.trxd*, %struct.trxd** %7, align 8
  %72 = getelementptr inbounds %struct.trxd, %struct.trxd* %71, i32 0, i32 5
  store %struct.mbuf* null, %struct.mbuf** %72, align 8
  %73 = load %struct.trxd*, %struct.trxd** %7, align 8
  %74 = getelementptr inbounds %struct.trxd, %struct.trxd* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = ashr i32 %75, 16
  %77 = and i32 %76, 8191
  %78 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %81 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %77, i32* %82, align 8
  %83 = load %struct.trxd*, %struct.trxd** %7, align 8
  %84 = getelementptr inbounds %struct.trxd, %struct.trxd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = ashr i32 %85, 8
  %87 = and i32 %86, 255
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %107, label %90

90:                                               ; preds = %67
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.schan*, %struct.schan** %9, align 8
  %93 = getelementptr inbounds %struct.schan, %struct.schan* %92, i32 0, i32 13
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %96 = call i32 @NG_SEND_DATA_ONLY(i32 %91, i32 %94, %struct.mbuf* %95)
  %97 = load i8*, i8** @time_second, align 8
  %98 = load %struct.schan*, %struct.schan** %9, align 8
  %99 = getelementptr inbounds %struct.schan, %struct.schan* %98, i32 0, i32 12
  store i8* %97, i8** %99, align 8
  %100 = load %struct.schan*, %struct.schan** %9, align 8
  %101 = getelementptr inbounds %struct.schan, %struct.schan* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @UP, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %90
  br label %283

106:                                              ; preds = %90
  br label %167

107:                                              ; preds = %67
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, 64
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load %struct.schan*, %struct.schan** %9, align 8
  %113 = getelementptr inbounds %struct.schan, %struct.schan* %112, i32 0, i32 11
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %166

116:                                              ; preds = %107
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, 16
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load %struct.schan*, %struct.schan** %9, align 8
  %122 = getelementptr inbounds %struct.schan, %struct.schan* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  br label %165

125:                                              ; preds = %116
  %126 = load i32, i32* %6, align 4
  %127 = and i32 %126, 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.schan*, %struct.schan** %9, align 8
  %131 = getelementptr inbounds %struct.schan, %struct.schan* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %164

134:                                              ; preds = %125
  %135 = load i32, i32* %6, align 4
  %136 = and i32 %135, 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load %struct.schan*, %struct.schan** %9, align 8
  %140 = getelementptr inbounds %struct.schan, %struct.schan* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  br label %163

143:                                              ; preds = %134
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %144, 2
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load %struct.schan*, %struct.schan** %9, align 8
  %149 = getelementptr inbounds %struct.schan, %struct.schan* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  br label %162

152:                                              ; preds = %143
  %153 = load i32, i32* %6, align 4
  %154 = and i32 %153, 1
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  %157 = load %struct.schan*, %struct.schan** %9, align 8
  %158 = getelementptr inbounds %struct.schan, %struct.schan* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %156, %152
  br label %162

162:                                              ; preds = %161, %147
  br label %163

163:                                              ; preds = %162, %138
  br label %164

164:                                              ; preds = %163, %129
  br label %165

165:                                              ; preds = %164, %120
  br label %166

166:                                              ; preds = %165, %111
  br label %167

167:                                              ; preds = %166, %106
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %167
  %171 = load i8*, i8** @time_second, align 8
  %172 = load %struct.schan*, %struct.schan** %9, align 8
  %173 = getelementptr inbounds %struct.schan, %struct.schan* %172, i32 0, i32 5
  store i8* %171, i8** %173, align 8
  %174 = load %struct.schan*, %struct.schan** %9, align 8
  %175 = getelementptr inbounds %struct.schan, %struct.schan* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.schan*, %struct.schan** %9, align 8
  %178 = getelementptr inbounds %struct.schan, %struct.schan* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %6, align 4
  %180 = load %struct.schan*, %struct.schan** %9, align 8
  %181 = getelementptr inbounds %struct.schan, %struct.schan* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %170, %167
  %183 = load %struct.trxd*, %struct.trxd** %7, align 8
  %184 = getelementptr inbounds %struct.trxd, %struct.trxd* %183, i32 0, i32 2
  %185 = load %struct.trxd*, %struct.trxd** %184, align 8
  %186 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %187 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %186, i32 0, i32 1
  %188 = load %struct.schan**, %struct.schan*** %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.schan*, %struct.schan** %188, i64 %190
  %192 = load %struct.schan*, %struct.schan** %191, align 8
  %193 = getelementptr inbounds %struct.schan, %struct.schan* %192, i32 0, i32 4
  store %struct.trxd* %185, %struct.trxd** %193, align 8
  %194 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %195 = icmp ne %struct.mbuf* %194, null
  br i1 %195, label %217, label %196

196:                                              ; preds = %182
  %197 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %198 = load i32, i32* @M_NOWAIT, align 4
  %199 = load i32, i32* @MT_DATA, align 4
  %200 = call i32 @MGETHDR(%struct.mbuf* %197, i32 %198, i32 %199)
  %201 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %202 = icmp eq %struct.mbuf* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  %204 = load %struct.trxd*, %struct.trxd** %7, align 8
  %205 = call i32 @mn_free_desc(%struct.trxd* %204)
  br label %283

206:                                              ; preds = %196
  %207 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %208 = load i32, i32* @M_NOWAIT, align 4
  %209 = call i32 @MCLGET(%struct.mbuf* %207, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %206
  %212 = load %struct.trxd*, %struct.trxd** %7, align 8
  %213 = call i32 @mn_free_desc(%struct.trxd* %212)
  %214 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %215 = call i32 @m_freem(%struct.mbuf* %214)
  br label %283

216:                                              ; preds = %206
  br label %217

217:                                              ; preds = %216, %182
  %218 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %219 = load %struct.trxd*, %struct.trxd** %7, align 8
  %220 = getelementptr inbounds %struct.trxd, %struct.trxd* %219, i32 0, i32 5
  store %struct.mbuf* %218, %struct.mbuf** %220, align 8
  %221 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %222 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %221, i32 0, i32 1
  %223 = load %struct.trxd*, %struct.trxd** %222, align 8
  %224 = call i64 @vtophys(%struct.trxd* %223)
  %225 = load %struct.trxd*, %struct.trxd** %7, align 8
  %226 = getelementptr inbounds %struct.trxd, %struct.trxd* %225, i32 0, i32 4
  store i64 %224, i64* %226, align 8
  %227 = load %struct.trxd*, %struct.trxd** %7, align 8
  %228 = getelementptr inbounds %struct.trxd, %struct.trxd* %227, i32 0, i32 1
  store i32 1073741824, i32* %228, align 4
  %229 = load %struct.trxd*, %struct.trxd** %7, align 8
  %230 = getelementptr inbounds %struct.trxd, %struct.trxd* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 104857600
  store i32 %232, i32* %230, align 4
  %233 = load %struct.trxd*, %struct.trxd** %7, align 8
  %234 = call i64 @vtophys(%struct.trxd* %233)
  %235 = load %struct.trxd*, %struct.trxd** %7, align 8
  %236 = getelementptr inbounds %struct.trxd, %struct.trxd* %235, i32 0, i32 3
  store i64 %234, i64* %236, align 8
  %237 = load %struct.trxd*, %struct.trxd** %7, align 8
  %238 = getelementptr inbounds %struct.trxd, %struct.trxd* %237, i32 0, i32 2
  store %struct.trxd* null, %struct.trxd** %238, align 8
  %239 = load %struct.trxd*, %struct.trxd** %7, align 8
  %240 = call i64 @vtophys(%struct.trxd* %239)
  %241 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %242 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %241, i32 0, i32 1
  %243 = load %struct.schan**, %struct.schan*** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.schan*, %struct.schan** %243, i64 %245
  %247 = load %struct.schan*, %struct.schan** %246, align 8
  %248 = getelementptr inbounds %struct.schan, %struct.schan* %247, i32 0, i32 3
  %249 = load %struct.trxd*, %struct.trxd** %248, align 8
  %250 = getelementptr inbounds %struct.trxd, %struct.trxd* %249, i32 0, i32 3
  store i64 %240, i64* %250, align 8
  %251 = load %struct.trxd*, %struct.trxd** %7, align 8
  %252 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %253 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %252, i32 0, i32 1
  %254 = load %struct.schan**, %struct.schan*** %253, align 8
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.schan*, %struct.schan** %254, i64 %256
  %258 = load %struct.schan*, %struct.schan** %257, align 8
  %259 = getelementptr inbounds %struct.schan, %struct.schan* %258, i32 0, i32 3
  %260 = load %struct.trxd*, %struct.trxd** %259, align 8
  %261 = getelementptr inbounds %struct.trxd, %struct.trxd* %260, i32 0, i32 2
  store %struct.trxd* %251, %struct.trxd** %261, align 8
  %262 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %263 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %262, i32 0, i32 1
  %264 = load %struct.schan**, %struct.schan*** %263, align 8
  %265 = load i32, i32* %5, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.schan*, %struct.schan** %264, i64 %266
  %268 = load %struct.schan*, %struct.schan** %267, align 8
  %269 = getelementptr inbounds %struct.schan, %struct.schan* %268, i32 0, i32 3
  %270 = load %struct.trxd*, %struct.trxd** %269, align 8
  %271 = getelementptr inbounds %struct.trxd, %struct.trxd* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, -1073741825
  store i32 %273, i32* %271, align 4
  %274 = load %struct.trxd*, %struct.trxd** %7, align 8
  %275 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %276 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %275, i32 0, i32 1
  %277 = load %struct.schan**, %struct.schan*** %276, align 8
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.schan*, %struct.schan** %277, i64 %279
  %281 = load %struct.schan*, %struct.schan** %280, align 8
  %282 = getelementptr inbounds %struct.schan, %struct.schan* %281, i32 0, i32 3
  store %struct.trxd* %274, %struct.trxd** %282, align 8
  br label %51

283:                                              ; preds = %211, %203, %105, %66, %35, %21
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @vtophys(%struct.trxd*) #1

declare dso_local i32 @NG_SEND_DATA_ONLY(i32, i32, %struct.mbuf*) #1

declare dso_local i32 @MGETHDR(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @mn_free_desc(%struct.trxd*) #1

declare dso_local i32 @MCLGET(%struct.mbuf*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
