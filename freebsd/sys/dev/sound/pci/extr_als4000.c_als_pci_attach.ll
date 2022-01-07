; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32, i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"snd_als4000 softc\00", align 1
@PCI_POWERSTATE_D0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"chip is in D%d power mode -- setting to D0\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to allocate resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to initialize hardware\0A\00", align 1
@als_mixer_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to initialize mixer\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to register pcm entries\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@alspchan_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@alsrchan_class = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"at io 0x%jx irq %jd %s\00", align 1
@snd_als4000 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @als_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @als_pci_attach(i32 %0) #0 {
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
  %16 = call %struct.sc_info* @malloc(i32 16, i32 %12, i32 %15)
  store %struct.sc_info* %16, %struct.sc_info** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_nameunit(i32 %17)
  %19 = call i32 @snd_mtxcreate(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %21 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %24 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pci_enable_busmaster(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @pci_get_powerstate(i32 %27)
  %29 = load i64, i64* @PCI_POWERSTATE_D0, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @pci_get_powerstate(i32 %33)
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i64, i64* @PCI_POWERSTATE_D0, align 8
  %38 = call i32 @pci_set_powerstate(i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %31, %1
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %42 = call i64 @als_resource_grab(i32 %40, %struct.sc_info* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %93

47:                                               ; preds = %39
  %48 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %49 = call i64 @als_init(%struct.sc_info* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (i32, i8*, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %93

54:                                               ; preds = %47
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %57 = call i64 @mixer_init(i32 %55, i32* @als_mixer_class, %struct.sc_info* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %93

62:                                               ; preds = %54
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %65 = call i64 @pcm_register(i32 %63, %struct.sc_info* %64, i32 1, i32 1)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %3, align 4
  %69 = call i32 (i32, i8*, ...) @device_printf(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %93

70:                                               ; preds = %62
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @PCMDIR_PLAY, align 4
  %73 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %74 = call i32 @pcm_addchan(i32 %71, i32 %72, i32* @alspchan_class, %struct.sc_info* %73)
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @PCMDIR_REC, align 4
  %77 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %78 = call i32 @pcm_addchan(i32 %75, i32 %76, i32* @alsrchan_class, %struct.sc_info* %77)
  %79 = load i32, i32* @SND_STATUSLEN, align 4
  %80 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %81 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @rman_get_start(i32 %82)
  %84 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %85 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @rman_get_start(i32 %86)
  %88 = load i32, i32* @snd_als4000, align 4
  %89 = call i32 @PCM_KLDSTRING(i32 %88)
  %90 = call i32 @snprintf(i8* %11, i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %83, i32 %87, i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @pcm_setstatus(i32 %91, i8* %11)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %101

93:                                               ; preds = %67, %59, %51, %44
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %96 = call i32 @als_resource_free(i32 %94, %struct.sc_info* %95)
  %97 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %98 = load i32, i32* @M_DEVBUF, align 4
  %99 = call i32 @free(%struct.sc_info* %97, i32 %98)
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %101

101:                                              ; preds = %93, %70
  %102 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sc_info* @malloc(i32, i32, i32) #2

declare dso_local i32 @snd_mtxcreate(i32, i8*) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i64 @pci_get_powerstate(i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @pci_set_powerstate(i32, i64) #2

declare dso_local i64 @als_resource_grab(i32, %struct.sc_info*) #2

declare dso_local i64 @als_init(%struct.sc_info*) #2

declare dso_local i64 @mixer_init(i32, i32*, %struct.sc_info*) #2

declare dso_local i64 @pcm_register(i32, %struct.sc_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.sc_info*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(i32) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @als_resource_free(i32, %struct.sc_info*) #2

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
