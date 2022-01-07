; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_codec_audio_inout_nid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_codec_audio_inout_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec_stream = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s verb: 0x%x, payload, 0x%x\0A\00", align 1
@HDA_CMD_GET_AMP_GAIN_MUTE_LEFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"GET_AMP_GAIN_MUTE_LEFT: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GET_AMP_GAIN_MUTE_RIGHT: 0x%x\0A\00", align 1
@HDA_CODEC_SET_AMP_GAIN_MUTE_MUTE = common dso_local global i32 0, align 4
@HDA_CODEC_SET_AMP_GAIN_MUTE_GAIN_MASK = common dso_local global i32 0, align 4
@HDA_CMD_SET_AMP_GAIN_MUTE_LEFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"SET_AMP_GAIN_MUTE_LEFT: \09\09\09    mute: 0x%x gain: 0x%x\0A\00", align 1
@HDA_CMD_SET_AMP_GAIN_MUTE_RIGHT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"SET_AMP_GAIN_MUTE_RIGHT: \09\09\09    mute: 0x%x gain: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"st->channel: 0x%x st->stream: 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Unknown VERB: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec_stream*, i32, i32)* @hda_codec_audio_inout_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_codec_audio_inout_nid(%struct.hda_codec_stream* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.hda_codec_stream* %0, %struct.hda_codec_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %11 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %134 [
    i32 132, label %18
    i32 129, label %22
    i32 133, label %26
    i32 130, label %52
    i32 131, label %99
    i32 128, label %108
  ]

18:                                               ; preds = %3
  %19 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %20 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  br label %137

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %25 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %137

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @HDA_CMD_GET_AMP_GAIN_MUTE_LEFT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %33 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %36 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %51

41:                                               ; preds = %26
  %42 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %43 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %46 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %41, %31
  br label %137

52:                                               ; preds = %3
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @HDA_CODEC_SET_AMP_GAIN_MUTE_MUTE, align 4
  %55 = and i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @HDA_CODEC_SET_AMP_GAIN_MUTE_GAIN_MASK, align 4
  %60 = and i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %9, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @HDA_CMD_SET_AMP_GAIN_MUTE_LEFT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %52
  %68 = load i8*, i8** %8, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %71 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %75 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %77, i8* %78)
  br label %80

80:                                               ; preds = %67, %52
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @HDA_CMD_SET_AMP_GAIN_MUTE_RIGHT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load i8*, i8** %8, align 8
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %89 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %93 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %95, i8* %96)
  br label %98

98:                                               ; preds = %85, %80
  br label %137

99:                                               ; preds = %3
  %100 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %101 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 4
  %104 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %105 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %103, %106
  store i32 %107, i32* %7, align 4
  br label %137

108:                                              ; preds = %3
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, 15
  %111 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %112 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %6, align 4
  %114 = ashr i32 %113, 4
  %115 = and i32 %114, 15
  %116 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %117 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %119 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %122 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %120, i32 %123)
  %125 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %126 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %108
  %130 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %4, align 8
  %131 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %130, i32 0, i32 7
  %132 = call i32 @hda_audio_ctxt_stop(%struct.TYPE_2__* %131)
  br label %133

133:                                              ; preds = %129, %108
  br label %137

134:                                              ; preds = %3
  %135 = load i32, i32* %5, align 4
  %136 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %134, %133, %99, %98, %51, %22, %18
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @hda_audio_ctxt_stop(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
