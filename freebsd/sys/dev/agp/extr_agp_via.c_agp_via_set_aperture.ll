; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_via.c_agp_via_set_aperture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_via.c_agp_via_set_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_via_softc = type { i32* }

@via_v2_regs = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@REG_APSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Invalid aperture size (%dMb)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @agp_via_set_aperture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_via_set_aperture(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.agp_via_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.agp_via_softc* @device_get_softc(i32 %10)
  store %struct.agp_via_softc* %11, %struct.agp_via_softc** %6, align 8
  %12 = load %struct.agp_via_softc*, %struct.agp_via_softc** %6, align 8
  %13 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32*, i32** @via_v2_regs, align 8
  %16 = icmp eq i32* %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  %20 = ashr i32 %19, 20
  %21 = xor i32 %20, 255
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = xor i32 %22, 255
  %24 = shl i32 %23, 20
  %25 = or i32 %24, 1048575
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %3, align 4
  br label %82

31:                                               ; preds = %17
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.agp_via_softc*, %struct.agp_via_softc** %6, align 8
  %34 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @REG_APSIZE, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @pci_write_config(i32 %32, i32 %38, i32 %39, i32 1)
  br label %81

41:                                               ; preds = %2
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %53 [
    i32 -2147483648, label %43
    i32 1073741824, label %44
    i32 536870912, label %45
    i32 268435456, label %46
    i32 134217728, label %47
    i32 67108864, label %48
    i32 33554432, label %49
    i32 16777216, label %50
    i32 8388608, label %51
    i32 4194304, label %52
  ]

43:                                               ; preds = %41
  store i32 2048, i32* %8, align 4
  br label %60

44:                                               ; preds = %41
  store i32 3072, i32* %8, align 4
  br label %60

45:                                               ; preds = %41
  store i32 3584, i32* %8, align 4
  br label %60

46:                                               ; preds = %41
  store i32 3840, i32* %8, align 4
  br label %60

47:                                               ; preds = %41
  store i32 3872, i32* %8, align 4
  br label %60

48:                                               ; preds = %41
  store i32 3888, i32* %8, align 4
  br label %60

49:                                               ; preds = %41
  store i32 3896, i32* %8, align 4
  br label %60

50:                                               ; preds = %41
  store i32 3900, i32* %8, align 4
  br label %60

51:                                               ; preds = %41
  store i32 3902, i32* %8, align 4
  br label %60

52:                                               ; preds = %41
  store i32 3903, i32* %8, align 4
  br label %60

53:                                               ; preds = %41
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sdiv i32 %55, 1024
  %57 = sdiv i32 %56, 1024
  %58 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %3, align 4
  br label %82

60:                                               ; preds = %52, %51, %50, %49, %48, %47, %46, %45, %44, %43
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.agp_via_softc*, %struct.agp_via_softc** %6, align 8
  %63 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @REG_APSIZE, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pci_read_config(i32 %61, i32 %67, i32 2)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.agp_via_softc*, %struct.agp_via_softc** %6, align 8
  %71 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @REG_APSIZE, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, -4096
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @pci_write_config(i32 %69, i32 %75, i32 %79, i32 2)
  br label %81

81:                                               ; preds = %60, %31
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %53, %29
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.agp_via_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
