; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i64, i64, i32, i64, i32, i64, i32, i64, i32, %struct.TYPE_4__*, i32*, i32*, i64, i64, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32)* }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_ENVY24 = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot allocate softc\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"snd_envy24 softc\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"unable to allocate system resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unable to initialize the card\0A\00", align 1
@envy24mixer_class = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@envy24chan_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"at io 0x%jx:%jd,0x%jx:%jd,0x%jx:%jd,0x%jx:%jd irq %jd\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @envy24_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @SND_STATUSLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @M_ENVY24, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = call %struct.sc_info* @malloc(i32 152, i32 %14, i32 %15)
  store %struct.sc_info* %16, %struct.sc_info** %4, align 8
  %17 = icmp eq %struct.sc_info* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %349

22:                                               ; preds = %1
  %23 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %24 = call i32 @bzero(%struct.sc_info* %23, i32 152)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_get_nameunit(i32 %25)
  %27 = call i64 @snd_mtxcreate(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %29 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %32 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %31, i32 0, i32 19
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @pci_enable_busmaster(i32 %33)
  %35 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %36 = call i32 @envy24_alloc_resource(%struct.sc_info* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %167

42:                                               ; preds = %22
  %43 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %44 = call i32 @envy24_init(%struct.sc_info* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %167

50:                                               ; preds = %42
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %53 = call i32 @mixer_init(i32 %51, i32* @envy24mixer_class, %struct.sc_info* %52)
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %56 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %57 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 2, %58
  %60 = call i32 @pcm_register(i32 %54, %struct.sc_info* %55, i32 5, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %167

64:                                               ; preds = %50
  %65 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %66 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %65, i32 0, i32 18
  store i64 0, i64* %66, align 8
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %79, %64
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 5
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @PCMDIR_PLAY, align 4
  %73 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %74 = call i32 @pcm_addchan(i32 %71, i32 %72, i32* @envy24chan_class, %struct.sc_info* %73)
  %75 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %76 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %75, i32 0, i32 18
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %67

82:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %99, %82
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %86 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 2, %87
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %83
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @PCMDIR_REC, align 4
  %93 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %94 = call i32 @pcm_addchan(i32 %91, i32 %92, i32* @envy24chan_class, %struct.sc_info* %93)
  %95 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %96 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %95, i32 0, i32 18
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %83

102:                                              ; preds = %83
  %103 = load i32, i32* @SND_STATUSLEN, align 4
  %104 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %105 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %104, i32 0, i32 9
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @rman_get_start(i64 %106)
  %108 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %109 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %108, i32 0, i32 9
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @rman_get_end(i64 %110)
  %112 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %113 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %112, i32 0, i32 9
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @rman_get_start(i64 %114)
  %116 = sub nsw i64 %111, %115
  %117 = add nsw i64 %116, 1
  %118 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %119 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @rman_get_start(i64 %120)
  %122 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %123 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @rman_get_end(i64 %124)
  %126 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %127 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %126, i32 0, i32 7
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @rman_get_start(i64 %128)
  %130 = sub nsw i64 %125, %129
  %131 = add nsw i64 %130, 1
  %132 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %133 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @rman_get_start(i64 %134)
  %136 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %137 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @rman_get_end(i64 %138)
  %140 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %141 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @rman_get_start(i64 %142)
  %144 = sub nsw i64 %139, %143
  %145 = add nsw i64 %144, 1
  %146 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %147 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = call i64 @rman_get_start(i64 %148)
  %150 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %151 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @rman_get_end(i64 %152)
  %154 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %155 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @rman_get_start(i64 %156)
  %158 = sub nsw i64 %153, %157
  %159 = add nsw i64 %158, 1
  %160 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %161 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %160, i32 0, i32 15
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @rman_get_start(i64 %162)
  %164 = call i32 @snprintf(i8* %13, i32 %103, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i64 %107, i64 %117, i64 %121, i64 %131, i64 %135, i64 %145, i64 %149, i64 %159, i64 %163)
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @pcm_setstatus(i32 %165, i8* %13)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %349

167:                                              ; preds = %63, %47, %39
  %168 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %169 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %168, i32 0, i32 17
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load i32, i32* %3, align 4
  %174 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %175 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %174, i32 0, i32 15
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %178 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %177, i32 0, i32 17
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @bus_teardown_intr(i32 %173, i64 %176, i64 %179)
  br label %181

181:                                              ; preds = %172, %167
  %182 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %183 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %182, i32 0, i32 15
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %181
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* @SYS_RES_IRQ, align 4
  %189 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %190 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %189, i32 0, i32 16
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %193 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %192, i32 0, i32 15
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @bus_release_resource(i32 %187, i32 %188, i32 %191, i64 %194)
  br label %196

196:                                              ; preds = %186, %181
  %197 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %198 = call i32 @envy24_dmafree(%struct.sc_info* %197)
  %199 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %200 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %199, i32 0, i32 14
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %196
  %204 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %205 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %204, i32 0, i32 14
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @bus_dma_tag_destroy(i64 %206)
  br label %208

208:                                              ; preds = %203, %196
  %209 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %210 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %209, i32 0, i32 11
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32 (i32)*, i32 (i32)** %214, align 8
  %216 = icmp ne i32 (i32)* %215, null
  br i1 %216, label %217, label %270

217:                                              ; preds = %208
  store i32 0, i32* %8, align 4
  br label %218

218:                                              ; preds = %240, %217
  %219 = load i32, i32* %8, align 4
  %220 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %221 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %243

224:                                              ; preds = %218
  %225 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %226 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %225, i32 0, i32 11
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  %231 = load i32 (i32)*, i32 (i32)** %230, align 8
  %232 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %233 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %232, i32 0, i32 13
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = call i32 %231(i32 %238)
  br label %240

240:                                              ; preds = %224
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %8, align 4
  br label %218

243:                                              ; preds = %218
  store i32 0, i32* %8, align 4
  br label %244

244:                                              ; preds = %266, %243
  %245 = load i32, i32* %8, align 4
  %246 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %247 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp slt i32 %245, %248
  br i1 %249, label %250, label %269

250:                                              ; preds = %244
  %251 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %252 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %251, i32 0, i32 11
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  %257 = load i32 (i32)*, i32 (i32)** %256, align 8
  %258 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %259 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %258, i32 0, i32 12
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = call i32 %257(i32 %264)
  br label %266

266:                                              ; preds = %250
  %267 = load i32, i32* %8, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %8, align 4
  br label %244

269:                                              ; preds = %244
  br label %270

270:                                              ; preds = %269, %208
  %271 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %272 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %271, i32 0, i32 11
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %272, align 8
  %274 = call i32 @envy24_cfgfree(%struct.TYPE_4__* %273)
  %275 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %276 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %275, i32 0, i32 9
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %289

279:                                              ; preds = %270
  %280 = load i32, i32* %3, align 4
  %281 = load i32, i32* @SYS_RES_IOPORT, align 4
  %282 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %283 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %282, i32 0, i32 10
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %286 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %285, i32 0, i32 9
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @bus_release_resource(i32 %280, i32 %281, i32 %284, i64 %287)
  br label %289

289:                                              ; preds = %279, %270
  %290 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %291 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %290, i32 0, i32 7
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %304

294:                                              ; preds = %289
  %295 = load i32, i32* %3, align 4
  %296 = load i32, i32* @SYS_RES_IOPORT, align 4
  %297 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %298 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %297, i32 0, i32 8
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %301 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %300, i32 0, i32 7
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @bus_release_resource(i32 %295, i32 %296, i32 %299, i64 %302)
  br label %304

304:                                              ; preds = %294, %289
  %305 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %306 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %305, i32 0, i32 5
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %304
  %310 = load i32, i32* %3, align 4
  %311 = load i32, i32* @SYS_RES_IOPORT, align 4
  %312 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %313 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %316 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %315, i32 0, i32 5
  %317 = load i64, i64* %316, align 8
  %318 = call i32 @bus_release_resource(i32 %310, i32 %311, i32 %314, i64 %317)
  br label %319

319:                                              ; preds = %309, %304
  %320 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %321 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %334

324:                                              ; preds = %319
  %325 = load i32, i32* %3, align 4
  %326 = load i32, i32* @SYS_RES_IOPORT, align 4
  %327 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %328 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %331 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %330, i32 0, i32 3
  %332 = load i64, i64* %331, align 8
  %333 = call i32 @bus_release_resource(i32 %325, i32 %326, i32 %329, i64 %332)
  br label %334

334:                                              ; preds = %324, %319
  %335 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %336 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %335, i32 0, i32 2
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %334
  %340 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %341 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @snd_mtxfree(i64 %342)
  br label %344

344:                                              ; preds = %339, %334
  %345 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %346 = load i32, i32* @M_ENVY24, align 4
  %347 = call i32 @free(%struct.sc_info* %345, i32 %346)
  %348 = load i32, i32* %7, align 4
  store i32 %348, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %349

349:                                              ; preds = %344, %102, %18
  %350 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %350)
  %351 = load i32, i32* %2, align 4
  ret i32 %351
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sc_info* @malloc(i32, i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @bzero(%struct.sc_info*, i32) #2

declare dso_local i64 @snd_mtxcreate(i32, i8*) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i32 @envy24_alloc_resource(%struct.sc_info*) #2

declare dso_local i32 @envy24_init(%struct.sc_info*) #2

declare dso_local i32 @mixer_init(i32, i32*, %struct.sc_info*) #2

declare dso_local i32 @pcm_register(i32, %struct.sc_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.sc_info*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @rman_get_start(i64) #2

declare dso_local i64 @rman_get_end(i64) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #2

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #2

declare dso_local i32 @envy24_dmafree(%struct.sc_info*) #2

declare dso_local i32 @bus_dma_tag_destroy(i64) #2

declare dso_local i32 @envy24_cfgfree(%struct.TYPE_4__*) #2

declare dso_local i32 @snd_mtxfree(i64) #2

declare dso_local i32 @free(%struct.sc_info*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
