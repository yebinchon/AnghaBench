; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.snd_midi* }
%struct.snd_midi = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i32 }
%struct.thread = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"midiopen %p %s %s\0A\00", align 1
@FREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"M_RX\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"M_TX\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_RX = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@M_TX = common dso_local global i32 0, align 4
@M_RXEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"midi_open: opened.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midi_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.snd_midi*, align 8
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load %struct.cdev*, %struct.cdev** %6, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %12, i32 0, i32 0
  %14 = load %struct.snd_midi*, %struct.snd_midi** %13, align 8
  store %struct.snd_midi* %14, %struct.snd_midi** %10, align 8
  %15 = load %struct.thread*, %struct.thread** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @FREAD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @FWRITE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.thread* %15, i8* %21, i8* %27)
  %29 = call i32 @MIDI_DEBUG(i32 1, i32 %28)
  %30 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %31 = icmp eq %struct.snd_midi* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %5, align 4
  br label %153

34:                                               ; preds = %4
  %35 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %36 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %35, i32 0, i32 1
  %37 = call i32 @mtx_lock(i32* %36)
  %38 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %39 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %38, i32 0, i32 2
  %40 = call i32 @mtx_lock(i32* %39)
  store i32 0, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @FREAD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %34
  %46 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %47 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @MIDIQ_SIZE(i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %11, align 4
  br label %63

53:                                               ; preds = %45
  %54 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %55 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @M_RX, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @EBUSY, align 4
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %60, %53
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %145

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %34
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @FWRITE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %68
  %74 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %75 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @MIDIQ_SIZE(i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %11, align 4
  br label %91

81:                                               ; preds = %73
  %82 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %83 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @M_TX, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @EBUSY, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %88, %81
  br label %91

91:                                               ; preds = %90, %79
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %145

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95, %68
  %97 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %98 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  %101 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %102 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %101, i32 0, i32 7
  store i64 0, i64* %102, align 8
  %103 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %104 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %103, i32 0, i32 6
  store i64 0, i64* %104, align 8
  %105 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %106 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %105, i32 0, i32 5
  store i64 0, i64* %106, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @FREAD, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %96
  %112 = load i32, i32* @M_RX, align 4
  %113 = load i32, i32* @M_RXEN, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %116 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %120 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @MIDIQ_CLEAR(i32 %121)
  br label %123

123:                                              ; preds = %111, %96
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @FWRITE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load i32, i32* @M_TX, align 4
  %130 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %131 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %128, %123
  %135 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %136 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %137 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %140 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @MPU_CALLBACK(%struct.snd_midi* %135, i32 %138, i32 %141)
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %144 = call i32 @MIDI_DEBUG(i32 2, i32 %143)
  br label %145

145:                                              ; preds = %134, %94, %66
  %146 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %147 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %146, i32 0, i32 2
  %148 = call i32 @mtx_unlock(i32* %147)
  %149 = load %struct.snd_midi*, %struct.snd_midi** %10, align 8
  %150 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %149, i32 0, i32 1
  %151 = call i32 @mtx_unlock(i32* %150)
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %145, %32
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @MIDI_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @MIDIQ_SIZE(i32) #1

declare dso_local i32 @MIDIQ_CLEAR(i32) #1

declare dso_local i32 @MPU_CALLBACK(%struct.snd_midi*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
