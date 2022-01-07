; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nm_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nm_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i8*, i8*, i64, i8*, i8*, i8*, i8*, i32, i32 }
%struct.ac97_info = type { i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unable to map register space\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to initialize the card\0A\00", align 1
@nm_ac97 = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@nm_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"at memory 0x%jx, 0x%jx irq %jd %s\00", align 1
@snd_neomagic = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@nmchan_class = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nm_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nm_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca %struct.ac97_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ac97_info* null, %struct.ac97_info** %5, align 8
  %9 = load i32, i32* @SND_STATUSLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* @M_DEVBUF, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.sc_info* @malloc(i32 64, i32 %13, i32 %16)
  store %struct.sc_info* %17, %struct.sc_info** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 8
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @pci_get_devid(i32 %21)
  %23 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %24 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pci_enable_busmaster(i32 %25)
  %27 = call i8* @PCIR_BAR(i32 0)
  %28 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %29 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_MEMORY, align 4
  %32 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %33 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %32, i32 0, i32 6
  %34 = load i32, i32* @RF_ACTIVE, align 4
  %35 = call i8* @bus_alloc_resource_any(i32 %30, i32 %31, i8** %33, i32 %34)
  %36 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %37 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = call i8* @PCIR_BAR(i32 1)
  %39 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %40 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @SYS_RES_MEMORY, align 4
  %43 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %44 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %43, i32 0, i32 4
  %45 = load i32, i32* @RF_ACTIVE, align 4
  %46 = call i8* @bus_alloc_resource_any(i32 %41, i32 %42, i8** %44, i32 %45)
  %47 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %48 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %50 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %49, i32 0, i32 5
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %1
  %54 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %55 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53, %1
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %147

61:                                               ; preds = %53
  %62 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %63 = call i32 @nm_init(%struct.sc_info* %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %147

68:                                               ; preds = %61
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %71 = load i32, i32* @nm_ac97, align 4
  %72 = call %struct.ac97_info* @AC97_CREATE(i32 %69, %struct.sc_info* %70, i32 %71)
  store %struct.ac97_info* %72, %struct.ac97_info** %5, align 8
  %73 = load %struct.ac97_info*, %struct.ac97_info** %5, align 8
  %74 = icmp eq %struct.ac97_info* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %147

76:                                               ; preds = %68
  %77 = load i32, i32* %3, align 4
  %78 = call i32 (...) @ac97_getmixerclass()
  %79 = load %struct.ac97_info*, %struct.ac97_info** %5, align 8
  %80 = call i32 @mixer_init(i32 %77, i32 %78, %struct.ac97_info* %79)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %147

83:                                               ; preds = %76
  %84 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %85 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %84, i32 0, i32 1
  store i8* null, i8** %85, align 8
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @SYS_RES_IRQ, align 4
  %88 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %89 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %88, i32 0, i32 1
  %90 = load i32, i32* @RF_ACTIVE, align 4
  %91 = load i32, i32* @RF_SHAREABLE, align 4
  %92 = or i32 %90, %91
  %93 = call i8* @bus_alloc_resource_any(i32 %86, i32 %87, i8** %89, i32 %92)
  %94 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %95 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %97 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %83
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %103 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* @nm_intr, align 4
  %106 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %107 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %108 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %107, i32 0, i32 2
  %109 = call i64 @snd_setup_intr(i32 %101, i8* %104, i32 0, i32 %105, %struct.sc_info* %106, i64* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %100, %83
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %147

114:                                              ; preds = %100
  %115 = load i32, i32* @SND_STATUSLEN, align 4
  %116 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %117 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %116, i32 0, i32 5
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @rman_get_start(i8* %118)
  %120 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %121 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @rman_get_start(i8* %122)
  %124 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %125 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @rman_get_start(i8* %126)
  %128 = load i32, i32* @snd_neomagic, align 4
  %129 = call i32 @PCM_KLDSTRING(i32 %128)
  %130 = call i32 @snprintf(i8* %12, i32 %115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %119, i32 %123, i32 %127, i32 %129)
  %131 = load i32, i32* %3, align 4
  %132 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %133 = call i64 @pcm_register(i32 %131, %struct.sc_info* %132, i32 1, i32 1)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %114
  br label %147

136:                                              ; preds = %114
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @PCMDIR_REC, align 4
  %139 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %140 = call i32 @pcm_addchan(i32 %137, i32 %138, i32* @nmchan_class, %struct.sc_info* %139)
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* @PCMDIR_PLAY, align 4
  %143 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %144 = call i32 @pcm_addchan(i32 %141, i32 %142, i32* @nmchan_class, %struct.sc_info* %143)
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @pcm_setstatus(i32 %145, i8* %12)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %217

147:                                              ; preds = %135, %111, %82, %75, %65, %58
  %148 = load %struct.ac97_info*, %struct.ac97_info** %5, align 8
  %149 = icmp ne %struct.ac97_info* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.ac97_info*, %struct.ac97_info** %5, align 8
  %152 = call i32 @ac97_destroy(%struct.ac97_info* %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %155 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %154, i32 0, i32 5
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* @SYS_RES_MEMORY, align 4
  %161 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %162 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %161, i32 0, i32 6
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %165 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %164, i32 0, i32 5
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @bus_release_resource(i32 %159, i32 %160, i8* %163, i8* %166)
  br label %168

168:                                              ; preds = %158, %153
  %169 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %170 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %169, i32 0, i32 3
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %183

173:                                              ; preds = %168
  %174 = load i32, i32* %3, align 4
  %175 = load i32, i32* @SYS_RES_MEMORY, align 4
  %176 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %177 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %176, i32 0, i32 4
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %180 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %179, i32 0, i32 3
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @bus_release_resource(i32 %174, i32 %175, i8* %178, i8* %181)
  br label %183

183:                                              ; preds = %173, %168
  %184 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %185 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %183
  %189 = load i32, i32* %3, align 4
  %190 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %191 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %194 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @bus_teardown_intr(i32 %189, i8* %192, i64 %195)
  br label %197

197:                                              ; preds = %188, %183
  %198 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %199 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %212

202:                                              ; preds = %197
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* @SYS_RES_IRQ, align 4
  %205 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %206 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %209 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @bus_release_resource(i32 %203, i32 %204, i8* %207, i8* %210)
  br label %212

212:                                              ; preds = %202, %197
  %213 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %214 = load i32, i32* @M_DEVBUF, align 4
  %215 = call i32 @free(%struct.sc_info* %213, i32 %214)
  %216 = load i32, i32* @ENXIO, align 4
  store i32 %216, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %217

217:                                              ; preds = %212, %136
  %218 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %218)
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sc_info* @malloc(i32, i32, i32) #2

declare dso_local i32 @pci_get_devid(i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i8* @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i8**, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @nm_init(%struct.sc_info*) #2

declare dso_local %struct.ac97_info* @AC97_CREATE(i32, %struct.sc_info*, i32) #2

declare dso_local i32 @mixer_init(i32, i32, %struct.ac97_info*) #2

declare dso_local i32 @ac97_getmixerclass(...) #2

declare dso_local i64 @snd_setup_intr(i32, i8*, i32, i32, %struct.sc_info*, i64*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(i8*) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i64 @pcm_register(i32, %struct.sc_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.sc_info*) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @ac97_destroy(%struct.ac97_info*) #2

declare dso_local i32 @bus_release_resource(i32, i32, i8*, i8*) #2

declare dso_local i32 @bus_teardown_intr(i32, i8*, i64) #2

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
