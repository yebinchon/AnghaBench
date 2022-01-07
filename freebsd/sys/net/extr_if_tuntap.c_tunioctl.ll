; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cdev = type { %struct.tuntap_softc* }
%struct.tuntap_softc = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.thread = type { i32 }
%struct.ifreq = type { i32, i32 }
%struct.ifnet = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tuninfo = type { i32, i32, i32 }
%struct.mbuf = type { i32, %struct.mbuf* }

@TUN_L2 = common dso_local global i32 0, align 4
@TUN_VMIO_FLAG_MASK = common dso_local global i32 0, align 4
@IFF_CANTCHANGE = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TUN_LMODE = common dso_local global i32 0, align 4
@TUN_IFHEAD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_6__* null, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@EPROTOTYPE = common dso_local global i32 0, align 4
@SIOCSIFMTU = common dso_local global i32 0, align 4
@tundebug = common dso_local global i32 0, align 4
@TUN_ASYNC = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32*, i32, %struct.thread*)* @tunioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunioctl(%struct.cdev* %0, i32 %1, i32* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.ifreq, align 4
  %13 = alloca %struct.ifreq*, align 8
  %14 = alloca %struct.tuntap_softc*, align 8
  %15 = alloca %struct.ifnet*, align 8
  %16 = alloca %struct.tuninfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.mbuf*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %22 = load %struct.cdev*, %struct.cdev** %7, align 8
  %23 = getelementptr inbounds %struct.cdev, %struct.cdev* %22, i32 0, i32 0
  %24 = load %struct.tuntap_softc*, %struct.tuntap_softc** %23, align 8
  store %struct.tuntap_softc* %24, %struct.tuntap_softc** %14, align 8
  %25 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %26 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %25)
  store %struct.ifnet* %26, %struct.ifnet** %15, align 8
  %27 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %28 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TUN_L2, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %20, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %117

36:                                               ; preds = %5
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %116 [
    i32 128, label %38
    i32 144, label %64
    i32 143, label %74
    i32 141, label %84
    i32 142, label %107
  ]

38:                                               ; preds = %36
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* @TUN_VMIO_FLAG_MASK, align 4
  %42 = load i32, i32* %18, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* @IFF_CANTCHANGE, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %18, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* @IFF_UP, align 4
  %49 = load i32, i32* %18, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %18, align 4
  %51 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %52 = call i32 @TUN_LOCK(%struct.tuntap_softc* %51)
  %53 = load i32, i32* %18, align 4
  %54 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IFF_CANTCHANGE, align 4
  %58 = and i32 %56, %57
  %59 = or i32 %53, %58
  %60 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %63 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %62)
  store i32 0, i32* %6, align 4
  br label %439

64:                                               ; preds = %36
  %65 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %66 = call i32 @TUN_LOCK(%struct.tuntap_softc* %65)
  %67 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %68 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @bcopy(i32* %69, i32* %70, i32 4)
  %72 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %73 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %72)
  store i32 0, i32* %6, align 4
  br label %439

74:                                               ; preds = %36
  %75 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %76 = call i32 @TUN_LOCK(%struct.tuntap_softc* %75)
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %79 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @bcopy(i32* %77, i32* %80, i32 4)
  %82 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %83 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %82)
  store i32 0, i32* %6, align 4
  br label %439

84:                                               ; preds = %36
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp ne i64 %91, 4
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ne i64 %95, 4
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %6, align 4
  br label %439

99:                                               ; preds = %93, %89, %84
  %100 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %101 = call i32 @TUN_LOCK(%struct.tuntap_softc* %100)
  %102 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  %103 = load i32, i32* %19, align 4
  %104 = call i32 @tun_vnethdr_set(%struct.ifnet* %102, i32 %103)
  %105 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %106 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %105)
  store i32 0, i32* %6, align 4
  br label %439

107:                                              ; preds = %36
  %108 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %109 = call i32 @TUN_LOCK(%struct.tuntap_softc* %108)
  %110 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %111 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %9, align 8
  store i32 %112, i32* %113, align 4
  %114 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %115 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %114)
  store i32 0, i32* %6, align 4
  br label %439

116:                                              ; preds = %36
  br label %241

117:                                              ; preds = %5
  %118 = load i32, i32* %8, align 4
  switch i32 %118, label %240 [
    i32 129, label %119
    i32 133, label %147
    i32 137, label %175
    i32 131, label %189
    i32 130, label %228
  ]

119:                                              ; preds = %117
  %120 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %121 = call i32 @TUN_LOCK(%struct.tuntap_softc* %120)
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %119
  %126 = load i32, i32* @TUN_LMODE, align 4
  %127 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %128 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* @TUN_IFHEAD, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %134 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %144

137:                                              ; preds = %119
  %138 = load i32, i32* @TUN_LMODE, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %141 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %137, %125
  %145 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %146 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %145)
  store i32 0, i32* %6, align 4
  br label %439

147:                                              ; preds = %117
  %148 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %149 = call i32 @TUN_LOCK(%struct.tuntap_softc* %148)
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %147
  %154 = load i32, i32* @TUN_IFHEAD, align 4
  %155 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %156 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* @TUN_LMODE, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %162 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %172

165:                                              ; preds = %147
  %166 = load i32, i32* @TUN_IFHEAD, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %169 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %165, %153
  %173 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %174 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %173)
  store i32 0, i32* %6, align 4
  br label %439

175:                                              ; preds = %117
  %176 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %177 = call i32 @TUN_LOCK(%struct.tuntap_softc* %176)
  %178 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %179 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @TUN_IFHEAD, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 1, i32 0
  %186 = load i32*, i32** %9, align 8
  store i32 %185, i32* %186, align 4
  %187 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %188 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %187)
  store i32 0, i32* %6, align 4
  br label %439

189:                                              ; preds = %117
  %190 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %191 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %190)
  %192 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @IFF_UP, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32, i32* @EBUSY, align 4
  store i32 %198, i32* %6, align 4
  br label %439

199:                                              ; preds = %189
  %200 = load i32*, i32** %9, align 8
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @IFF_MULTICAST, align 4
  %203 = xor i32 %202, -1
  %204 = and i32 %201, %203
  switch i32 %204, label %225 [
    i32 145, label %205
    i32 146, label %205
  ]

205:                                              ; preds = %199, %199
  %206 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %207 = call i32 @TUN_LOCK(%struct.tuntap_softc* %206)
  %208 = load i32, i32* @IFF_MULTICAST, align 4
  %209 = or i32 147, %208
  %210 = xor i32 %209, -1
  %211 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %212 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %211)
  %213 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, %210
  store i32 %215, i32* %213, align 4
  %216 = load i32*, i32** %9, align 8
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %219 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %218)
  %220 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %217
  store i32 %222, i32* %220, align 4
  %223 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %224 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %223)
  br label %227

225:                                              ; preds = %199
  %226 = load i32, i32* @EINVAL, align 4
  store i32 %226, i32* %6, align 4
  br label %439

227:                                              ; preds = %205
  store i32 0, i32* %6, align 4
  br label %439

228:                                              ; preds = %117
  %229 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %230 = call i32 @TUN_LOCK(%struct.tuntap_softc* %229)
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %237 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 4
  %238 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %239 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %238)
  store i32 0, i32* %6, align 4
  br label %439

240:                                              ; preds = %117
  br label %241

241:                                              ; preds = %240, %116
  %242 = load i32, i32* %8, align 4
  switch i32 %242, label %436 [
    i32 135, label %243
    i32 132, label %255
    i32 136, label %319
    i32 134, label %344
    i32 138, label %347
    i32 149, label %350
    i32 151, label %351
    i32 148, label %373
    i32 147, label %412
    i32 150, label %418
    i32 139, label %423
    i32 140, label %430
  ]

243:                                              ; preds = %241
  %244 = load i32*, i32** %9, align 8
  %245 = bitcast i32* %244 to %struct.ifreq*
  store %struct.ifreq* %245, %struct.ifreq** %13, align 8
  %246 = load %struct.ifreq*, %struct.ifreq** %13, align 8
  %247 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %250 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %249)
  %251 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @IFNAMSIZ, align 4
  %254 = call i32 @strlcpy(i32 %248, i32 %252, i32 %253)
  store i32 0, i32* %6, align 4
  br label %439

255:                                              ; preds = %241
  %256 = load i32*, i32** %9, align 8
  %257 = bitcast i32* %256 to %struct.tuninfo*
  store %struct.tuninfo* %257, %struct.tuninfo** %16, align 8
  %258 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %259 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %258)
  %260 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.tuninfo*, %struct.tuninfo** %16, align 8
  %263 = getelementptr inbounds %struct.tuninfo, %struct.tuninfo* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %261, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %255
  %267 = load i32, i32* @EPROTOTYPE, align 4
  store i32 %267, i32* %6, align 4
  br label %439

268:                                              ; preds = %255
  %269 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %270 = call i32 @TUN_LOCK(%struct.tuntap_softc* %269)
  %271 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %272 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %271)
  %273 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.tuninfo*, %struct.tuninfo** %16, align 8
  %276 = getelementptr inbounds %struct.tuninfo, %struct.tuninfo* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %274, %277
  br i1 %278, label %279, label %310

279:                                              ; preds = %268
  %280 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %12, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %283 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %282)
  %284 = call i32 @if_name(%struct.ifnet* %283)
  %285 = load i32, i32* @IFNAMSIZ, align 4
  %286 = call i32 @strlcpy(i32 %281, i32 %284, i32 %285)
  %287 = load %struct.tuninfo*, %struct.tuninfo** %16, align 8
  %288 = getelementptr inbounds %struct.tuninfo, %struct.tuninfo* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %12, i32 0, i32 0
  store i32 %289, i32* %290, align 4
  %291 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %292 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %291)
  %293 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @CURVNET_SET(i32 %294)
  %296 = load i32, i32* @SIOCSIFMTU, align 4
  %297 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %298 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %297)
  %299 = bitcast %struct.ifreq* %12 to i32*
  %300 = load %struct.thread*, %struct.thread** %11, align 8
  %301 = call i32 @ifhwioctl(i32 %296, %struct.ifnet* %298, i32* %299, %struct.thread* %300)
  store i32 %301, i32* %17, align 4
  %302 = call i32 (...) @CURVNET_RESTORE()
  %303 = load i32, i32* %17, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %279
  %306 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %307 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %306)
  %308 = load i32, i32* %17, align 4
  store i32 %308, i32* %6, align 4
  br label %439

309:                                              ; preds = %279
  br label %310

310:                                              ; preds = %309, %268
  %311 = load %struct.tuninfo*, %struct.tuninfo** %16, align 8
  %312 = getelementptr inbounds %struct.tuninfo, %struct.tuninfo* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %315 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %314)
  %316 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %315, i32 0, i32 2
  store i32 %313, i32* %316, align 4
  %317 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %318 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %317)
  br label %438

319:                                              ; preds = %241
  %320 = load i32*, i32** %9, align 8
  %321 = bitcast i32* %320 to %struct.tuninfo*
  store %struct.tuninfo* %321, %struct.tuninfo** %16, align 8
  %322 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %323 = call i32 @TUN_LOCK(%struct.tuntap_softc* %322)
  %324 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %325 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %324)
  %326 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.tuninfo*, %struct.tuninfo** %16, align 8
  %329 = getelementptr inbounds %struct.tuninfo, %struct.tuninfo* %328, i32 0, i32 2
  store i32 %327, i32* %329, align 4
  %330 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %331 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %330)
  %332 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.tuninfo*, %struct.tuninfo** %16, align 8
  %335 = getelementptr inbounds %struct.tuninfo, %struct.tuninfo* %334, i32 0, i32 1
  store i32 %333, i32* %335, align 4
  %336 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %337 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %336)
  %338 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.tuninfo*, %struct.tuninfo** %16, align 8
  %341 = getelementptr inbounds %struct.tuninfo, %struct.tuninfo* %340, i32 0, i32 0
  store i32 %339, i32* %341, align 4
  %342 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %343 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %342)
  br label %438

344:                                              ; preds = %241
  %345 = load i32*, i32** %9, align 8
  %346 = load i32, i32* %345, align 4
  store i32 %346, i32* @tundebug, align 4
  br label %438

347:                                              ; preds = %241
  %348 = load i32, i32* @tundebug, align 4
  %349 = load i32*, i32** %9, align 8
  store i32 %348, i32* %349, align 4
  br label %438

350:                                              ; preds = %241
  br label %438

351:                                              ; preds = %241
  %352 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %353 = call i32 @TUN_LOCK(%struct.tuntap_softc* %352)
  %354 = load i32*, i32** %9, align 8
  %355 = load i32, i32* %354, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %351
  %358 = load i32, i32* @TUN_ASYNC, align 4
  %359 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %360 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = or i32 %361, %358
  store i32 %362, i32* %360, align 4
  br label %370

363:                                              ; preds = %351
  %364 = load i32, i32* @TUN_ASYNC, align 4
  %365 = xor i32 %364, -1
  %366 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %367 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = and i32 %368, %365
  store i32 %369, i32* %367, align 4
  br label %370

370:                                              ; preds = %363, %357
  %371 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %372 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %371)
  br label %438

373:                                              ; preds = %241
  %374 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %375 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %374)
  %376 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %375, i32 0, i32 1
  %377 = call i32 @IFQ_IS_EMPTY(i32* %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %409, label %379

379:                                              ; preds = %373
  %380 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %381 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %380)
  %382 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %381, i32 0, i32 1
  %383 = call i32 @IFQ_LOCK(i32* %382)
  %384 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %385 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %384)
  %386 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %385, i32 0, i32 1
  %387 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %388 = call i32 @IFQ_POLL_NOLOCK(i32* %386, %struct.mbuf* %387)
  %389 = load i32*, i32** %9, align 8
  store i32 0, i32* %389, align 4
  br label %390

390:                                              ; preds = %400, %379
  %391 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %392 = icmp ne %struct.mbuf* %391, null
  br i1 %392, label %393, label %404

393:                                              ; preds = %390
  %394 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %395 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32*, i32** %9, align 8
  %398 = load i32, i32* %397, align 4
  %399 = add nsw i32 %398, %396
  store i32 %399, i32* %397, align 4
  br label %400

400:                                              ; preds = %393
  %401 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %402 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %401, i32 0, i32 1
  %403 = load %struct.mbuf*, %struct.mbuf** %402, align 8
  store %struct.mbuf* %403, %struct.mbuf** %21, align 8
  br label %390

404:                                              ; preds = %390
  %405 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %406 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %405)
  %407 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %406, i32 0, i32 1
  %408 = call i32 @IFQ_UNLOCK(i32* %407)
  br label %411

409:                                              ; preds = %373
  %410 = load i32*, i32** %9, align 8
  store i32 0, i32* %410, align 4
  br label %411

411:                                              ; preds = %409, %404
  br label %438

412:                                              ; preds = %241
  %413 = load i32*, i32** %9, align 8
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %416 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %415, i32 0, i32 2
  %417 = call i32 @fsetown(i32 %414, i32* %416)
  store i32 %417, i32* %6, align 4
  br label %439

418:                                              ; preds = %241
  %419 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %420 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %419, i32 0, i32 2
  %421 = call i32 @fgetown(i32* %420)
  %422 = load i32*, i32** %9, align 8
  store i32 %421, i32* %422, align 4
  store i32 0, i32* %6, align 4
  br label %439

423:                                              ; preds = %241
  %424 = load i32*, i32** %9, align 8
  %425 = load i32, i32* %424, align 4
  %426 = sub nsw i32 0, %425
  %427 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %428 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %427, i32 0, i32 2
  %429 = call i32 @fsetown(i32 %426, i32* %428)
  store i32 %429, i32* %6, align 4
  br label %439

430:                                              ; preds = %241
  %431 = load %struct.tuntap_softc*, %struct.tuntap_softc** %14, align 8
  %432 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %431, i32 0, i32 2
  %433 = call i32 @fgetown(i32* %432)
  %434 = sub nsw i32 0, %433
  %435 = load i32*, i32** %9, align 8
  store i32 %434, i32* %435, align 4
  store i32 0, i32* %6, align 4
  br label %439

436:                                              ; preds = %241
  %437 = load i32, i32* @ENOTTY, align 4
  store i32 %437, i32* %6, align 4
  br label %439

438:                                              ; preds = %411, %370, %350, %347, %344, %319, %310
  store i32 0, i32* %6, align 4
  br label %439

439:                                              ; preds = %438, %436, %430, %423, %418, %412, %305, %266, %243, %228, %227, %225, %197, %175, %172, %144, %107, %99, %97, %74, %64, %38
  %440 = load i32, i32* %6, align 4
  ret i32 %440
}

declare dso_local %struct.ifnet* @TUN2IFP(%struct.tuntap_softc*) #1

declare dso_local i32 @TUN_LOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @TUN_UNLOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @tun_vnethdr_set(%struct.ifnet*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @ifhwioctl(i32, %struct.ifnet*, i32*, %struct.thread*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i32 @IFQ_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_LOCK(i32*) #1

declare dso_local i32 @IFQ_POLL_NOLOCK(i32*, %struct.mbuf*) #1

declare dso_local i32 @IFQ_UNLOCK(i32*) #1

declare dso_local i32 @fsetown(i32, i32*) #1

declare dso_local i32 @fgetown(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
