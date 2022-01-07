; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i64, i8*, i64, i8*, i64, i64, i64, i32, i32, i32, i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"snd_cmi softc\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"cmi_attach: Cannot allocate bus resource\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@cmi_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"cmi_attach: Unable to map interrupt\0A\00", align 1
@CMI_DEFAULT_BUFSZ = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"cmi_attach: Unable to create dma tag\0A\00", align 1
@cmi_mixer_class = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@cmichan_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"at io 0x%jx irq %jd %s\00", align 1
@snd_cmi = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"cmi_attach: succeeded\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cmi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @SND_STATUSLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* @M_DEVBUF, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.sc_info* @malloc(i32 72, i32 %12, i32 %15)
  store %struct.sc_info* %16, %struct.sc_info** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_nameunit(i32 %17)
  %19 = call i64 @snd_mtxcreate(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %21 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @pci_enable_busmaster(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %26 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %25, i32 0, i32 10
  store i32 %24, i32* %26, align 4
  %27 = call i64 @PCIR_BAR(i32 0)
  %28 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %29 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_IOPORT, align 4
  %32 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %33 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %32, i32 0, i32 2
  %34 = load i32, i32* @RF_ACTIVE, align 4
  %35 = call i8* @bus_alloc_resource_any(i32 %30, i32 %31, i64* %33, i32 %34)
  %36 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %37 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %39 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %1
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %155

45:                                               ; preds = %1
  %46 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %47 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @rman_get_bustag(i8* %48)
  %50 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %51 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 8
  %52 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @rman_get_bushandle(i8* %54)
  %56 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %57 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 4
  %58 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %59 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @SYS_RES_IRQ, align 4
  %62 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %63 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %62, i32 0, i32 4
  %64 = load i32, i32* @RF_ACTIVE, align 4
  %65 = load i32, i32* @RF_SHAREABLE, align 4
  %66 = or i32 %64, %65
  %67 = call i8* @bus_alloc_resource_any(i32 %60, i32 %61, i64* %63, i32 %66)
  %68 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %69 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %71 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %45
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %77 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* @INTR_MPSAFE, align 4
  %80 = load i32, i32* @cmi_intr, align 4
  %81 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %82 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %83 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %82, i32 0, i32 5
  %84 = call i64 @snd_setup_intr(i32 %75, i8* %78, i32 %79, i32 %80, %struct.sc_info* %81, i64* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %74, %45
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %155

89:                                               ; preds = %74
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @CMI_DEFAULT_BUFSZ, align 4
  %92 = call i32 @pcm_getbuffersize(i32 %90, i32 4096, i32 %91, i32 65536)
  %93 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %94 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @bus_get_dma_tag(i32 %95)
  %97 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %98 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %99 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %100 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %103 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %102, i32 0, i32 6
  %104 = call i64 @bus_dma_tag_create(i32 %96, i32 2, i32 0, i32 %97, i32 %98, i32* null, i32* null, i32 %101, i32 1, i32 262143, i32 0, i32* null, i32* null, i64* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %89
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @device_printf(i32 %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %155

109:                                              ; preds = %89
  %110 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %111 = call i32 @cmi_power(%struct.sc_info* %110, i32 0)
  %112 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %113 = call i64 @cmi_init(%struct.sc_info* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %155

116:                                              ; preds = %109
  %117 = load i32, i32* %3, align 4
  %118 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %119 = call i64 @mixer_init(i32 %117, i32* @cmi_mixer_class, %struct.sc_info* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %155

122:                                              ; preds = %116
  %123 = load i32, i32* %3, align 4
  %124 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %125 = call i64 @pcm_register(i32 %123, %struct.sc_info* %124, i32 1, i32 1)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %155

128:                                              ; preds = %122
  %129 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %130 = call i32 @cmi_initsys(%struct.sc_info* %129)
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @PCMDIR_PLAY, align 4
  %133 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %134 = call i32 @pcm_addchan(i32 %131, i32 %132, i32* @cmichan_class, %struct.sc_info* %133)
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* @PCMDIR_REC, align 4
  %137 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %138 = call i32 @pcm_addchan(i32 %135, i32 %136, i32* @cmichan_class, %struct.sc_info* %137)
  %139 = load i32, i32* @SND_STATUSLEN, align 4
  %140 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %141 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @rman_get_start(i8* %142)
  %144 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %145 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %144, i32 0, i32 3
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @rman_get_start(i8* %146)
  %148 = load i32, i32* @snd_cmi, align 4
  %149 = call i32 @PCM_KLDSTRING(i32 %148)
  %150 = call i32 @snprintf(i8* %11, i32 %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %143, i32 %147, i32 %149)
  %151 = load i32, i32* %3, align 4
  %152 = call i32 @pcm_setstatus(i32 %151, i8* %11)
  %153 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %154 = call i32 @DEB(i32 %153)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %228

155:                                              ; preds = %127, %121, %115, %106, %86, %42
  %156 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %157 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %162 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @bus_dma_tag_destroy(i64 %163)
  br label %165

165:                                              ; preds = %160, %155
  %166 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %167 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %165
  %171 = load i32, i32* %3, align 4
  %172 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %173 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %172, i32 0, i32 3
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %176 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @bus_teardown_intr(i32 %171, i8* %174, i64 %177)
  br label %179

179:                                              ; preds = %170, %165
  %180 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %181 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %180, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %194

184:                                              ; preds = %179
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* @SYS_RES_IRQ, align 4
  %187 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %188 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %191 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %190, i32 0, i32 3
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @bus_release_resource(i32 %185, i32 %186, i64 %189, i8* %192)
  br label %194

194:                                              ; preds = %184, %179
  %195 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %196 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %209

199:                                              ; preds = %194
  %200 = load i32, i32* %3, align 4
  %201 = load i32, i32* @SYS_RES_IOPORT, align 4
  %202 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %203 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %206 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @bus_release_resource(i32 %200, i32 %201, i64 %204, i8* %207)
  br label %209

209:                                              ; preds = %199, %194
  %210 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %211 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %216 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @snd_mtxfree(i64 %217)
  br label %219

219:                                              ; preds = %214, %209
  %220 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %221 = icmp ne %struct.sc_info* %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %224 = load i32, i32* @M_DEVBUF, align 4
  %225 = call i32 @free(%struct.sc_info* %223, i32 %224)
  br label %226

226:                                              ; preds = %222, %219
  %227 = load i32, i32* @ENXIO, align 4
  store i32 %227, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %228

228:                                              ; preds = %226, %128
  %229 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %229)
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sc_info* @malloc(i32, i32, i32) #2

declare dso_local i64 @snd_mtxcreate(i32, i8*) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i64 @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @rman_get_bustag(i8*) #2

declare dso_local i32 @rman_get_bushandle(i8*) #2

declare dso_local i64 @snd_setup_intr(i32, i8*, i32, i32, %struct.sc_info*, i64*) #2

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #2

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i64*) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i32 @cmi_power(%struct.sc_info*, i32) #2

declare dso_local i64 @cmi_init(%struct.sc_info*) #2

declare dso_local i64 @mixer_init(i32, i32*, %struct.sc_info*) #2

declare dso_local i64 @pcm_register(i32, %struct.sc_info*, i32, i32) #2

declare dso_local i32 @cmi_initsys(%struct.sc_info*) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.sc_info*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(i8*) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @DEB(i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @bus_dma_tag_destroy(i64) #2

declare dso_local i32 @bus_teardown_intr(i32, i8*, i64) #2

declare dso_local i32 @bus_release_resource(i32, i32, i64, i8*) #2

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
