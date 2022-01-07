; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_ac97_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_ac97_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csa_info = type { i32*, i32, i32, i32 }

@CS461x_AC97_HIGHESTREGTORESTORE = common dso_local global i32 0, align 4
@CS461x_AC97_NUMBER_RESTORE_REGS = common dso_local global i32 0, align 4
@BA0_AC97_RESET = common dso_local global i64 0, align 8
@BA0_AC97_MASTER_VOLUME = common dso_local global i64 0, align 8
@BA0_AC97_HEADPHONE_VOLUME = common dso_local global i64 0, align 8
@BA0_AC97_MASTER_VOLUME_MONO = common dso_local global i64 0, align 8
@BA0_AC97_PCM_OUT_VOLUME = common dso_local global i64 0, align 8
@BA0_AC97_POWERDOWN = common dso_local global i64 0, align 8
@BA0_AC97_GENERAL_PURPOSE = common dso_local global i64 0, align 8
@CS_AC97_POWER_CONTROL_MIXVON = common dso_local global i32 0, align 4
@CS_AC97_POWER_CONTROL_ADC = common dso_local global i32 0, align 4
@CS_AC97_POWER_CONTROL_DAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csa_info*)* @csa_ac97_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csa_ac97_suspend(%struct.csa_info* %0) #0 {
  %2 = alloca %struct.csa_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.csa_info* %0, %struct.csa_info** %2, align 8
  store i32 2, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @CS461x_AC97_HIGHESTREGTORESTORE, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @CS461x_AC97_NUMBER_RESTORE_REGS, align 4
  %13 = icmp slt i32 %11, %12
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i1 [ false, %6 ], [ %13, %10 ]
  br i1 %15, label %16, label %35

16:                                               ; preds = %14
  %17 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %18 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %17, i32 0, i32 3
  %19 = load i64, i64* @BA0_AC97_RESET, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %24 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @csa_readcodec(i32* %18, i64 %22, i32* %28)
  br label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %6

35:                                               ; preds = %14
  %36 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %37 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %36, i32 0, i32 3
  %38 = load i64, i64* @BA0_AC97_MASTER_VOLUME, align 8
  %39 = call i32 @csa_writecodec(i32* %37, i64 %38, i32 32768)
  %40 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %41 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %40, i32 0, i32 3
  %42 = load i64, i64* @BA0_AC97_HEADPHONE_VOLUME, align 8
  %43 = call i32 @csa_writecodec(i32* %41, i64 %42, i32 32768)
  %44 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %45 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %44, i32 0, i32 3
  %46 = load i64, i64* @BA0_AC97_MASTER_VOLUME_MONO, align 8
  %47 = call i32 @csa_writecodec(i32* %45, i64 %46, i32 32768)
  %48 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %49 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %48, i32 0, i32 3
  %50 = load i64, i64* @BA0_AC97_PCM_OUT_VOLUME, align 8
  %51 = call i32 @csa_writecodec(i32* %49, i64 %50, i32 32768)
  %52 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %53 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %52, i32 0, i32 3
  %54 = load i64, i64* @BA0_AC97_POWERDOWN, align 8
  %55 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %56 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %55, i32 0, i32 1
  %57 = call i32 @csa_readcodec(i32* %53, i64 %54, i32* %56)
  %58 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %59 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %58, i32 0, i32 3
  %60 = load i64, i64* @BA0_AC97_GENERAL_PURPOSE, align 8
  %61 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %62 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %61, i32 0, i32 2
  %63 = call i32 @csa_readcodec(i32* %59, i64 %60, i32* %62)
  %64 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %65 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %64, i32 0, i32 3
  %66 = load i64, i64* @BA0_AC97_POWERDOWN, align 8
  %67 = call i32 @csa_readcodec(i32* %65, i64 %66, i32* %5)
  %68 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %69 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %68, i32 0, i32 3
  %70 = load i64, i64* @BA0_AC97_POWERDOWN, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @CS_AC97_POWER_CONTROL_MIXVON, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @csa_writecodec(i32* %69, i64 %70, i32 %73)
  %75 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %76 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %75, i32 0, i32 3
  %77 = load i64, i64* @BA0_AC97_POWERDOWN, align 8
  %78 = call i32 @csa_readcodec(i32* %76, i64 %77, i32* %5)
  %79 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %80 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %79, i32 0, i32 3
  %81 = load i64, i64* @BA0_AC97_POWERDOWN, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @CS_AC97_POWER_CONTROL_ADC, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @csa_writecodec(i32* %80, i64 %81, i32 %84)
  %86 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %87 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %86, i32 0, i32 3
  %88 = load i64, i64* @BA0_AC97_POWERDOWN, align 8
  %89 = call i32 @csa_readcodec(i32* %87, i64 %88, i32* %5)
  %90 = load %struct.csa_info*, %struct.csa_info** %2, align 8
  %91 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %90, i32 0, i32 3
  %92 = load i64, i64* @BA0_AC97_POWERDOWN, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @CS_AC97_POWER_CONTROL_DAC, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @csa_writecodec(i32* %91, i64 %92, i32 %95)
  ret void
}

declare dso_local i32 @csa_readcodec(i32*, i64, i32*) #1

declare dso_local i32 @csa_writecodec(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
