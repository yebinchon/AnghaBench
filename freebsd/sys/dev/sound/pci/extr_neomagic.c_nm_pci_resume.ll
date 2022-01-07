; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nm_pci_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nm_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"unable to reinitialize the mixer\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@NM_PLAYBACK_ENABLE_REG = common dso_local global i32 0, align 4
@NM_PLAYBACK_FREERUN = common dso_local global i32 0, align 4
@NM_PLAYBACK_ENABLE_FLAG = common dso_local global i32 0, align 4
@NM_AUDIO_MUTE_REG = common dso_local global i32 0, align 4
@NM_RECORD_ENABLE_REG = common dso_local global i32 0, align 4
@NM_RECORD_FREERUN = common dso_local global i32 0, align 4
@NM_RECORD_ENABLE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nm_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nm_pci_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.sc_info* @pcm_getdevinfo(i32 %5)
  store %struct.sc_info* %6, %struct.sc_info** %4, align 8
  %7 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %8 = call i32 @nm_wr(%struct.sc_info* %7, i32 0, i32 17, i32 1)
  %9 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %10 = call i32 @nm_wr(%struct.sc_info* %9, i32 532, i32 0, i32 2)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @mixer_reinit(i32 %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %48

18:                                               ; preds = %1
  %19 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %26 = load i32, i32* @NM_PLAYBACK_ENABLE_REG, align 4
  %27 = load i32, i32* @NM_PLAYBACK_FREERUN, align 4
  %28 = load i32, i32* @NM_PLAYBACK_ENABLE_FLAG, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @nm_wr(%struct.sc_info* %25, i32 %26, i32 %29, i32 1)
  %31 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %32 = load i32, i32* @NM_AUDIO_MUTE_REG, align 4
  %33 = call i32 @nm_wr(%struct.sc_info* %31, i32 %32, i32 0, i32 2)
  br label %34

34:                                               ; preds = %24, %18
  %35 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %36 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %42 = load i32, i32* @NM_RECORD_ENABLE_REG, align 4
  %43 = load i32, i32* @NM_RECORD_FREERUN, align 4
  %44 = load i32, i32* @NM_RECORD_ENABLE_FLAG, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @nm_wr(%struct.sc_info* %41, i32 %42, i32 %45, i32 1)
  br label %47

47:                                               ; preds = %40, %34
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @nm_wr(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @mixer_reinit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
