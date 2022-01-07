; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_codec_parse_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_codec_parse_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_params = type { i32, i32, i32 }

@HDA_CODEC_FMT_BASE_MASK = common dso_local global i32 0, align 4
@HDA_CODEC_FMT_MULT_MASK = common dso_local global i32 0, align 4
@HDA_CODEC_FMT_DIV_SHIFT = common dso_local global i32 0, align 4
@HDA_CODEC_FMT_DIV_MASK = common dso_local global i32 0, align 4
@HDA_CODEC_FMT_BITS_MASK = common dso_local global i32 0, align 4
@AFMT_U8 = common dso_local global i32 0, align 4
@AFMT_S16_LE = common dso_local global i32 0, align 4
@AFMT_S24_LE = common dso_local global i32 0, align 4
@AFMT_S32_LE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unknown format bits: 0x%x\0A\00", align 1
@HDA_CODEC_FMT_CHAN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.audio_params*)* @hda_codec_parse_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_codec_parse_format(i32 %0, %struct.audio_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_params*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.audio_params* %1, %struct.audio_params** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %8 = call i32 @assert(%struct.audio_params* %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @HDA_CODEC_FMT_BASE_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 44100, i32 48000
  %15 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %16 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @HDA_CODEC_FMT_MULT_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %35 [
    i32 130, label %20
    i32 129, label %25
    i32 128, label %30
  ]

20:                                               ; preds = %2
  %21 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %22 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 2
  store i32 %24, i32* %22, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %27 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 3
  store i32 %29, i32* %27, align 4
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %32 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 4
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %2, %30, %25, %20
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @HDA_CODEC_FMT_DIV_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* @HDA_CODEC_FMT_DIV_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %44 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @HDA_CODEC_FMT_BITS_MASK, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %66 [
    i32 131, label %50
    i32 134, label %54
    i32 133, label %58
    i32 132, label %62
  ]

50:                                               ; preds = %35
  %51 = load i32, i32* @AFMT_U8, align 4
  %52 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %53 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %71

54:                                               ; preds = %35
  %55 = load i32, i32* @AFMT_S16_LE, align 4
  %56 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %57 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %71

58:                                               ; preds = %35
  %59 = load i32, i32* @AFMT_S24_LE, align 4
  %60 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %61 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %71

62:                                               ; preds = %35
  %63 = load i32, i32* @AFMT_S32_LE, align 4
  %64 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %65 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %71

66:                                               ; preds = %35
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @HDA_CODEC_FMT_BITS_MASK, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %69)
  store i32 -1, i32* %3, align 4
  br label %78

71:                                               ; preds = %62, %58, %54, %50
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @HDA_CODEC_FMT_CHAN_MASK, align 4
  %74 = and i32 %72, %73
  %75 = add nsw i32 %74, 1
  %76 = load %struct.audio_params*, %struct.audio_params** %5, align 8
  %77 = getelementptr inbounds %struct.audio_params, %struct.audio_params* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %66
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @assert(%struct.audio_params*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
