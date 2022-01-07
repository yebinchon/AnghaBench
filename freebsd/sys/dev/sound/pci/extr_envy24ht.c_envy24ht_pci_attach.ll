; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i64, i64, i32, i64, i32, %struct.TYPE_4__*, i32*, i32*, i64, i64, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32)* }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_ENVY24HT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot allocate softc\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"snd_envy24ht softc\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"unable to allocate system resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unable to initialize the card\0A\00", align 1
@envy24htmixer_class = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@envy24htchan_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"at io 0x%jx:%jd,0x%jx:%jd irq %jd\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @envy24ht_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24ht_pci_attach(i32 %0) #0 {
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
  %14 = load i32, i32* @M_ENVY24HT, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = call %struct.sc_info* @malloc(i32 120, i32 %14, i32 %15)
  store %struct.sc_info* %16, %struct.sc_info** %4, align 8
  %17 = icmp eq %struct.sc_info* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %283

22:                                               ; preds = %1
  %23 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %24 = call i32 @bzero(%struct.sc_info* %23, i32 120)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_get_nameunit(i32 %25)
  %27 = call i64 @snd_mtxcreate(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %29 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %32 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %31, i32 0, i32 15
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @pci_enable_busmaster(i32 %33)
  %35 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %36 = call i32 @envy24ht_alloc_resource(%struct.sc_info* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %131

42:                                               ; preds = %22
  %43 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %44 = call i32 @envy24ht_init(%struct.sc_info* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %131

50:                                               ; preds = %42
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %53 = call i32 @mixer_init(i32 %51, i32* @envy24htmixer_class, %struct.sc_info* %52)
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %56 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %57 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 2, %58
  %60 = call i32 @pcm_register(i32 %54, %struct.sc_info* %55, i32 1, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %131

64:                                               ; preds = %50
  %65 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %66 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %65, i32 0, i32 14
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @PCMDIR_PLAY, align 4
  %69 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %70 = call i32 @pcm_addchan(i32 %67, i32 %68, i32* @envy24htchan_class, %struct.sc_info* %69)
  %71 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %72 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %71, i32 0, i32 14
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %91, %64
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %78 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 2, %79
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @PCMDIR_REC, align 4
  %85 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %86 = call i32 @pcm_addchan(i32 %83, i32 %84, i32* @envy24htchan_class, %struct.sc_info* %85)
  %87 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %88 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %87, i32 0, i32 14
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %75

94:                                               ; preds = %75
  %95 = load i32, i32* @SND_STATUSLEN, align 4
  %96 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %97 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @rman_get_start(i64 %98)
  %100 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %101 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @rman_get_end(i64 %102)
  %104 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %105 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @rman_get_start(i64 %106)
  %108 = sub nsw i64 %103, %107
  %109 = add nsw i64 %108, 1
  %110 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %111 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @rman_get_start(i64 %112)
  %114 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %115 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @rman_get_end(i64 %116)
  %118 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %119 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @rman_get_start(i64 %120)
  %122 = sub nsw i64 %117, %121
  %123 = add nsw i64 %122, 1
  %124 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %125 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %124, i32 0, i32 11
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @rman_get_start(i64 %126)
  %128 = call i32 @snprintf(i8* %13, i32 %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %99, i64 %109, i64 %113, i64 %123, i64 %127)
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @pcm_setstatus(i32 %129, i8* %13)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %283

131:                                              ; preds = %63, %47, %39
  %132 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %133 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %132, i32 0, i32 13
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = load i32, i32* %3, align 4
  %138 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %139 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %138, i32 0, i32 11
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %142 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %141, i32 0, i32 13
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @bus_teardown_intr(i32 %137, i64 %140, i64 %143)
  br label %145

145:                                              ; preds = %136, %131
  %146 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %147 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %146, i32 0, i32 11
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* @SYS_RES_IRQ, align 4
  %153 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %154 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %153, i32 0, i32 12
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %157 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %156, i32 0, i32 11
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @bus_release_resource(i32 %151, i32 %152, i32 %155, i64 %158)
  br label %160

160:                                              ; preds = %150, %145
  %161 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %162 = call i32 @envy24ht_dmafree(%struct.sc_info* %161)
  %163 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %164 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %163, i32 0, i32 10
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %160
  %168 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %169 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %168, i32 0, i32 10
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @bus_dma_tag_destroy(i64 %170)
  br label %172

172:                                              ; preds = %167, %160
  %173 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %174 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %173, i32 0, i32 7
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32 (i32)*, i32 (i32)** %178, align 8
  %180 = icmp ne i32 (i32)* %179, null
  br i1 %180, label %181, label %234

181:                                              ; preds = %172
  store i32 0, i32* %8, align 4
  br label %182

182:                                              ; preds = %204, %181
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %185 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %207

188:                                              ; preds = %182
  %189 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %190 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %189, i32 0, i32 7
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32 (i32)*, i32 (i32)** %194, align 8
  %196 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %197 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %196, i32 0, i32 9
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 %195(i32 %202)
  br label %204

204:                                              ; preds = %188
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  br label %182

207:                                              ; preds = %182
  store i32 0, i32* %8, align 4
  br label %208

208:                                              ; preds = %230, %207
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %211 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %233

214:                                              ; preds = %208
  %215 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %216 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %215, i32 0, i32 7
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i32 (i32)*, i32 (i32)** %220, align 8
  %222 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %223 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %222, i32 0, i32 8
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 %221(i32 %228)
  br label %230

230:                                              ; preds = %214
  %231 = load i32, i32* %8, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %8, align 4
  br label %208

233:                                              ; preds = %208
  br label %234

234:                                              ; preds = %233, %172
  %235 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %236 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %235, i32 0, i32 7
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %236, align 8
  %238 = call i32 @envy24ht_cfgfree(%struct.TYPE_4__* %237)
  %239 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %240 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %253

243:                                              ; preds = %234
  %244 = load i32, i32* %3, align 4
  %245 = load i32, i32* @SYS_RES_IOPORT, align 4
  %246 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %247 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %250 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %249, i32 0, i32 5
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @bus_release_resource(i32 %244, i32 %245, i32 %248, i64 %251)
  br label %253

253:                                              ; preds = %243, %234
  %254 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %255 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %268

258:                                              ; preds = %253
  %259 = load i32, i32* %3, align 4
  %260 = load i32, i32* @SYS_RES_IOPORT, align 4
  %261 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %262 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %265 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = call i32 @bus_release_resource(i32 %259, i32 %260, i32 %263, i64 %266)
  br label %268

268:                                              ; preds = %258, %253
  %269 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %270 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %268
  %274 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %275 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @snd_mtxfree(i64 %276)
  br label %278

278:                                              ; preds = %273, %268
  %279 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %280 = load i32, i32* @M_ENVY24HT, align 4
  %281 = call i32 @free(%struct.sc_info* %279, i32 %280)
  %282 = load i32, i32* %7, align 4
  store i32 %282, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %283

283:                                              ; preds = %278, %94, %18
  %284 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %284)
  %285 = load i32, i32* %2, align 4
  ret i32 %285
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sc_info* @malloc(i32, i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @bzero(%struct.sc_info*, i32) #2

declare dso_local i64 @snd_mtxcreate(i32, i8*) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i32 @envy24ht_alloc_resource(%struct.sc_info*) #2

declare dso_local i32 @envy24ht_init(%struct.sc_info*) #2

declare dso_local i32 @mixer_init(i32, i32*, %struct.sc_info*) #2

declare dso_local i32 @pcm_register(i32, %struct.sc_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.sc_info*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i64, i64, i64, i64) #2

declare dso_local i64 @rman_get_start(i64) #2

declare dso_local i64 @rman_get_end(i64) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #2

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #2

declare dso_local i32 @envy24ht_dmafree(%struct.sc_info*) #2

declare dso_local i32 @bus_dma_tag_destroy(i64) #2

declare dso_local i32 @envy24ht_cfgfree(%struct.TYPE_4__*) #2

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
