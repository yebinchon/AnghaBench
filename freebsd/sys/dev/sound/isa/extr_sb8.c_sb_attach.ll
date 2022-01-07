; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sb_info = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SB_DEFAULT_BUFSZ = common dso_local global i32 0, align 4
@sbmix_mixer_class = common dso_local global i32 0, align 4
@sbpromix_mixer_class = common dso_local global i32 0, align 4
@sb_intr = common dso_local global i32 0, align 4
@SD_F_SIMPLEX = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_24BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"at io 0x%jx irq %jd drq %jd bufsz %u %s\00", align 1
@snd_sb8 = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@sbchan_class = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sb_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @SND_STATUSLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @M_DEVBUF, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.sb_info* @malloc(i32 48, i32 %13, i32 %16)
  store %struct.sb_info* %17, %struct.sb_info** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  %20 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %21 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_get_parent(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @BUS_READ_IVAR(i32 %23, i32 %24, i32 1, i64* %7)
  %26 = load i64, i64* %7, align 8
  %27 = and i64 %26, 65535
  %28 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %29 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = and i64 %30, 4294901760
  %32 = lshr i64 %31, 16
  %33 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %34 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @SB_DEFAULT_BUFSZ, align 4
  %37 = call i32 @pcm_getbuffersize(i32 %35, i32 4096, i32 %36, i32 65536)
  %38 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %39 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @sb_alloc_resources(%struct.sb_info* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  br label %132

45:                                               ; preds = %1
  %46 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %47 = call i64 @sb_reset_dsp(%struct.sb_info* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %132

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %53 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %54, 768
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32* @sbmix_mixer_class, i32* @sbpromix_mixer_class
  %58 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %59 = call i64 @mixer_init(i32 %51, i32* %57, %struct.sb_info* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %132

62:                                               ; preds = %50
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %65 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @sb_intr, align 4
  %68 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %69 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %70 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %69, i32 0, i32 7
  %71 = call i64 @snd_setup_intr(i32 %63, i32 %66, i32 0, i32 %67, %struct.sb_info* %68, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %132

74:                                               ; preds = %62
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @pcm_getflags(i32 %76)
  %78 = load i32, i32* @SD_F_SIMPLEX, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @pcm_setflags(i32 %75, i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @bus_get_dma_tag(i32 %81)
  %83 = load i32, i32* @BUS_SPACE_MAXADDR_24BIT, align 4
  %84 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %85 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %86 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @busdma_lock_mutex, align 4
  %89 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %90 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %89, i32 0, i32 6
  %91 = call i64 @bus_dma_tag_create(i32 %82, i32 2, i32 0, i32 %83, i32 %84, i32* null, i32* null, i32 %87, i32 1, i32 262143, i32 0, i32 %88, i32* @Giant, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %74
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @device_printf(i32 %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %132

96:                                               ; preds = %74
  %97 = load i32, i32* @SND_STATUSLEN, align 4
  %98 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %99 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @rman_get_start(i32 %100)
  %102 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %103 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @rman_get_start(i32 %104)
  %106 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %107 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @rman_get_start(i32 %108)
  %110 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %111 = getelementptr inbounds %struct.sb_info, %struct.sb_info* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @snd_sb8, align 4
  %114 = call i32 @PCM_KLDSTRING(i32 %113)
  %115 = call i32 @snprintf(i8* %12, i32 %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %105, i32 %109, i32 %112, i32 %114)
  %116 = load i32, i32* %3, align 4
  %117 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %118 = call i64 @pcm_register(i32 %116, %struct.sb_info* %117, i32 1, i32 1)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %96
  br label %132

121:                                              ; preds = %96
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @PCMDIR_REC, align 4
  %124 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %125 = call i32 @pcm_addchan(i32 %122, i32 %123, i32* @sbchan_class, %struct.sb_info* %124)
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @PCMDIR_PLAY, align 4
  %128 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %129 = call i32 @pcm_addchan(i32 %126, i32 %127, i32* @sbchan_class, %struct.sb_info* %128)
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @pcm_setstatus(i32 %130, i8* %12)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %137

132:                                              ; preds = %120, %93, %73, %61, %49, %44
  %133 = load %struct.sb_info*, %struct.sb_info** %4, align 8
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @sb_release_resources(%struct.sb_info* %133, i32 %134)
  %136 = load i32, i32* @ENXIO, align 4
  store i32 %136, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %137

137:                                              ; preds = %132, %121
  %138 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sb_info* @malloc(i32, i32, i32) #2

declare dso_local i32 @device_get_parent(i32) #2

declare dso_local i32 @BUS_READ_IVAR(i32, i32, i32, i64*) #2

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #2

declare dso_local i64 @sb_alloc_resources(%struct.sb_info*, i32) #2

declare dso_local i64 @sb_reset_dsp(%struct.sb_info*) #2

declare dso_local i64 @mixer_init(i32, i32*, %struct.sb_info*) #2

declare dso_local i64 @snd_setup_intr(i32, i32, i32, i32, %struct.sb_info*, i32*) #2

declare dso_local i32 @pcm_setflags(i32, i32) #2

declare dso_local i32 @pcm_getflags(i32) #2

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(i32) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i64 @pcm_register(i32, %struct.sb_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.sb_info*) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @sb_release_resources(%struct.sb_info*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
