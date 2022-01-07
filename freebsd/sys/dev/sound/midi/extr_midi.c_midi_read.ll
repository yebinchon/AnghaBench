; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.snd_midi* }
%struct.snd_midi = type { i32, i32, i32, i32, i32, i32 }
%struct.uio = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"midiread: count=%lu\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@M_RX = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"midi RX\00", align 1
@EINTR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"midi_read start\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"midiread: uiomove cc=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"midi_read: ret %d\0A\00", align 1
@MIDI_RSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midi_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_midi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cdev*, %struct.cdev** %4, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load %struct.snd_midi*, %struct.snd_midi** %12, align 8
  store %struct.snd_midi* %13, %struct.snd_midi** %7, align 8
  %14 = load %struct.uio*, %struct.uio** %5, align 8
  %15 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = call i32 @MIDI_DEBUG(i32 5, i32 %18)
  %20 = load i32, i32* @EIO, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %22 = icmp eq %struct.snd_midi* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %141

24:                                               ; preds = %3
  %25 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %26 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %25, i32 0, i32 2
  %27 = call i32 @mtx_lock(i32* %26)
  %28 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %29 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %28, i32 0, i32 3
  %30 = call i32 @mtx_lock(i32* %29)
  %31 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %32 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @M_RX, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  br label %134

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %132, %38
  %40 = load %struct.uio*, %struct.uio** %5, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %133

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %102, %44
  %46 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %47 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @MIDIQ_EMPTY(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %103

51:                                               ; preds = %45
  %52 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @O_NONBLOCK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %134

58:                                               ; preds = %51
  %59 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %60 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %59, i32 0, i32 2
  %61 = call i32 @mtx_unlock(i32* %60)
  %62 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %63 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %65 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %64, i32 0, i32 1
  %66 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %67 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %66, i32 0, i32 3
  %68 = load i32, i32* @PCATCH, align 4
  %69 = load i32, i32* @PDROP, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @msleep(i32* %65, i32* %67, i32 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @EINTR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  br label %141

76:                                               ; preds = %58
  %77 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %78 = load %struct.cdev*, %struct.cdev** %4, align 8
  %79 = getelementptr inbounds %struct.cdev, %struct.cdev* %78, i32 0, i32 0
  %80 = load %struct.snd_midi*, %struct.snd_midi** %79, align 8
  %81 = icmp ne %struct.snd_midi* %77, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %82, %76
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %141

88:                                               ; preds = %84
  %89 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %90 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %89, i32 0, i32 2
  %91 = call i32 @mtx_lock(i32* %90)
  %92 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %93 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %92, i32 0, i32 3
  %94 = call i32 @mtx_lock(i32* %93)
  %95 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %96 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %98 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %88
  br label %134

102:                                              ; preds = %88
  br label %45

103:                                              ; preds = %45
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %105 = call i32 @MIDI_DEBUG(i32 6, i32 %104)
  %106 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %107 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @MIDIQ_LEN(i32 %108)
  %110 = load %struct.uio*, %struct.uio** %5, align 8
  %111 = getelementptr inbounds %struct.uio, %struct.uio* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @MIN(i32 %109, i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @MIN(i32 %114, i32 32)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = call i32 @MIDI_DEBUG(i32 6, i32 %117)
  %119 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %120 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @MIDIQ_DEQ(i32 %121, i8* %122, i32 %123)
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.uio*, %struct.uio** %5, align 8
  %128 = call i32 @uiomove(i8* %125, i32 %126, %struct.uio* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %103
  br label %134

132:                                              ; preds = %103
  br label %39

133:                                              ; preds = %39
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %133, %131, %101, %57, %37
  %135 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %136 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %135, i32 0, i32 3
  %137 = call i32 @mtx_unlock(i32* %136)
  %138 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %139 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %138, i32 0, i32 2
  %140 = call i32 @mtx_unlock(i32* %139)
  br label %141

141:                                              ; preds = %134, %87, %75, %23
  %142 = load i32, i32* %8, align 4
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  %144 = call i32 @MIDI_DEBUG(i32 4, i32 %143)
  %145 = load i32, i32* %8, align 4
  ret i32 %145
}

declare dso_local i32 @MIDI_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @MIDIQ_EMPTY(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MIDIQ_LEN(i32) #1

declare dso_local i32 @MIDIQ_DEQ(i32, i8*, i32) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
