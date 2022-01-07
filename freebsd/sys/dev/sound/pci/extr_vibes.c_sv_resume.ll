; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_sv_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_sv_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"unable to reinitialize the card\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to reinitialize the mixer\0A\00", align 1
@PCMTRIG_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sv_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sv_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.sc_info* @pcm_getdevinfo(i32 %5)
  store %struct.sc_info* %6, %struct.sc_info** %4, align 8
  %7 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %8 = call i32 @sv_mix_mute_all(%struct.sc_info* %7)
  %9 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %10 = call i32 @sv_power(%struct.sc_info* %9, i32 0)
  %11 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %12 = call i32 @sv_init(%struct.sc_info* %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @mixer_reinit(i32 %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %49

26:                                               ; preds = %18
  %27 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %28 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %34 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %33, i32 0, i32 1
  %35 = load i32, i32* @PCMTRIG_START, align 4
  %36 = call i32 @svrchan_trigger(i32 0, %struct.TYPE_3__* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %26
  %38 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %39 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %45 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %44, i32 0, i32 0
  %46 = load i32, i32* @PCMTRIG_START, align 4
  %47 = call i32 @svpchan_trigger(i32 0, %struct.TYPE_4__* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %37
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %22, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @sv_mix_mute_all(%struct.sc_info*) #1

declare dso_local i32 @sv_power(%struct.sc_info*, i32) #1

declare dso_local i32 @sv_init(%struct.sc_info*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mixer_reinit(i32) #1

declare dso_local i32 @svrchan_trigger(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @svpchan_trigger(i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
