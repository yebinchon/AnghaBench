; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_codec_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_codec_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec_inst = type { %struct.hda_codec_stream*, i64 }
%struct.hda_codec_stream = type { i64, %struct.hda_audio_ctxt }
%struct.hda_audio_ctxt = type { i32 }
%struct.hda_codec_softc = type { %struct.hda_codec_stream*, i64 }

@HDA_CODEC_STREAM_OUTPUT = common dso_local global i32 0, align 4
@HDA_CODEC_STREAM_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"run: %d, stream: 0x%x, st->stream: 0x%x dir: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Stream not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec_inst*, i64, i64, i64)* @hda_codec_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_codec_notify(%struct.hda_codec_inst* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec_inst*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hda_codec_softc*, align 8
  %11 = alloca %struct.hda_codec_stream*, align 8
  %12 = alloca %struct.hda_audio_ctxt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hda_codec_inst* %0, %struct.hda_codec_inst** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.hda_codec_softc* null, %struct.hda_codec_softc** %10, align 8
  store %struct.hda_codec_stream* null, %struct.hda_codec_stream** %11, align 8
  store %struct.hda_audio_ctxt* null, %struct.hda_audio_ctxt** %12, align 8
  %15 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %6, align 8
  %16 = bitcast %struct.hda_codec_inst* %15 to %struct.hda_codec_softc*
  %17 = call i32 @assert(%struct.hda_codec_softc* %16)
  %18 = load i64, i64* %8, align 8
  %19 = inttoptr i64 %18 to %struct.hda_codec_softc*
  %20 = call i32 @assert(%struct.hda_codec_softc* %19)
  %21 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %6, align 8
  %22 = getelementptr inbounds %struct.hda_codec_inst, %struct.hda_codec_inst* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.hda_codec_softc*
  store %struct.hda_codec_softc* %24, %struct.hda_codec_softc** %10, align 8
  %25 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %26 = call i32 @assert(%struct.hda_codec_softc* %25)
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @HDA_CODEC_STREAM_OUTPUT, align 4
  br label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @HDA_CODEC_STREAM_INPUT, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %13, align 4
  %35 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %36 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %35, i32 0, i32 0
  %37 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %37, i64 %39
  store %struct.hda_codec_stream* %40, %struct.hda_codec_stream** %11, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %11, align 8
  %44 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %42, i64 %45, i64 %46)
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %11, align 8
  %50 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %33
  %54 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %68

55:                                               ; preds = %33
  %56 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %11, align 8
  %57 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %56, i32 0, i32 1
  store %struct.hda_audio_ctxt* %57, %struct.hda_audio_ctxt** %12, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.hda_audio_ctxt*, %struct.hda_audio_ctxt** %12, align 8
  %62 = call i32 @hda_audio_ctxt_start(%struct.hda_audio_ctxt* %61)
  store i32 %62, i32* %14, align 4
  br label %66

63:                                               ; preds = %55
  %64 = load %struct.hda_audio_ctxt*, %struct.hda_audio_ctxt** %12, align 8
  %65 = call i32 @hda_audio_ctxt_stop(%struct.hda_audio_ctxt* %64)
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %53
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @assert(%struct.hda_codec_softc*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @hda_audio_ctxt_start(%struct.hda_audio_ctxt*) #1

declare dso_local i32 @hda_audio_ctxt_stop(%struct.hda_audio_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
