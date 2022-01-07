; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.snd_midi* }
%struct.snd_midi = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.uio = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"midi_write\0A\00", align 1
@M_TX = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"midi_write msleep\0A\00", align 1
@PCATCH = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"midi TX\00", align 1
@EINTR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"midiout: resid %zd len %jd avail %jd\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"midi_write: uiomove cc=%d\0A\00", align 1
@M_TXEN = common dso_local global i32 0, align 4
@MIDI_WSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midi_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
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
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @MIDI_DEBUG(i32 4, i32 %14)
  store i32 0, i32* %8, align 4
  %16 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %17 = icmp eq %struct.snd_midi* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %171

19:                                               ; preds = %3
  %20 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %21 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %20, i32 0, i32 2
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %24 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %23, i32 0, i32 3
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %27 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @M_TX, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  br label %164

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %162, %33
  %35 = load %struct.uio*, %struct.uio** %5, align 8
  %36 = getelementptr inbounds %struct.uio, %struct.uio* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %163

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %99, %39
  %41 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %42 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @MIDIQ_AVAIL(i32 %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %100

46:                                               ; preds = %40
  %47 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @O_NONBLOCK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %164

53:                                               ; preds = %46
  %54 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %55 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %54, i32 0, i32 2
  %56 = call i32 @mtx_unlock(i32* %55)
  %57 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %58 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @MIDI_DEBUG(i32 3, i32 %59)
  %61 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %62 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %61, i32 0, i32 1
  %63 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %64 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %63, i32 0, i32 3
  %65 = load i32, i32* @PCATCH, align 4
  %66 = load i32, i32* @PDROP, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @msleep(i32* %62, i32* %64, i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @EINTR, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  br label %171

73:                                               ; preds = %53
  %74 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %75 = load %struct.cdev*, %struct.cdev** %4, align 8
  %76 = getelementptr inbounds %struct.cdev, %struct.cdev* %75, i32 0, i32 0
  %77 = load %struct.snd_midi*, %struct.snd_midi** %76, align 8
  %78 = icmp ne %struct.snd_midi* %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %79, %73
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %171

85:                                               ; preds = %81
  %86 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %87 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %86, i32 0, i32 2
  %88 = call i32 @mtx_lock(i32* %87)
  %89 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %90 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %89, i32 0, i32 3
  %91 = call i32 @mtx_lock(i32* %90)
  %92 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %93 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  %94 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %95 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %85
  br label %164

99:                                               ; preds = %85
  br label %40

100:                                              ; preds = %40
  %101 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %102 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @MIDIQ_AVAIL(i32 %103)
  %105 = load %struct.uio*, %struct.uio** %5, align 8
  %106 = getelementptr inbounds %struct.uio, %struct.uio* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @MIN(i32 %104, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @MIN(i32 %109, i32 32)
  store i32 %110, i32* %9, align 4
  %111 = load %struct.uio*, %struct.uio** %5, align 8
  %112 = getelementptr inbounds %struct.uio, %struct.uio* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %115 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @MIDIQ_LEN(i32 %116)
  %118 = trunc i64 %117 to i32
  %119 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %120 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @MIDIQ_AVAIL(i32 %121)
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %118, i32 %122)
  %124 = call i32 @MIDI_DEBUG(i32 5, i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = call i32 @MIDI_DEBUG(i32 5, i32 %126)
  %128 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.uio*, %struct.uio** %5, align 8
  %131 = call i32 @uiomove(i8* %128, i32 %129, %struct.uio* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %100
  br label %164

135:                                              ; preds = %100
  %136 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %137 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @MIDIQ_ENQ(i32 %138, i8* %139, i32 %140)
  %142 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %143 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @M_TXEN, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %162, label %148

148:                                              ; preds = %135
  %149 = load i32, i32* @M_TXEN, align 4
  %150 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %151 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %155 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %156 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %159 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @MPU_CALLBACK(%struct.snd_midi* %154, i32 %157, i32 %160)
  br label %162

162:                                              ; preds = %148, %135
  br label %34

163:                                              ; preds = %34
  store i32 0, i32* %8, align 4
  br label %164

164:                                              ; preds = %163, %134, %98, %52, %32
  %165 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %166 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %165, i32 0, i32 3
  %167 = call i32 @mtx_unlock(i32* %166)
  %168 = load %struct.snd_midi*, %struct.snd_midi** %7, align 8
  %169 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %168, i32 0, i32 2
  %170 = call i32 @mtx_unlock(i32* %169)
  br label %171

171:                                              ; preds = %164, %84, %72, %18
  %172 = load i32, i32* %8, align 4
  ret i32 %172
}

declare dso_local i32 @MIDI_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @MIDIQ_AVAIL(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @MIDIQ_LEN(i32) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

declare dso_local i32 @MIDIQ_ENQ(i32, i8*, i32) #1

declare dso_local i32 @MPU_CALLBACK(%struct.snd_midi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
