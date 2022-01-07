; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_channel_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_channel_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_chan = type { i32, i64, i64, i32, i32, i32, i32, i32, i64, %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@HDAA_CHN_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdaa_chan*)* @hdaa_channel_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdaa_channel_start(%struct.hdaa_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdaa_chan*, align 8
  %4 = alloca %struct.hdaa_devinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.hdaa_chan* %0, %struct.hdaa_chan** %3, align 8
  %6 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %7 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %6, i32 0, i32 9
  %8 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  store %struct.hdaa_devinfo* %8, %struct.hdaa_devinfo** %4, align 8
  %9 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %10 = call i32 @hdaa_stream_format(%struct.hdaa_chan* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %12 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @hdaa_allowed_stripes(i32 %14)
  %16 = and i32 %13, %15
  %17 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %18 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @hda_get_stripes_mask(i32 %19)
  %21 = and i32 %16, %20
  %22 = call i64 @fls(i32 %21)
  %23 = sub nsw i64 %22, 1
  %24 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %25 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %24, i32 0, i32 8
  store i64 %23, i64* %25, align 8
  %26 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %27 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @device_get_parent(i32 %28)
  %30 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %31 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %34 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PCMDIR_PLAY, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %42 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %45 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %44, i32 0, i32 7
  %46 = call i64 @HDAC_STREAM_ALLOC(i32 %29, i32 %32, i32 %39, i32 %40, i64 %43, i32* %45)
  %47 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %48 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %50 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %1
  %54 = load i32, i32* @EBUSY, align 4
  store i32 %54, i32* %2, align 4
  br label %109

55:                                               ; preds = %1
  %56 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %57 = call i32 @hdaa_audio_setup(%struct.hdaa_chan* %56)
  %58 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %59 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @device_get_parent(i32 %60)
  %62 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %63 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %66 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PCMDIR_PLAY, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  %72 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %73 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @HDAC_STREAM_RESET(i32 %61, i32 %64, i32 %71, i64 %74)
  %76 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %77 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @device_get_parent(i32 %78)
  %80 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %4, align 8
  %81 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %84 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PCMDIR_PLAY, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  %90 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %91 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %94 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @sndbuf_getbufaddr(i32 %95)
  %97 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %98 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %101 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @HDAC_STREAM_START(i32 %79, i32 %82, i32 %89, i64 %92, i32 %96, i32 %99, i32 %102)
  %104 = load i32, i32* @HDAA_CHN_RUNNING, align 4
  %105 = load %struct.hdaa_chan*, %struct.hdaa_chan** %3, align 8
  %106 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %55, %53
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @hdaa_stream_format(%struct.hdaa_chan*) #1

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @hdaa_allowed_stripes(i32) #1

declare dso_local i32 @hda_get_stripes_mask(i32) #1

declare dso_local i64 @HDAC_STREAM_ALLOC(i32, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @hdaa_audio_setup(%struct.hdaa_chan*) #1

declare dso_local i32 @HDAC_STREAM_RESET(i32, i32, i32, i64) #1

declare dso_local i32 @HDAC_STREAM_START(i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
