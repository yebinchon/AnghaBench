; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_codec_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_hda_codec.c_hda_codec_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec_inst = type { i32 (%struct.hda_ops*)*, i32, %struct.hda_codec_stream*, i64, %struct.hda_codec_inst* }
%struct.hda_ops = type { {}*, i32, %struct.hda_codec_stream*, i64, %struct.hda_ops* }
%struct.hda_codec_stream = type { i8*, i8*, i8*, i8* }
%struct.hda_codec_softc = type { i32 (%struct.hda_ops*)*, i32, %struct.hda_codec_stream*, i64, %struct.hda_codec_softc* }

@HDA_CODEC_STREAMS_COUNT = common dso_local global i32 0, align 4
@HDA_CODEC_AMP_NUMSTEPS = common dso_local global i8* null, align 8
@HDA_CODEC_SET_AMP_GAIN_MUTE_MUTE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"cad: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"The controller ops does not implement \09\09\09 the signal function\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec_inst*)* @hda_codec_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_codec_reset(%struct.hda_codec_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec_inst*, align 8
  %4 = alloca %struct.hda_ops*, align 8
  %5 = alloca %struct.hda_codec_softc*, align 8
  %6 = alloca %struct.hda_codec_stream*, align 8
  %7 = alloca i32, align 4
  store %struct.hda_codec_inst* %0, %struct.hda_codec_inst** %3, align 8
  store %struct.hda_ops* null, %struct.hda_ops** %4, align 8
  store %struct.hda_codec_softc* null, %struct.hda_codec_softc** %5, align 8
  store %struct.hda_codec_stream* null, %struct.hda_codec_stream** %6, align 8
  %8 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %3, align 8
  %9 = bitcast %struct.hda_codec_inst* %8 to %struct.hda_ops*
  %10 = call i32 @assert(%struct.hda_ops* %9)
  %11 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %3, align 8
  %12 = getelementptr inbounds %struct.hda_codec_inst, %struct.hda_codec_inst* %11, i32 0, i32 4
  %13 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %12, align 8
  %14 = bitcast %struct.hda_codec_inst* %13 to %struct.hda_ops*
  store %struct.hda_ops* %14, %struct.hda_ops** %4, align 8
  %15 = load %struct.hda_ops*, %struct.hda_ops** %4, align 8
  %16 = call i32 @assert(%struct.hda_ops* %15)
  %17 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %3, align 8
  %18 = getelementptr inbounds %struct.hda_codec_inst, %struct.hda_codec_inst* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.hda_codec_softc*
  store %struct.hda_codec_softc* %20, %struct.hda_codec_softc** %5, align 8
  %21 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %5, align 8
  %22 = bitcast %struct.hda_codec_softc* %21 to %struct.hda_ops*
  %23 = call i32 @assert(%struct.hda_ops* %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %47, %1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @HDA_CODEC_STREAMS_COUNT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load %struct.hda_codec_softc*, %struct.hda_codec_softc** %5, align 8
  %30 = getelementptr inbounds %struct.hda_codec_softc, %struct.hda_codec_softc* %29, i32 0, i32 2
  %31 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %31, i64 %33
  store %struct.hda_codec_stream* %34, %struct.hda_codec_stream** %6, align 8
  %35 = load i8*, i8** @HDA_CODEC_AMP_NUMSTEPS, align 8
  %36 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %6, align 8
  %37 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @HDA_CODEC_AMP_NUMSTEPS, align 8
  %39 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %6, align 8
  %40 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @HDA_CODEC_SET_AMP_GAIN_MUTE_MUTE, align 8
  %42 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %6, align 8
  %43 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @HDA_CODEC_SET_AMP_GAIN_MUTE_MUTE, align 8
  %45 = load %struct.hda_codec_stream*, %struct.hda_codec_stream** %6, align 8
  %46 = getelementptr inbounds %struct.hda_codec_stream, %struct.hda_codec_stream* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %28
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %24

50:                                               ; preds = %24
  %51 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %3, align 8
  %52 = getelementptr inbounds %struct.hda_codec_inst, %struct.hda_codec_inst* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.hda_ops*, %struct.hda_ops** %4, align 8
  %56 = getelementptr inbounds %struct.hda_ops, %struct.hda_ops* %55, i32 0, i32 0
  %57 = bitcast {}** %56 to i32 (%struct.hda_ops*)**
  %58 = load i32 (%struct.hda_ops*)*, i32 (%struct.hda_ops*)** %57, align 8
  %59 = icmp ne i32 (%struct.hda_ops*)* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %50
  %61 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %70

62:                                               ; preds = %50
  %63 = load %struct.hda_ops*, %struct.hda_ops** %4, align 8
  %64 = getelementptr inbounds %struct.hda_ops, %struct.hda_ops* %63, i32 0, i32 0
  %65 = bitcast {}** %64 to i32 (%struct.hda_ops*)**
  %66 = load i32 (%struct.hda_ops*)*, i32 (%struct.hda_ops*)** %65, align 8
  %67 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %3, align 8
  %68 = bitcast %struct.hda_codec_inst* %67 to %struct.hda_ops*
  %69 = call i32 %66(%struct.hda_ops* %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %62, %60
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @assert(%struct.hda_ops*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
