; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_vinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_vinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i64 }
%struct.emu_voice = type { i32, i32, i32, i32, i32, %struct.emu_voice*, i32, i64, i64, i64, i64, i32*, i64 }
%struct.snd_dbuf = type { i32 }

@EMUPAGESIZE = common dso_local global i32 0, align 4
@FXBUS_MIDI_CHORUS = common dso_local global i32 0, align 4
@FXBUS_PCM_RIGHT = common dso_local global i32 0, align 4
@FXBUS_PCM_LEFT = common dso_local global i32 0, align 4
@FXBUS_MIDI_REVERB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*, %struct.emu_voice*, %struct.emu_voice*, i32, %struct.snd_dbuf*)* @emu_vinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_vinit(%struct.sc_info* %0, %struct.emu_voice* %1, %struct.emu_voice* %2, i32 %3, %struct.snd_dbuf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_info*, align 8
  %8 = alloca %struct.emu_voice*, align 8
  %9 = alloca %struct.emu_voice*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_dbuf*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %7, align 8
  store %struct.emu_voice* %1, %struct.emu_voice** %8, align 8
  store %struct.emu_voice* %2, %struct.emu_voice** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.snd_dbuf* %4, %struct.snd_dbuf** %11, align 8
  %14 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i8* @emu_memalloc(%struct.sc_info* %14, i32 %15, i32* %13)
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %147

20:                                               ; preds = %5
  %21 = load %struct.snd_dbuf*, %struct.snd_dbuf** %11, align 8
  %22 = icmp ne %struct.snd_dbuf* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.snd_dbuf*, %struct.snd_dbuf** %11, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @sndbuf_setup(%struct.snd_dbuf* %24, i8* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %20
  %29 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @emu_memstart(%struct.sc_info* %29, i8* %30)
  %32 = load i32, i32* @EMUPAGESIZE, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %35 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %37 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %43 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %42, i32 0, i32 12
  store i64 %41, i64* %43, align 8
  %44 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %45 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %44, i32 0, i32 11
  store i32* null, i32** %45, align 8
  %46 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %47 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %46, i32 0, i32 10
  store i64 0, i64* %47, align 8
  %48 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %49 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %48, i32 0, i32 9
  store i64 0, i64* %49, align 8
  %50 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %51 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %50, i32 0, i32 8
  store i64 0, i64* %51, align 8
  %52 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %53 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %52, i32 0, i32 7
  store i64 0, i64* %53, align 8
  %54 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %55 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %57 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %56, i32 0, i32 2
  store i32 255, i32* %57, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %60 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %62 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %63 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %62, i32 0, i32 5
  store %struct.emu_voice* %61, %struct.emu_voice** %63, align 8
  %64 = load %struct.sc_info*, %struct.sc_info** %7, align 8
  %65 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %28
  %69 = load i32, i32* @FXBUS_MIDI_CHORUS, align 4
  %70 = load i32, i32* @FXBUS_PCM_RIGHT, align 4
  %71 = shl i32 %70, 8
  %72 = or i32 %69, %71
  %73 = load i32, i32* @FXBUS_PCM_LEFT, align 4
  %74 = shl i32 %73, 16
  %75 = or i32 %72, %74
  %76 = load i32, i32* @FXBUS_MIDI_REVERB, align 4
  %77 = shl i32 %76, 24
  %78 = or i32 %75, %77
  %79 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %80 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %82 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %81, i32 0, i32 4
  store i32 1061109567, i32* %82, align 8
  br label %98

83:                                               ; preds = %28
  %84 = load i32, i32* @FXBUS_MIDI_CHORUS, align 4
  %85 = load i32, i32* @FXBUS_PCM_RIGHT, align 4
  %86 = shl i32 %85, 4
  %87 = or i32 %84, %86
  %88 = load i32, i32* @FXBUS_PCM_LEFT, align 4
  %89 = shl i32 %88, 8
  %90 = or i32 %87, %89
  %91 = load i32, i32* @FXBUS_MIDI_REVERB, align 4
  %92 = shl i32 %91, 12
  %93 = or i32 %90, %92
  %94 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %95 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %97 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %96, i32 0, i32 4
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %83, %68
  %99 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %100 = icmp ne %struct.emu_voice* %99, null
  br i1 %100, label %101, label %146

101:                                              ; preds = %98
  %102 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %103 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %106 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %108 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %107, i32 0, i32 12
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %111 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %110, i32 0, i32 12
  store i64 %109, i64* %111, align 8
  %112 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %113 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %112, i32 0, i32 11
  store i32* null, i32** %113, align 8
  %114 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %115 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %114, i32 0, i32 10
  store i64 0, i64* %115, align 8
  %116 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %117 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %116, i32 0, i32 9
  store i64 0, i64* %117, align 8
  %118 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %119 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %118, i32 0, i32 8
  store i64 0, i64* %119, align 8
  %120 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %121 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %120, i32 0, i32 7
  store i64 0, i64* %121, align 8
  %122 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %123 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %122, i32 0, i32 1
  store i32 0, i32* %123, align 4
  %124 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %125 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %128 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %130 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %133 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 8
  %134 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %135 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %138 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load %struct.emu_voice*, %struct.emu_voice** %8, align 8
  %140 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %143 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  %144 = load %struct.emu_voice*, %struct.emu_voice** %9, align 8
  %145 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %144, i32 0, i32 5
  store %struct.emu_voice* null, %struct.emu_voice** %145, align 8
  br label %146

146:                                              ; preds = %101, %98
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %146, %19
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i8* @emu_memalloc(%struct.sc_info*, i32, i32*) #1

declare dso_local i32 @sndbuf_setup(%struct.snd_dbuf*, i8*, i32) #1

declare dso_local i32 @emu_memstart(%struct.sc_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
