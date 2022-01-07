; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_info = type { i32, i64, i32 }

@ESS_PCI_LEGACYCONTROL = common dso_local global i32 0, align 4
@ESS_PCI_DDMACONTROL = common dso_local global i32 0, align 4
@ESS_PCI_CONFIG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ess_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ess_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ess_info*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ess_info* @pcm_getdevinfo(i32 %6)
  store %struct.ess_info* %7, %struct.ess_info** %5, align 8
  %8 = load %struct.ess_info*, %struct.ess_info** %5, align 8
  %9 = call i32 @ess_lock(%struct.ess_info* %8)
  %10 = load %struct.ess_info*, %struct.ess_info** %5, align 8
  %11 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @rman_get_start(i32 %12)
  %14 = or i32 %13, 1
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ESS_PCI_LEGACYCONTROL, align 4
  %17 = call i32 @pci_write_config(i32 %15, i32 %16, i32 32863, i32 2)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @ESS_PCI_DDMACONTROL, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @pci_write_config(i32 %18, i32 %19, i32 %20, i32 2)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ESS_PCI_CONFIG, align 4
  %24 = call i32 @pci_write_config(i32 %22, i32 %23, i32 0, i32 2)
  %25 = load %struct.ess_info*, %struct.ess_info** %5, align 8
  %26 = call i64 @ess_reset_dsp(%struct.ess_info* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.ess_info*, %struct.ess_info** %5, align 8
  %30 = call i32 @ess_unlock(%struct.ess_info* %29)
  br label %55

31:                                               ; preds = %1
  %32 = load %struct.ess_info*, %struct.ess_info** %5, align 8
  %33 = call i32 @ess_unlock(%struct.ess_info* %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @mixer_reinit(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %55

38:                                               ; preds = %31
  %39 = load %struct.ess_info*, %struct.ess_info** %5, align 8
  %40 = call i32 @ess_lock(%struct.ess_info* %39)
  %41 = load %struct.ess_info*, %struct.ess_info** %5, align 8
  %42 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.ess_info*, %struct.ess_info** %5, align 8
  %47 = call i32 @ess_setmixer(%struct.ess_info* %46, i32 113, i32 42)
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.ess_info*, %struct.ess_info** %5, align 8
  %50 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @port_wr(i32 %51, i32 7, i32 176, i32 1)
  %53 = load %struct.ess_info*, %struct.ess_info** %5, align 8
  %54 = call i32 @ess_unlock(%struct.ess_info* %53)
  store i32 0, i32* %2, align 4
  br label %57

55:                                               ; preds = %37, %28
  %56 = load i32, i32* @EIO, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %48
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.ess_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @ess_lock(%struct.ess_info*) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i64 @ess_reset_dsp(%struct.ess_info*) #1

declare dso_local i32 @ess_unlock(%struct.ess_info*) #1

declare dso_local i64 @mixer_reinit(i32) #1

declare dso_local i32 @ess_setmixer(%struct.ess_info*, i32, i32) #1

declare dso_local i32 @port_wr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
