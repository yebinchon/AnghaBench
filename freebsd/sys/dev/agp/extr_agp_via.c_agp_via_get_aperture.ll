; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_via.c_agp_via_get_aperture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_via.c_agp_via_get_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_via_softc = type { i32* }

@via_v2_regs = common dso_local global i32* null, align 8
@REG_APSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Invalid aperture setting 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_via_get_aperture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_via_get_aperture(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_via_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.agp_via_softc* @device_get_softc(i32 %6)
  store %struct.agp_via_softc* %7, %struct.agp_via_softc** %4, align 8
  %8 = load %struct.agp_via_softc*, %struct.agp_via_softc** %4, align 8
  %9 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32*, i32** @via_v2_regs, align 8
  %12 = icmp eq i32* %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.agp_via_softc*, %struct.agp_via_softc** %4, align 8
  %16 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @REG_APSIZE, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pci_read_config(i32 %14, i32 %20, i32 1)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = xor i32 %22, 255
  %24 = shl i32 %23, 20
  %25 = or i32 %24, 1048575
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %59

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.agp_via_softc*, %struct.agp_via_softc** %4, align 8
  %30 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @REG_APSIZE, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pci_read_config(i32 %28, i32 %34, i32 2)
  %36 = and i32 %35, 4095
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %48 [
    i32 2048, label %38
    i32 3072, label %39
    i32 3584, label %40
    i32 3840, label %41
    i32 3872, label %42
    i32 3888, label %43
    i32 3896, label %44
    i32 3900, label %45
    i32 3902, label %46
    i32 3903, label %47
  ]

38:                                               ; preds = %27
  store i32 -2147483648, i32* %2, align 4
  br label %59

39:                                               ; preds = %27
  store i32 1073741824, i32* %2, align 4
  br label %59

40:                                               ; preds = %27
  store i32 536870912, i32* %2, align 4
  br label %59

41:                                               ; preds = %27
  store i32 268435456, i32* %2, align 4
  br label %59

42:                                               ; preds = %27
  store i32 134217728, i32* %2, align 4
  br label %59

43:                                               ; preds = %27
  store i32 67108864, i32* %2, align 4
  br label %59

44:                                               ; preds = %27
  store i32 33554432, i32* %2, align 4
  br label %59

45:                                               ; preds = %27
  store i32 16777216, i32* %2, align 4
  br label %59

46:                                               ; preds = %27
  store i32 8388608, i32* %2, align 4
  br label %59

47:                                               ; preds = %27
  store i32 4194304, i32* %2, align 4
  br label %59

48:                                               ; preds = %27
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.agp_via_softc*, %struct.agp_via_softc** %4, align 8
  %52 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @REG_APSIZE, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pci_read_config(i32 %50, i32 %56, i32 2)
  %58 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %13
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.agp_via_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
