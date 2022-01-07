; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midisynth_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midisynth_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi = type { i32, i32, i32, i32, i32, i32 }
%struct.synth_midi = type { %struct.snd_midi* }

@.str = private unnamed_addr constant [23 x i8] c"midisynth_close %s %s\0A\00", align 1
@FREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"M_RX\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"M_TX\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_RX = common dso_local global i32 0, align 4
@M_TX = common dso_local global i32 0, align 4
@M_RXEN = common dso_local global i32 0, align 4
@M_TXEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"midi_close: closed, busy = %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midisynth_close(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.snd_midi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.synth_midi*
  %9 = getelementptr inbounds %struct.synth_midi, %struct.synth_midi* %8, i32 0, i32 0
  %10 = load %struct.snd_midi*, %struct.snd_midi** %9, align 8
  store %struct.snd_midi* %10, %struct.snd_midi** %4, align 8
  %11 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %12 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FREAD, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %19 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %20 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FWRITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %26)
  %28 = call i32 @MIDI_DEBUG(i32 1, i32 %27)
  %29 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %30 = icmp eq %struct.snd_midi* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %143

33:                                               ; preds = %1
  %34 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %35 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %34, i32 0, i32 3
  %36 = call i32 @mtx_lock(i32* %35)
  %37 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %38 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %37, i32 0, i32 4
  %39 = call i32 @mtx_lock(i32* %38)
  %40 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %41 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FREAD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %33
  %47 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %48 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @M_RX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %46, %33
  %54 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %55 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FWRITE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %62 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @M_TX, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %60, %46
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %5, align 4
  br label %141

69:                                               ; preds = %60, %53
  %70 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %71 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %75 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %6, align 4
  %77 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %78 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FREAD, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %69
  %84 = load i32, i32* @M_RX, align 4
  %85 = load i32, i32* @M_RXEN, align 4
  %86 = or i32 %84, %85
  %87 = xor i32 %86, -1
  %88 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %89 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %83, %69
  %93 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %94 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @FWRITE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load i32, i32* @M_TX, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %103 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %99, %92
  %107 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %108 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @M_TXEN, align 4
  %111 = load i32, i32* @M_RXEN, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @M_RXEN, align 4
  %116 = load i32, i32* @M_TXEN, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %113, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %106
  %121 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %122 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %123 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %126 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @MPU_CALLBACK(%struct.snd_midi* %121, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %120, %106
  %130 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %131 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  %134 = call i32 @MIDI_DEBUG(i32 1, i32 %133)
  %135 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %136 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %135, i32 0, i32 4
  %137 = call i32 @mtx_unlock(i32* %136)
  %138 = load %struct.snd_midi*, %struct.snd_midi** %4, align 8
  %139 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %138, i32 0, i32 3
  %140 = call i32 @mtx_unlock(i32* %139)
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %129, %67
  %142 = load i32, i32* %5, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %141, %31
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @MIDI_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @MPU_CALLBACK(%struct.snd_midi*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
