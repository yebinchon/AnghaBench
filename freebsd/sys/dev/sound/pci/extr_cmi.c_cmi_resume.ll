; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmi_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"unable to reinitialize the card\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to reinitialize the mixer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cmi_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmi_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.sc_info* @pcm_getdevinfo(i32 %5)
  store %struct.sc_info* %6, %struct.sc_info** %4, align 8
  %7 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %8 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @snd_mtxlock(i32 %9)
  %11 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %12 = call i32 @cmi_power(%struct.sc_info* %11, i32 0)
  %13 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %14 = call i64 @cmi_init(%struct.sc_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @snd_mtxunlock(i32 %21)
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %91

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @mixer_reinit(i32 %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %32 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @snd_mtxunlock(i32 %33)
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %91

36:                                               ; preds = %24
  %37 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %38 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %44 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %43, i32 0, i32 2
  %45 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %46 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cmichan_setspeed(i32* null, %struct.TYPE_5__* %44, i32 %48)
  %50 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %51 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %50, i32 0, i32 2
  %52 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @cmichan_setformat(i32* null, %struct.TYPE_5__* %51, i32 %55)
  %57 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %58 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %59 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %58, i32 0, i32 2
  %60 = call i32 @cmi_ch0_start(%struct.sc_info* %57, %struct.TYPE_5__* %59)
  br label %61

61:                                               ; preds = %42, %36
  %62 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %63 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %61
  %68 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %69 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %68, i32 0, i32 1
  %70 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %71 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cmichan_setspeed(i32* null, %struct.TYPE_5__* %69, i32 %73)
  %75 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %76 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %75, i32 0, i32 1
  %77 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %78 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @cmichan_setformat(i32* null, %struct.TYPE_5__* %76, i32 %80)
  %82 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %83 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %84 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %83, i32 0, i32 1
  %85 = call i32 @cmi_ch1_start(%struct.sc_info* %82, %struct.TYPE_5__* %84)
  br label %86

86:                                               ; preds = %67, %61
  %87 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %88 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @snd_mtxunlock(i32 %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %86, %28, %16
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @cmi_power(%struct.sc_info*, i32) #1

declare dso_local i64 @cmi_init(%struct.sc_info*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @mixer_reinit(i32) #1

declare dso_local i32 @cmichan_setspeed(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @cmichan_setformat(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @cmi_ch0_start(%struct.sc_info*, %struct.TYPE_5__*) #1

declare dso_local i32 @cmi_ch1_start(%struct.sc_info*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
