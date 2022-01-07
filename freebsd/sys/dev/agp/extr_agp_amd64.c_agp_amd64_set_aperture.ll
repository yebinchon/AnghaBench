; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_set_aperture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_set_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_amd64_softc = type { i32, i32, i32* }

@AGP_AMD64_TABLE_SIZE = common dso_local global i64 0, align 8
@agp_amd64_table = common dso_local global i64* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@AGP_AMD64_APCTRL = common dso_local global i32 0, align 4
@AGP_AMD64_APCTRL_SIZE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @agp_amd64_set_aperture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_amd64_set_aperture(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.agp_amd64_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.agp_amd64_softc* @device_get_softc(i32 %9)
  store %struct.agp_amd64_softc* %10, %struct.agp_amd64_softc** %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %24, %2
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @AGP_AMD64_TABLE_SIZE, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i64*, i64** @agp_amd64_table, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %27

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %7, align 8
  br label %11

27:                                               ; preds = %22, %11
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @AGP_AMD64_TABLE_SIZE, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %3, align 4
  br label %90

33:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %65, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %6, align 8
  %37 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %34
  %41 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %6, align 8
  %42 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AGP_AMD64_APCTRL, align 4
  %49 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %6, align 8
  %50 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AGP_AMD64_APCTRL, align 4
  %57 = call i64 @pci_cfgregread(i32 0, i32 %55, i32 3, i32 %56, i32 4)
  %58 = load i64, i64* @AGP_AMD64_APCTRL_SIZE_MASK, align 8
  %59 = xor i64 %58, -1
  %60 = and i64 %57, %59
  %61 = load i64, i64* %7, align 8
  %62 = shl i64 %61, 1
  %63 = or i64 %60, %62
  %64 = call i32 @pci_cfgregwrite(i32 0, i32 %47, i32 3, i32 %48, i64 %63, i32 4)
  br label %65

65:                                               ; preds = %40
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %34

68:                                               ; preds = %34
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @pci_get_vendor(i32 %69)
  switch i32 %70, label %89 [
    i32 4281, label %71
    i32 4318, label %75
    i32 4358, label %79
  ]

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @agp_amd64_uli_set_aperture(i32 %72, i64 %73)
  store i32 %74, i32* %3, align 4
  br label %90

75:                                               ; preds = %68
  %76 = load i32, i32* %4, align 4
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @agp_amd64_nvidia_set_aperture(i32 %76, i64 %77)
  store i32 %78, i32* %3, align 4
  br label %90

79:                                               ; preds = %68
  %80 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %6, align 8
  %81 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* %4, align 4
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @agp_amd64_via_set_aperture(i32 %85, i64 %86)
  store i32 %87, i32* %3, align 4
  br label %90

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %68, %88
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %84, %75, %71, %31
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.agp_amd64_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_cfgregwrite(i32, i32, i32, i32, i64, i32) #1

declare dso_local i64 @pci_cfgregread(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @agp_amd64_uli_set_aperture(i32, i64) #1

declare dso_local i32 @agp_amd64_nvidia_set_aperture(i32, i64) #1

declare dso_local i32 @agp_amd64_via_set_aperture(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
