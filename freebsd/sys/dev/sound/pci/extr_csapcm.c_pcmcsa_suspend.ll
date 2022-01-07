; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_pcmcsa_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_pcmcsa_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csa_info = type { i32 }

@BA1_PFIE = common dso_local global i32 0, align 4
@BA1_CIE = common dso_local global i32 0, align 4
@BA0_AC97_POWERDOWN = common dso_local global i32 0, align 4
@BA0_CLKCR1 = common dso_local global i32 0, align 4
@CLKCR1_SWCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pcmcsa_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcsa_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csa_info*, align 8
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.csa_info* @pcm_getdevinfo(i32 %5)
  store %struct.csa_info* %6, %struct.csa_info** %3, align 8
  %7 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %8 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %7, i32 0, i32 0
  store i32* %8, i32** %4, align 8
  %9 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %10 = call i32 @csa_active(%struct.csa_info* %9, i32 1)
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @BA1_PFIE, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @BA1_PFIE, align 4
  %15 = call i32 @csa_readmem(i32* %13, i32 %14)
  %16 = and i32 %15, -61504
  %17 = or i32 %16, 16
  %18 = call i32 @csa_writemem(i32* %11, i32 %12, i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @BA1_CIE, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @BA1_CIE, align 4
  %23 = call i32 @csa_readmem(i32* %21, i32 %22)
  %24 = and i32 %23, -64
  %25 = or i32 %24, 17
  %26 = call i32 @csa_writemem(i32* %19, i32 %20, i32 %25)
  %27 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %28 = call i32 @csa_stopplaydma(%struct.csa_info* %27)
  %29 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %30 = call i32 @csa_stopcapturedma(%struct.csa_info* %29)
  %31 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %32 = call i32 @csa_ac97_suspend(%struct.csa_info* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @csa_resetdsp(i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @csa_stopdsp(i32* %35)
  %37 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %38 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %37, i32 0, i32 0
  %39 = load i32, i32* @BA0_AC97_POWERDOWN, align 4
  %40 = call i32 @csa_writecodec(i32* %38, i32 %39, i32 768)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @BA0_CLKCR1, align 4
  %43 = call i32 @csa_writemem(i32* %41, i32 %42, i32 0)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @BA0_CLKCR1, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @BA0_CLKCR1, align 4
  %48 = call i32 @csa_readmem(i32* %46, i32 %47)
  %49 = load i32, i32* @CLKCR1_SWCE, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = call i32 @csa_writemem(i32* %44, i32 %45, i32 %51)
  %53 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %54 = call i32 @csa_active(%struct.csa_info* %53, i32 -1)
  ret i32 0
}

declare dso_local %struct.csa_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @csa_active(%struct.csa_info*, i32) #1

declare dso_local i32 @csa_writemem(i32*, i32, i32) #1

declare dso_local i32 @csa_readmem(i32*, i32) #1

declare dso_local i32 @csa_stopplaydma(%struct.csa_info*) #1

declare dso_local i32 @csa_stopcapturedma(%struct.csa_info*) #1

declare dso_local i32 @csa_ac97_suspend(%struct.csa_info*) #1

declare dso_local i32 @csa_resetdsp(i32*) #1

declare dso_local i32 @csa_stopdsp(i32*) #1

declare dso_local i32 @csa_writecodec(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
