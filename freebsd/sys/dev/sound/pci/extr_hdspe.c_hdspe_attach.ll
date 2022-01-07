; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe.c_hdspe_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe.c_hdspe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspe_channel = type { i32* }
%struct.sc_pcminfo = type { i32, %struct.sc_info*, %struct.hdspe_channel* }
%struct.sc_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"snd_hdspe softc\00", align 1
@AIO = common dso_local global i32 0, align 4
@chan_map_aio = common dso_local global %struct.hdspe_channel* null, align 8
@RAYDAT = common dso_local global i32 0, align 4
@chan_map_rd = common dso_local global %struct.hdspe_channel* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to allocate system resources.\0A\00", align 1
@HDSPE_MAX_CHANS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hdspe_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspe_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdspe_channel*, align 8
  %5 = alloca %struct.sc_pcminfo*, align 8
  %6 = alloca %struct.sc_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.sc_info* @device_get_softc(i32 %10)
  store %struct.sc_info* %11, %struct.sc_info** %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_get_nameunit(i32 %12)
  %14 = call i32 @snd_mtxcreate(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %16 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %19 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pci_enable_busmaster(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @pci_get_revid(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %35 [
    i32 129, label %25
    i32 128, label %30
  ]

25:                                               ; preds = %1
  %26 = load i32, i32* @AIO, align 4
  %27 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %28 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hdspe_channel*, %struct.hdspe_channel** @chan_map_aio, align 8
  store %struct.hdspe_channel* %29, %struct.hdspe_channel** %4, align 8
  br label %37

30:                                               ; preds = %1
  %31 = load i32, i32* @RAYDAT, align 4
  %32 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %33 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.hdspe_channel*, %struct.hdspe_channel** @chan_map_rd, align 8
  store %struct.hdspe_channel* %34, %struct.hdspe_channel** %4, align 8
  br label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %99

37:                                               ; preds = %30, %25
  %38 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %39 = call i32 @hdspe_alloc_resources(%struct.sc_info* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %99

46:                                               ; preds = %37
  %47 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %48 = call i64 @hdspe_init(%struct.sc_info* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %2, align 4
  br label %99

52:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %91, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @HDSPE_MAX_CHANS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.hdspe_channel*, %struct.hdspe_channel** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.hdspe_channel, %struct.hdspe_channel* %58, i64 %60
  %62 = getelementptr inbounds %struct.hdspe_channel, %struct.hdspe_channel* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br label %65

65:                                               ; preds = %57, %53
  %66 = phi i1 [ false, %53 ], [ %64, %57 ]
  br i1 %66, label %67, label %94

67:                                               ; preds = %65
  %68 = load i32, i32* @M_DEVBUF, align 4
  %69 = load i32, i32* @M_NOWAIT, align 4
  %70 = load i32, i32* @M_ZERO, align 4
  %71 = or i32 %69, %70
  %72 = call %struct.sc_pcminfo* @malloc(i32 24, i32 %68, i32 %71)
  store %struct.sc_pcminfo* %72, %struct.sc_pcminfo** %5, align 8
  %73 = load %struct.hdspe_channel*, %struct.hdspe_channel** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.hdspe_channel, %struct.hdspe_channel* %73, i64 %75
  %77 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %5, align 8
  %78 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %77, i32 0, i32 2
  store %struct.hdspe_channel* %76, %struct.hdspe_channel** %78, align 8
  %79 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %80 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %5, align 8
  %81 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %80, i32 0, i32 1
  store %struct.sc_info* %79, %struct.sc_info** %81, align 8
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @device_add_child(i32 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %84 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %5, align 8
  %85 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %5, align 8
  %87 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %5, align 8
  %90 = call i32 @device_set_ivars(i32 %88, %struct.sc_pcminfo* %89)
  br label %91

91:                                               ; preds = %67
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %53

94:                                               ; preds = %65
  %95 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %96 = call i32 @hdspe_map_dmabuf(%struct.sc_info* %95)
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @bus_generic_attach(i32 %97)
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %94, %50, %42, %35
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.sc_info* @device_get_softc(i32) #1

declare dso_local i32 @snd_mtxcreate(i32, i8*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @hdspe_alloc_resources(%struct.sc_info*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @hdspe_init(%struct.sc_info*) #1

declare dso_local %struct.sc_pcminfo* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.sc_pcminfo*) #1

declare dso_local i32 @hdspe_map_dmabuf(%struct.sc_info*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
