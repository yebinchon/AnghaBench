; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_chan_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_chan_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.speed_struct = type { i64, i32 }
%struct.cs4231_softc = type { i32 }
%struct.cs4231_channel = type { i64, i64, %struct.cs4231_softc* }

@cs4231_chan_setspeed.speed_table = internal constant [15 x %struct.speed_struct] [%struct.speed_struct { i64 5510, i32 128 }, %struct.speed_struct { i64 5510, i32 128 }, %struct.speed_struct { i64 6620, i32 142 }, %struct.speed_struct { i64 8000, i32 129 }, %struct.speed_struct { i64 9600, i32 143 }, %struct.speed_struct { i64 11025, i32 130 }, %struct.speed_struct { i64 16000, i32 131 }, %struct.speed_struct { i64 18900, i32 132 }, %struct.speed_struct { i64 22050, i32 134 }, %struct.speed_struct { i64 27420, i32 133 }, %struct.speed_struct { i64 32000, i32 135 }, %struct.speed_struct { i64 33075, i32 140 }, %struct.speed_struct { i64 33075, i32 136 }, %struct.speed_struct { i64 44100, i32 138 }, %struct.speed_struct { i64 48000, i32 141 }], align 16
@.str = private unnamed_addr constant [26 x i8] c"SPEED: %s : %dHz -> %dHz\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@CS_CLOCK_DATA_FORMAT = common dso_local global i32 0, align 4
@CS_CLOCK_DATA_FORMAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @cs4231_chan_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cs4231_chan_setspeed(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cs4231_softc*, align 8
  %9 = alloca %struct.cs4231_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.cs4231_channel*
  store %struct.cs4231_channel* %15, %struct.cs4231_channel** %9, align 8
  %16 = load %struct.cs4231_channel*, %struct.cs4231_channel** %9, align 8
  %17 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %16, i32 0, i32 2
  %18 = load %struct.cs4231_softc*, %struct.cs4231_softc** %17, align 8
  store %struct.cs4231_softc* %18, %struct.cs4231_softc** %8, align 8
  %19 = load %struct.cs4231_softc*, %struct.cs4231_softc** %8, align 8
  %20 = call i32 @CS4231_LOCK(%struct.cs4231_softc* %19)
  %21 = load %struct.cs4231_channel*, %struct.cs4231_channel** %9, align 8
  %22 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.cs4231_softc*, %struct.cs4231_softc** %8, align 8
  %28 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %27)
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %4, align 8
  br label %107

30:                                               ; preds = %3
  store i32 15, i32* %11, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %57, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [15 x %struct.speed_struct], [15 x %struct.speed_struct]* @cs4231_chan_setspeed.speed_table, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.speed_struct, %struct.speed_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 16
  %43 = sub nsw i64 %37, %42
  %44 = call i64 @abs(i64 %43)
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [15 x %struct.speed_struct], [15 x %struct.speed_struct]* @cs4231_chan_setspeed.speed_table, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.speed_struct, %struct.speed_struct* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 16
  %51 = sub nsw i64 %45, %50
  %52 = call i64 @abs(i64 %51)
  %53 = icmp slt i64 %44, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %36
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %54, %36
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %31

60:                                               ; preds = %31
  %61 = load %struct.cs4231_channel*, %struct.cs4231_channel** %9, align 8
  %62 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PCMDIR_PLAY, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [15 x %struct.speed_struct], [15 x %struct.speed_struct]* @cs4231_chan_setspeed.speed_table, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.speed_struct, %struct.speed_struct* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 16
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @DPRINTF(i8* %74)
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [15 x %struct.speed_struct], [15 x %struct.speed_struct]* @cs4231_chan_setspeed.speed_table, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.speed_struct, %struct.speed_struct* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 16
  store i64 %80, i64* %7, align 8
  %81 = load %struct.cs4231_softc*, %struct.cs4231_softc** %8, align 8
  %82 = load i32, i32* @CS_CLOCK_DATA_FORMAT, align 4
  %83 = call i32 @cs4231_read(%struct.cs4231_softc* %81, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* @CS_CLOCK_DATA_FORMAT_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %13, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [15 x %struct.speed_struct], [15 x %struct.speed_struct]* @cs4231_chan_setspeed.speed_table, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.speed_struct, %struct.speed_struct* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %13, align 4
  %95 = load %struct.cs4231_softc*, %struct.cs4231_softc** %8, align 8
  %96 = load %struct.cs4231_channel*, %struct.cs4231_channel** %9, align 8
  %97 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @cs4231_chan_fs(%struct.cs4231_softc* %95, i64 %98, i32 %99)
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.cs4231_channel*, %struct.cs4231_channel** %9, align 8
  %103 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.cs4231_softc*, %struct.cs4231_softc** %8, align 8
  %105 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %104)
  %106 = load i64, i64* %7, align 8
  store i64 %106, i64* %4, align 8
  br label %107

107:                                              ; preds = %60, %26
  %108 = load i64, i64* %4, align 8
  ret i64 %108
}

declare dso_local i32 @CS4231_LOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @CS4231_UNLOCK(%struct.cs4231_softc*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @cs4231_read(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @cs4231_chan_fs(%struct.cs4231_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
