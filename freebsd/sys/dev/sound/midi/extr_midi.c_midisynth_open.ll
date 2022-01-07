; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midisynth_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_midi.c_midisynth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.synth_midi = type { %struct.snd_midi* }

@.str = private unnamed_addr constant [22 x i8] c"midisynth_open %s %s\0A\00", align 1
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
@.str.4 = private unnamed_addr constant [28 x i8] c"midisynth_open: return %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midisynth_open(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_midi*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.synth_midi*
  %12 = getelementptr inbounds %struct.synth_midi, %struct.synth_midi* %11, i32 0, i32 0
  %13 = load %struct.snd_midi*, %struct.snd_midi** %12, align 8
  store %struct.snd_midi* %13, %struct.snd_midi** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @FREAD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @FWRITE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %25)
  %27 = call i32 @MIDI_DEBUG(i32 1, i32 %26)
  %28 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %29 = icmp eq %struct.snd_midi* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %4, align 4
  br label %157

32:                                               ; preds = %3
  %33 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %34 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %33, i32 0, i32 2
  %35 = call i32 @mtx_lock(i32* %34)
  %36 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %37 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %36, i32 0, i32 3
  %38 = call i32 @mtx_lock(i32* %37)
  store i32 0, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @FREAD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %32
  %44 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %45 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @MIDIQ_SIZE(i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %9, align 4
  br label %61

51:                                               ; preds = %43
  %52 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %53 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @M_RX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @EBUSY, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %51
  br label %61

61:                                               ; preds = %60, %49
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %146

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %32
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @FWRITE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %66
  %72 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %73 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @MIDIQ_SIZE(i32 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @ENXIO, align 4
  store i32 %78, i32* %9, align 4
  br label %89

79:                                               ; preds = %71
  %80 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %81 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @M_TX, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @EBUSY, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %86, %79
  br label %89

89:                                               ; preds = %88, %77
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %146

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %66
  %95 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %96 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @FREAD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %94
  %104 = load i32, i32* @M_RX, align 4
  %105 = load i32, i32* @M_RXEN, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %108 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %112 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @MIDIQ_CLEAR(i32 %113)
  %115 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %116 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %115, i32 0, i32 6
  store i64 0, i64* %116, align 8
  br label %117

117:                                              ; preds = %103, %94
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @FWRITE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = load i32, i32* @M_TX, align 4
  %124 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %125 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %129 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %128, i32 0, i32 5
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %122, %117
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @FREAD, align 4
  %133 = load i32, i32* @FWRITE, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %137 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %139 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %140 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %143 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @MPU_CALLBACK(%struct.snd_midi* %138, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %130, %92, %64
  %147 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %148 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %147, i32 0, i32 3
  %149 = call i32 @mtx_unlock(i32* %148)
  %150 = load %struct.snd_midi*, %struct.snd_midi** %8, align 8
  %151 = getelementptr inbounds %struct.snd_midi, %struct.snd_midi* %150, i32 0, i32 2
  %152 = call i32 @mtx_unlock(i32* %151)
  %153 = load i32, i32* %9, align 4
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %153)
  %155 = call i32 @MIDI_DEBUG(i32 2, i32 %154)
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %146, %30
  %158 = load i32, i32* %4, align 4
  ret i32 %158
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
