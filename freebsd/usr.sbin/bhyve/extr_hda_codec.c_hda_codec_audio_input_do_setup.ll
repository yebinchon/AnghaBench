; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_codec_audio_input_do_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_codec_audio_input_do_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec_softc = type { %struct.hda_codec_stream* }
%struct.hda_codec_stream = type { i32, %struct.audio* }
%struct.audio = type { i32 }
%struct.audio_params = type { i32, i32, i32 }

@HDA_CODEC_STREAM_INPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"rate: %d, channels: %d, format: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @hda_codec_audio_input_do_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_codec_audio_input_do_setup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hda_codec_softc*, align 8
  %5 = alloca %struct.hda_codec_stream*, align 8
  %6 = alloca %struct.audio*, align 8
  %7 = alloca %struct.audio_params, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.hda_codec_softc*
  store %struct.hda_codec_softc* %10, %struct.hda_codec_softc** %4, align 8
  store %struct.hda_codec_stream* null, %struct.hda_codec_stream** %5, align 8
  store %struct.audio* null, %struct.audio** %6, align 8
  %11 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %4, align 8
  %12 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %11, i32 0, i32 0
  %13 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %12, align 8
  %14 = load i64, i64* @HDA_CODEC_STREAM_INPUT, align 8
  %15 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %13, i64 %14
  store %struct.hda_codec_stream* %15, %struct.hda_codec_stream** %5, align 8
  %16 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %5, align 8
  %17 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %16, i32 0, i32 1
  %18 = load %struct.audio*, %struct.audio** %17, align 8
  store %struct.audio* %18, %struct.audio** %6, align 8
  %19 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %5, align 8
  %20 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @hda_codec_parse_format(i32 %21, %struct.audio_params* %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %36

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %7, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %7, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DPRINTF(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %32)
  %34 = load %struct.audio*, %struct.audio** %6, align 8
  %35 = call i32 @audio_set_params(%struct.audio* %34, %struct.audio_params* %7)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %26, %25
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @hda_codec_parse_format(i32, %struct.audio_params*) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32, i32) #1

declare dso_local i32 @audio_set_params(%struct.audio*, %struct.audio_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
