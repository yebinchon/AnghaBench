; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_ac97_write_emulation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_ac97_write_emulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_pcm_info = type { i32*, i32 }

@M_MASTER_FRONT_L = common dso_local global i32 0, align 4
@M_MASTER_FRONT_R = common dso_local global i32 0, align 4
@M_FX0_FRONT_L = common dso_local global i32 0, align 4
@M_FX1_FRONT_R = common dso_local global i32 0, align 4
@M_MASTER_REC_L = common dso_local global i32 0, align 4
@M_MASTER_REC_R = common dso_local global i32 0, align 4
@EMU_AC97ADDR = common dso_local global i32 0, align 4
@EMU_AC97DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emu_pcm_info*, i32, i32)* @emu_ac97_write_emulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu_ac97_write_emulation(%struct.emu_pcm_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.emu_pcm_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.emu_pcm_info* %0, %struct.emu_pcm_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @AC97LEFT(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @BIT6_TO100(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @AC97RIGHT(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @BIT6_TO100(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @AC97MUTE(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %92 [
    i32 131, label %28
    i32 130, label %47
    i32 128, label %66
    i32 129, label %67
  ]

28:                                               ; preds = %26
  %29 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %30 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @M_MASTER_FRONT_L, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @emumix_set_volume(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %36 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @M_MASTER_FRONT_R, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @emumix_set_volume(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 48959
  %43 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %44 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 131
  store i32 %42, i32* %46, align 4
  store i32 32768, i32* %6, align 4
  br label %92

47:                                               ; preds = %26
  %48 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %49 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @M_FX0_FRONT_L, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @emumix_set_volume(i32 %50, i32 %51, i32 %52)
  %54 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %55 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @M_FX1_FRONT_R, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @emumix_set_volume(i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 48959
  %62 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %63 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 130
  store i32 %61, i32* %65, align 4
  store i32 32768, i32* %6, align 4
  br label %92

66:                                               ; preds = %26
  store i32 1285, i32* %6, align 4
  br label %92

67:                                               ; preds = %26
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @BIT4_TO100(i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @BIT4_TO100(i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %73 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @M_MASTER_REC_L, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 100, %76
  %78 = call i32 @emumix_set_volume(i32 %74, i32 %75, i32 %77)
  %79 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %80 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @M_MASTER_REC_R, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 100, %83
  %85 = call i32 @emumix_set_volume(i32 %81, i32 %82, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, 36623
  %88 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %89 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 129
  store i32 %87, i32* %91, align 4
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %26, %67, %66, %47, %28
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %97 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @EMU_AC97ADDR, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @emu_wr(i32 %98, i32 %99, i32 %100, i32 1)
  %102 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %103 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @EMU_AC97DATA, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @emu_wr(i32 %104, i32 %105, i32 %106, i32 2)
  br label %108

108:                                              ; preds = %95, %92
  ret void
}

declare dso_local i32 @AC97LEFT(i32) #1

declare dso_local i32 @BIT6_TO100(i32) #1

declare dso_local i32 @AC97RIGHT(i32) #1

declare dso_local i32 @AC97MUTE(i32) #1

declare dso_local i32 @emumix_set_volume(i32, i32, i32) #1

declare dso_local i32 @BIT4_TO100(i32) #1

declare dso_local i32 @emu_wr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
