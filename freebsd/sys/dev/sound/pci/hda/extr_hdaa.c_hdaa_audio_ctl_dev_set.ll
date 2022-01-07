; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_dev_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_dev_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_audio_ctl = type { i32*, i32*, i32* }

@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_audio_ctl*, i32, i32, i32*, i32*)* @hdaa_audio_ctl_dev_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_audio_ctl_dev_set(%struct.hdaa_audio_ctl* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.hdaa_audio_ctl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hdaa_audio_ctl* %0, %struct.hdaa_audio_ctl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %22 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %30 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %37 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %97, %5
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %100

46:                                               ; preds = %42
  %47 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %48 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %14, align 4
  %56 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %57 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %15, align 4
  %65 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %66 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %16, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %46
  br label %97

78:                                               ; preds = %46
  %79 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %80 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %12, align 4
  %88 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %89 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %78, %77
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %42

100:                                              ; preds = %42
  %101 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @QDB2VAL(%struct.hdaa_audio_ctl* %101, i32 %102)
  store i32 %103, i32* %17, align 4
  %104 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @QDB2VAL(%struct.hdaa_audio_ctl* %104, i32 %105)
  store i32 %106, i32* %18, align 4
  %107 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %18, align 4
  %111 = call i32 @hdaa_audio_ctl_amp_set(%struct.hdaa_audio_ctl* %107, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %113 = load i32, i32* %17, align 4
  %114 = call i64 @VAL2QDB(%struct.hdaa_audio_ctl* %112, i32 %113)
  %115 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %116 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @QDB2VAL(%struct.hdaa_audio_ctl* %116, i32 %117)
  %119 = call i64 @VAL2QDB(%struct.hdaa_audio_ctl* %115, i32 %118)
  %120 = sub nsw i64 %114, %119
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = sub nsw i64 %123, %120
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 4
  %126 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %127 = load i32, i32* %18, align 4
  %128 = call i64 @VAL2QDB(%struct.hdaa_audio_ctl* %126, i32 %127)
  %129 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %130 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %6, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @QDB2VAL(%struct.hdaa_audio_ctl* %130, i32 %131)
  %133 = call i64 @VAL2QDB(%struct.hdaa_audio_ctl* %129, i32 %132)
  %134 = sub nsw i64 %128, %133
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = sub nsw i64 %137, %134
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %135, align 4
  ret void
}

declare dso_local i32 @QDB2VAL(%struct.hdaa_audio_ctl*, i32) #1

declare dso_local i32 @hdaa_audio_ctl_amp_set(%struct.hdaa_audio_ctl*, i32, i32, i32) #1

declare dso_local i64 @VAL2QDB(%struct.hdaa_audio_ctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
