; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_codec_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec_inst = type { %struct.hda_codec_softc*, i32 }
%struct.hda_codec_softc = type { %struct.hda_codec_inst*, %struct.hda_codec_stream*, i32, i32, i32, i32, i32, i32, i32 }
%struct.hda_codec_stream = type { i8*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"cad: 0x%x opts: %s\0A\00", align 1
@hda_codec_duplex_parameters = common dso_local global i32 0, align 4
@hda_codec_output_parameters = common dso_local global i32 0, align 4
@hda_codec_input_parameters = common dso_local global i32 0, align 4
@HDA_CODEC_SUBSYSTEM_ID = common dso_local global i32 0, align 4
@HDA_CODEC_NODES_COUNT = common dso_local global i32 0, align 4
@hda_codec_conn_list = common dso_local global i32 0, align 4
@hda_codec_conf_default = common dso_local global i32 0, align 4
@hda_codec_pin_ctrl_default = common dso_local global i32 0, align 4
@hda_codec_verb_handlers = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"HDA Codec nodes: %d\0A\00", align 1
@HDA_CODEC_STREAM_OUTPUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"hda-audio-output\00", align 1
@hda_codec_audio_output_do_transfer = common dso_local global i32 0, align 4
@hda_codec_audio_output_do_setup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Fail to init the output audio player\0A\00", align 1
@HDA_CODEC_STREAM_INPUT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"hda-audio-input\00", align 1
@hda_codec_audio_input_do_transfer = common dso_local global i32 0, align 4
@hda_codec_audio_input_do_setup = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Fail to init the input audio player\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec_inst*, i8*, i8*, i8*)* @hda_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_codec_init(%struct.hda_codec_inst* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec_inst*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hda_codec_softc*, align 8
  %11 = alloca %struct.hda_codec_stream*, align 8
  %12 = alloca i32, align 4
  store %struct.hda_codec_inst* %0, %struct.hda_codec_inst** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.hda_codec_softc* null, %struct.hda_codec_softc** %10, align 8
  store %struct.hda_codec_stream* null, %struct.hda_codec_stream** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %142

19:                                               ; preds = %15, %4
  %20 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %6, align 8
  %21 = getelementptr inbounds %struct.hda_codec_inst, %struct.hda_codec_inst* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %23)
  %25 = call %struct.hda_codec_softc* @calloc(i32 1, i32 48)
  store %struct.hda_codec_softc* %25, %struct.hda_codec_softc** %10, align 8
  %26 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %27 = icmp ne %struct.hda_codec_softc* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %142

29:                                               ; preds = %19
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @hda_codec_duplex_parameters, align 4
  %37 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %38 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  br label %51

39:                                               ; preds = %32, %29
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @hda_codec_output_parameters, align 4
  %44 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %45 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  br label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @hda_codec_input_parameters, align 4
  %48 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %49 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i32, i32* @HDA_CODEC_SUBSYSTEM_ID, align 4
  %53 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %54 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @HDA_CODEC_NODES_COUNT, align 4
  %56 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %57 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @hda_codec_conn_list, align 4
  %59 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %60 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @hda_codec_conf_default, align 4
  %62 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %63 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @hda_codec_pin_ctrl_default, align 4
  %65 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %66 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @hda_codec_verb_handlers, align 4
  %68 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %69 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %71 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %104

76:                                               ; preds = %51
  %77 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %78 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %77, i32 0, i32 1
  %79 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %78, align 8
  %80 = load i64, i64* @HDA_CODEC_STREAM_OUTPUT, align 8
  %81 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %79, i64 %80
  store %struct.hda_codec_stream* %81, %struct.hda_codec_stream** %11, align 8
  %82 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %11, align 8
  %83 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %82, i32 0, i32 1
  %84 = load i32, i32* @hda_codec_audio_output_do_transfer, align 4
  %85 = load i32, i32* @hda_codec_audio_output_do_setup, align 4
  %86 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %87 = call i32 @hda_audio_ctxt_init(i32* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85, %struct.hda_codec_softc* %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i8*, i8** %7, align 8
  %94 = call i8* @audio_init(i8* %93, i32 1)
  %95 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %11, align 8
  %96 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %11, align 8
  %98 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %76
  %102 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %142

103:                                              ; preds = %76
  br label %104

104:                                              ; preds = %103, %51
  %105 = load i8*, i8** %8, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %135

107:                                              ; preds = %104
  %108 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %109 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %108, i32 0, i32 1
  %110 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %109, align 8
  %111 = load i64, i64* @HDA_CODEC_STREAM_INPUT, align 8
  %112 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %110, i64 %111
  store %struct.hda_codec_stream* %112, %struct.hda_codec_stream** %11, align 8
  %113 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %11, align 8
  %114 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %113, i32 0, i32 1
  %115 = load i32, i32* @hda_codec_audio_input_do_transfer, align 4
  %116 = load i32, i32* @hda_codec_audio_input_do_setup, align 4
  %117 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %118 = call i32 @hda_audio_ctxt_init(i32* %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %115, i32 %116, %struct.hda_codec_softc* %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load i8*, i8** %8, align 8
  %125 = call i8* @audio_init(i8* %124, i32 0)
  %126 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %11, align 8
  %127 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %11, align 8
  %129 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %107
  %133 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %142

134:                                              ; preds = %107
  br label %135

135:                                              ; preds = %134, %104
  %136 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %6, align 8
  %137 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %138 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %137, i32 0, i32 0
  store %struct.hda_codec_inst* %136, %struct.hda_codec_inst** %138, align 8
  %139 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %10, align 8
  %140 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %6, align 8
  %141 = getelementptr inbounds %struct.hda_codec_inst, %struct.hda_codec_inst* %140, i32 0, i32 0
  store %struct.hda_codec_softc* %139, %struct.hda_codec_softc** %141, align 8
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %135, %132, %101, %28, %18
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local %struct.hda_codec_softc* @calloc(i32, i32) #1

declare dso_local i32 @hda_audio_ctxt_init(i32*, i8*, i32, i32, %struct.hda_codec_softc*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @audio_init(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
