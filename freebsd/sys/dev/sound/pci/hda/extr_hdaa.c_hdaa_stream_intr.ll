; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_stream_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_stream_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, %struct.hdaa_chan* }
%struct.hdaa_chan = type { i32, i64, i32, i32 }

@HDAA_CHN_RUNNING = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@PCMDIR_REC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @hdaa_stream_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_stream_intr(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdaa_devinfo*, align 8
  %8 = alloca %struct.hdaa_chan*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.hdaa_devinfo* @device_get_softc(i32 %10)
  store %struct.hdaa_devinfo* %11, %struct.hdaa_devinfo** %7, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %61, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %15 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %12
  %19 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %20 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %19, i32 0, i32 1
  %21 = load %struct.hdaa_chan*, %struct.hdaa_chan** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %21, i64 %23
  store %struct.hdaa_chan* %24, %struct.hdaa_chan** %8, align 8
  %25 = load %struct.hdaa_chan*, %struct.hdaa_chan** %8, align 8
  %26 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @HDAA_CHN_RUNNING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %61

32:                                               ; preds = %18
  %33 = load %struct.hdaa_chan*, %struct.hdaa_chan** %8, align 8
  %34 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* @PCMDIR_PLAY, align 8
  br label %42

40:                                               ; preds = %32
  %41 = load i64, i64* @PCMDIR_REC, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = icmp eq i64 %35, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load %struct.hdaa_chan*, %struct.hdaa_chan** %8, align 8
  %47 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %53 = call i32 @hdaa_unlock(%struct.hdaa_devinfo* %52)
  %54 = load %struct.hdaa_chan*, %struct.hdaa_chan** %8, align 8
  %55 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @chn_intr(i32 %56)
  %58 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %59 = call i32 @hdaa_lock(%struct.hdaa_devinfo* %58)
  br label %60

60:                                               ; preds = %51, %45, %42
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %12

64:                                               ; preds = %12
  ret void
}

declare dso_local %struct.hdaa_devinfo* @device_get_softc(i32) #1

declare dso_local i32 @hdaa_unlock(%struct.hdaa_devinfo*) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @hdaa_lock(%struct.hdaa_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
