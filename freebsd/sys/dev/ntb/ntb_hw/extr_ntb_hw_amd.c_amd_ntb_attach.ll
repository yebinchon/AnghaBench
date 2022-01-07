; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amd_ntb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_ntb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd_ntb_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.amd_ntb_softc* @device_get_softc(i32 %5)
  store %struct.amd_ntb_softc* %6, %struct.amd_ntb_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %9 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %11 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pci_enable_busmaster(i32 %12)
  %14 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %15 = call i32 @amd_ntb_map_pci_bars(%struct.amd_ntb_softc* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %34

19:                                               ; preds = %1
  %20 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %21 = call i32 @amd_ntb_init(%struct.amd_ntb_softc* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %34

25:                                               ; preds = %19
  %26 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %27 = call i32 @amd_init_side_info(%struct.amd_ntb_softc* %26)
  %28 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %29 = call i32 @amd_ntb_spad_clear(%struct.amd_ntb_softc* %28)
  %30 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %31 = call i32 @amd_ntb_sysctl_init(%struct.amd_ntb_softc* %30)
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @ntb_register_device(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %25, %24, %18
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @amd_ntb_detach(i32 %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.amd_ntb_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @amd_ntb_map_pci_bars(%struct.amd_ntb_softc*) #1

declare dso_local i32 @amd_ntb_init(%struct.amd_ntb_softc*) #1

declare dso_local i32 @amd_init_side_info(%struct.amd_ntb_softc*) #1

declare dso_local i32 @amd_ntb_spad_clear(%struct.amd_ntb_softc*) #1

declare dso_local i32 @amd_ntb_sysctl_init(%struct.amd_ntb_softc*) #1

declare dso_local i32 @ntb_register_device(i32) #1

declare dso_local i32 @amd_ntb_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
