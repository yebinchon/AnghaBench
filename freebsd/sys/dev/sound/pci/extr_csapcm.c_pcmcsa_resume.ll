; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_pcmcsa_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_pcmcsa_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csa_info = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@BA0_HISR = common dso_local global i32 0, align 4
@HISR_INTENA = common dso_local global i32 0, align 4
@BA0_HICR = common dso_local global i32 0, align 4
@HICR_IEV = common dso_local global i32 0, align 4
@HICR_CHGM = common dso_local global i32 0, align 4
@BA1_PFIE = common dso_local global i32 0, align 4
@BA1_CIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pcmcsa_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcsa_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.csa_info*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.csa_info* @pcm_getdevinfo(i32 %6)
  store %struct.csa_info* %7, %struct.csa_info** %4, align 8
  %8 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %9 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %8, i32 0, i32 2
  store i32* %9, i32** %5, align 8
  %10 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %11 = call i32 @csa_active(%struct.csa_info* %10, i32 1)
  %12 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %13 = call i32 @csa_stopplaydma(%struct.csa_info* %12)
  %14 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %15 = call i32 @csa_stopcapturedma(%struct.csa_info* %14)
  %16 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %17 = call i32 @csa_ac97_resume(%struct.csa_info* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @csa_startdsp(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %65

23:                                               ; preds = %1
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @BA0_HISR, align 4
  %26 = call i32 @csa_readio(i32* %24, i32 %25)
  %27 = load i32, i32* @HISR_INTENA, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @BA0_HICR, align 4
  %33 = load i32, i32* @HICR_IEV, align 4
  %34 = load i32, i32* @HICR_CHGM, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @csa_writeio(i32* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %23
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @BA1_PFIE, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @BA1_PFIE, align 4
  %42 = call i32 @csa_readmem(i32* %40, i32 %41)
  %43 = and i32 %42, -61504
  %44 = call i32 @csa_writemem(i32* %38, i32 %39, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @BA1_CIE, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @BA1_CIE, align 4
  %49 = call i32 @csa_readmem(i32* %47, i32 %48)
  %50 = and i32 %49, -64
  %51 = or i32 %50, 1
  %52 = call i32 @csa_writemem(i32* %45, i32 %46, i32 %51)
  %53 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %54 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %53, i32 0, i32 1
  %55 = call i32 @csa_setupchan(i32* %54)
  %56 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %57 = call i32 @csa_startplaydma(%struct.csa_info* %56)
  %58 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %59 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %58, i32 0, i32 0
  %60 = call i32 @csa_setupchan(i32* %59)
  %61 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %62 = call i32 @csa_startcapturedma(%struct.csa_info* %61)
  %63 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %64 = call i32 @csa_active(%struct.csa_info* %63, i32 -1)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %37, %21
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.csa_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @csa_active(%struct.csa_info*, i32) #1

declare dso_local i32 @csa_stopplaydma(%struct.csa_info*) #1

declare dso_local i32 @csa_stopcapturedma(%struct.csa_info*) #1

declare dso_local i32 @csa_ac97_resume(%struct.csa_info*) #1

declare dso_local i64 @csa_startdsp(i32*) #1

declare dso_local i32 @csa_readio(i32*, i32) #1

declare dso_local i32 @csa_writeio(i32*, i32, i32) #1

declare dso_local i32 @csa_writemem(i32*, i32, i32) #1

declare dso_local i32 @csa_readmem(i32*, i32) #1

declare dso_local i32 @csa_setupchan(i32*) #1

declare dso_local i32 @csa_startplaydma(%struct.csa_info*) #1

declare dso_local i32 @csa_startcapturedma(%struct.csa_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
