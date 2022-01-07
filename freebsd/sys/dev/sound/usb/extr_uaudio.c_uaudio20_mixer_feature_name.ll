; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio20_mixer_feature_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio20_mixer_feature_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_tt_to_feature = type { i64, i64 }
%struct.uaudio_terminal_node = type { i32 }
%struct.uaudio_mixer_node = type { i64 }

@UAC_RECORD = common dso_local global i64 0, align 8
@SOUND_MIXER_IMIX = common dso_local global i64 0, align 8
@uaudio_tt_to_feature = common dso_local global %struct.uaudio_tt_to_feature* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"terminal_type=0x%04x -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uaudio_terminal_node*, %struct.uaudio_mixer_node*)* @uaudio20_mixer_feature_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uaudio20_mixer_feature_name(%struct.uaudio_terminal_node* %0, %struct.uaudio_mixer_node* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.uaudio_terminal_node*, align 8
  %5 = alloca %struct.uaudio_mixer_node*, align 8
  %6 = alloca %struct.uaudio_tt_to_feature*, align 8
  %7 = alloca i64, align 8
  store %struct.uaudio_terminal_node* %0, %struct.uaudio_terminal_node** %4, align 8
  store %struct.uaudio_mixer_node* %1, %struct.uaudio_mixer_node** %5, align 8
  %8 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %4, align 8
  %9 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %10 = call i64 @uaudio20_mixer_determine_class(%struct.uaudio_terminal_node* %8, %struct.uaudio_mixer_node* %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %12 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @UAC_RECORD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64, i64* @SOUND_MIXER_IMIX, align 8
  store i64 %20, i64* %3, align 8
  br label %48

21:                                               ; preds = %16, %2
  %22 = load %struct.uaudio_tt_to_feature*, %struct.uaudio_tt_to_feature** @uaudio_tt_to_feature, align 8
  store %struct.uaudio_tt_to_feature* %22, %struct.uaudio_tt_to_feature** %6, align 8
  br label %23

23:                                               ; preds = %36, %21
  %24 = load %struct.uaudio_tt_to_feature*, %struct.uaudio_tt_to_feature** %6, align 8
  %25 = getelementptr inbounds %struct.uaudio_tt_to_feature, %struct.uaudio_tt_to_feature* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.uaudio_tt_to_feature*, %struct.uaudio_tt_to_feature** %6, align 8
  %30 = getelementptr inbounds %struct.uaudio_tt_to_feature, %struct.uaudio_tt_to_feature* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %39

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.uaudio_tt_to_feature*, %struct.uaudio_tt_to_feature** %6, align 8
  %38 = getelementptr inbounds %struct.uaudio_tt_to_feature, %struct.uaudio_tt_to_feature* %37, i32 1
  store %struct.uaudio_tt_to_feature* %38, %struct.uaudio_tt_to_feature** %6, align 8
  br label %23

39:                                               ; preds = %34, %23
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.uaudio_tt_to_feature*, %struct.uaudio_tt_to_feature** %6, align 8
  %42 = getelementptr inbounds %struct.uaudio_tt_to_feature, %struct.uaudio_tt_to_feature* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %43)
  %45 = load %struct.uaudio_tt_to_feature*, %struct.uaudio_tt_to_feature** %6, align 8
  %46 = getelementptr inbounds %struct.uaudio_tt_to_feature, %struct.uaudio_tt_to_feature* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %39, %19
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i64 @uaudio20_mixer_determine_class(%struct.uaudio_terminal_node*, %struct.uaudio_mixer_node*) #1

declare dso_local i32 @DPRINTF(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
