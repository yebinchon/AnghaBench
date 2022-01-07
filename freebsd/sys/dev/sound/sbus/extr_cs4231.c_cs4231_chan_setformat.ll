; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_chan_setformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_chan_setformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_softc = type { i32 }
%struct.cs4231_channel = type { i32, i64, %struct.cs4231_softc* }

@CS_AFMT_U8 = common dso_local global i32 0, align 4
@CS_AFMT_MU_LAW = common dso_local global i32 0, align 4
@CS_AFMT_S16_LE = common dso_local global i32 0, align 4
@CS_AFMT_A_LAW = common dso_local global i32 0, align 4
@CS_AFMT_IMA_ADPCM = common dso_local global i32 0, align 4
@CS_AFMT_S16_BE = common dso_local global i32 0, align 4
@CS_AFMT_STEREO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"FORMAT: %s : 0x%x\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@CS_CLOCK_DATA_FORMAT = common dso_local global i32 0, align 4
@CS_CLOCK_DATA_FORMAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @cs4231_chan_setformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4231_chan_setformat(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cs4231_softc*, align 8
  %9 = alloca %struct.cs4231_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.cs4231_channel*
  store %struct.cs4231_channel* %14, %struct.cs4231_channel** %9, align 8
  %15 = load %struct.cs4231_channel*, %struct.cs4231_channel** %9, align 8
  %16 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %15, i32 0, i32 2
  %17 = load %struct.cs4231_softc*, %struct.cs4231_softc** %16, align 8
  store %struct.cs4231_softc* %17, %struct.cs4231_softc** %8, align 8
  %18 = load %struct.cs4231_softc*, %struct.cs4231_softc** %8, align 8
  %19 = call i32 @CS4231_LOCK(%struct.cs4231_softc* %18)
  %20 = load %struct.cs4231_channel*, %struct.cs4231_channel** %9, align 8
  %21 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.cs4231_softc*, %struct.cs4231_softc** %8, align 8
  %27 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %26)
  store i32 0, i32* %4, align 4
  br label %86

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @AFMT_ENCODING(i32 %29)
  store i32 %30, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %44 [
    i32 128, label %32
    i32 131, label %34
    i32 129, label %36
    i32 133, label %38
    i32 132, label %40
    i32 130, label %42
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* @CS_AFMT_U8, align 4
  store i32 %33, i32* %11, align 4
  br label %46

34:                                               ; preds = %28
  %35 = load i32, i32* @CS_AFMT_MU_LAW, align 4
  store i32 %35, i32* %11, align 4
  br label %46

36:                                               ; preds = %28
  %37 = load i32, i32* @CS_AFMT_S16_LE, align 4
  store i32 %37, i32* %11, align 4
  br label %46

38:                                               ; preds = %28
  %39 = load i32, i32* @CS_AFMT_A_LAW, align 4
  store i32 %39, i32* %11, align 4
  br label %46

40:                                               ; preds = %28
  %41 = load i32, i32* @CS_AFMT_IMA_ADPCM, align 4
  store i32 %41, i32* %11, align 4
  br label %46

42:                                               ; preds = %28
  %43 = load i32, i32* @CS_AFMT_S16_BE, align 4
  store i32 %43, i32* %11, align 4
  br label %46

44:                                               ; preds = %28
  %45 = load i32, i32* @CS_AFMT_U8, align 4
  store i32 %45, i32* %11, align 4
  store i32 128, i32* %7, align 4
  br label %46

46:                                               ; preds = %44, %42, %40, %38, %36, %34, %32
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @AFMT_CHANNEL(i32 %47)
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @CS_AFMT_STEREO, align 4
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.cs4231_channel*, %struct.cs4231_channel** %9, align 8
  %56 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PCMDIR_PLAY, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @DPRINTF(i8* %64)
  %66 = load %struct.cs4231_softc*, %struct.cs4231_softc** %8, align 8
  %67 = load i32, i32* @CS_CLOCK_DATA_FORMAT, align 4
  %68 = call i32 @cs4231_read(%struct.cs4231_softc* %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* @CS_CLOCK_DATA_FORMAT_MASK, align 4
  %70 = load i32, i32* %12, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load %struct.cs4231_softc*, %struct.cs4231_softc** %8, align 8
  %76 = load %struct.cs4231_channel*, %struct.cs4231_channel** %9, align 8
  %77 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @cs4231_chan_fs(%struct.cs4231_softc* %75, i64 %78, i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.cs4231_channel*, %struct.cs4231_channel** %9, align 8
  %83 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.cs4231_softc*, %struct.cs4231_softc** %8, align 8
  %85 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %84)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %54, %25
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @CS4231_LOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @CS4231_UNLOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @AFMT_ENCODING(i32) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @cs4231_read(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @cs4231_chan_fs(%struct.cs4231_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
