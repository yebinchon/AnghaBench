; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_amd64_softc = type { i32, i32, i32, i32* }

@AGP_AMD64_APCTRL = common dso_local global i32 0, align 4
@AGP_AMD64_APCTRL_GARTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_amd64_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_amd64_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_amd64_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.agp_amd64_softc* @device_get_softc(i32 %5)
  store %struct.agp_amd64_softc* %6, %struct.agp_amd64_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @agp_free_cdev(i32 %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %37, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %12 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %17 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AGP_AMD64_APCTRL, align 4
  %24 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %25 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AGP_AMD64_APCTRL, align 4
  %32 = call i32 @pci_cfgregread(i32 0, i32 %30, i32 3, i32 %31, i32 4)
  %33 = load i32, i32* @AGP_AMD64_APCTRL_GARTEN, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = call i32 @pci_cfgregwrite(i32 0, i32 %22, i32 3, i32 %23, i32 %35, i32 4)
  br label %37

37:                                               ; preds = %15
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %9

40:                                               ; preds = %9
  %41 = load i32, i32* %2, align 4
  %42 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %43 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @AGP_SET_APERTURE(i32 %41, i32 %44)
  %46 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %47 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @agp_free_gatt(i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @agp_free_res(i32 %50)
  ret i32 0
}

declare dso_local %struct.agp_amd64_softc* @device_get_softc(i32) #1

declare dso_local i32 @agp_free_cdev(i32) #1

declare dso_local i32 @pci_cfgregwrite(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pci_cfgregread(i32, i32, i32, i32, i32) #1

declare dso_local i32 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @agp_free_gatt(i32) #1

declare dso_local i32 @agp_free_res(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
