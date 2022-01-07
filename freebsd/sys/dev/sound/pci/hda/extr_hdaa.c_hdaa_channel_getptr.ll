; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_channel_getptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_channel_getptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_chan = type { i32*, i64, i32, i32, i32, %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@HDA_BLK_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hdaa_channel_getptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdaa_channel_getptr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hdaa_chan*, align 8
  %6 = alloca %struct.hdaa_devinfo*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hdaa_chan*
  store %struct.hdaa_chan* %9, %struct.hdaa_chan** %5, align 8
  %10 = load %struct.hdaa_chan*, %struct.hdaa_chan** %5, align 8
  %11 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %10, i32 0, i32 5
  %12 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %11, align 8
  store %struct.hdaa_devinfo* %12, %struct.hdaa_devinfo** %6, align 8
  %13 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %6, align 8
  %14 = call i32 @hdaa_lock(%struct.hdaa_devinfo* %13)
  %15 = load %struct.hdaa_chan*, %struct.hdaa_chan** %5, align 8
  %16 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.hdaa_chan*, %struct.hdaa_chan** %5, align 8
  %21 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %43

24:                                               ; preds = %2
  %25 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %6, align 8
  %26 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_get_parent(i32 %27)
  %29 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %6, align 8
  %30 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hdaa_chan*, %struct.hdaa_chan** %5, align 8
  %33 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PCMDIR_PLAY, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = load %struct.hdaa_chan*, %struct.hdaa_chan** %5, align 8
  %40 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @HDAC_STREAM_GETPTR(i32 %28, i32 %31, i32 %38, i32 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %24, %19
  %44 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %6, align 8
  %45 = call i32 @hdaa_unlock(%struct.hdaa_devinfo* %44)
  %46 = load %struct.hdaa_chan*, %struct.hdaa_chan** %5, align 8
  %47 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hdaa_chan*, %struct.hdaa_chan** %5, align 8
  %50 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = load i32, i32* %7, align 4
  %54 = srem i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @HDA_BLK_ALIGN, align 4
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @hdaa_lock(%struct.hdaa_devinfo*) #1

declare dso_local i32 @HDAC_STREAM_GETPTR(i32, i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @hdaa_unlock(%struct.hdaa_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
