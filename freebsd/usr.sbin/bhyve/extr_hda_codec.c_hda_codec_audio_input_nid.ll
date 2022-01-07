; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_codec_audio_input_nid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_codec_audio_input_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec_softc = type { %struct.hda_codec_stream* }
%struct.hda_codec_stream = type { i32 }

@HDA_CODEC_STREAM_INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec_softc*, i32, i32)* @hda_codec_audio_input_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_codec_audio_input_nid(%struct.hda_codec_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec_stream*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_codec_softc* %0, %struct.hda_codec_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %4, align 8
  %10 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %9, i32 0, i32 0
  %11 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %10, align 8
  %12 = load i64, i64* @HDA_CODEC_STREAM_INPUT, align 8
  %13 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %11, i64 %12
  store %struct.hda_codec_stream* %13, %struct.hda_codec_stream** %7, align 8
  %14 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @hda_codec_audio_inout_nid(%struct.hda_codec_stream* %14, i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  ret i32 %18
}

declare dso_local i32 @hda_codec_audio_inout_nid(%struct.hda_codec_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
