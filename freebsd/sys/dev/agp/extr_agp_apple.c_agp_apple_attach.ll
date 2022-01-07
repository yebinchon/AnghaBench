; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_apple.c_agp_apple_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_apple.c_agp_apple_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_apple_softc = type { i32, i32, i32, i64 }

@UNIN_AGP_BASE_ADDR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_apple_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_apple_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_apple_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.agp_apple_softc* @device_get_softc(i32 %6)
  store %struct.agp_apple_softc* %7, %struct.agp_apple_softc** %4, align 8
  %8 = load %struct.agp_apple_softc*, %struct.agp_apple_softc** %4, align 8
  %9 = getelementptr inbounds %struct.agp_apple_softc, %struct.agp_apple_softc* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.agp_apple_softc*, %struct.agp_apple_softc** %4, align 8
  %11 = getelementptr inbounds %struct.agp_apple_softc, %struct.agp_apple_softc* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @pci_get_devid(i32 %12)
  switch i32 %13, label %20 [
    i32 2101355, label %14
    i32 2560107, label %14
    i32 4919403, label %17
    i32 5771371, label %17
    i32 5836907, label %17
  ]

14:                                               ; preds = %1, %1
  %15 = load %struct.agp_apple_softc*, %struct.agp_apple_softc** %4, align 8
  %16 = getelementptr inbounds %struct.agp_apple_softc, %struct.agp_apple_softc* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %20

17:                                               ; preds = %1, %1, %1
  %18 = load %struct.agp_apple_softc*, %struct.agp_apple_softc** %4, align 8
  %19 = getelementptr inbounds %struct.agp_apple_softc, %struct.agp_apple_softc* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %1, %17, %14
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @UNIN_AGP_BASE_ADDR, align 4
  %23 = call i32 @pci_write_config(i32 %21, i32 %22, i32 0, i32 4)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @agp_set_aperture_resource(i32 %24, i32 -1)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @agp_generic_attach(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %75

32:                                               ; preds = %20
  %33 = load %struct.agp_apple_softc*, %struct.agp_apple_softc** %4, align 8
  %34 = getelementptr inbounds %struct.agp_apple_softc, %struct.agp_apple_softc* %33, i32 0, i32 2
  store i32 268435456, i32* %34, align 8
  %35 = load %struct.agp_apple_softc*, %struct.agp_apple_softc** %4, align 8
  %36 = getelementptr inbounds %struct.agp_apple_softc, %struct.agp_apple_softc* %35, i32 0, i32 2
  store i32 268435456, i32* %36, align 8
  br label %37

37:                                               ; preds = %53, %32
  %38 = load %struct.agp_apple_softc*, %struct.agp_apple_softc** %4, align 8
  %39 = getelementptr inbounds %struct.agp_apple_softc, %struct.agp_apple_softc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 4194304
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @agp_alloc_gatt(i32 %43)
  %45 = load %struct.agp_apple_softc*, %struct.agp_apple_softc** %4, align 8
  %46 = getelementptr inbounds %struct.agp_apple_softc, %struct.agp_apple_softc* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  %47 = load %struct.agp_apple_softc*, %struct.agp_apple_softc** %4, align 8
  %48 = getelementptr inbounds %struct.agp_apple_softc, %struct.agp_apple_softc* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %58

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.agp_apple_softc*, %struct.agp_apple_softc** %4, align 8
  %55 = getelementptr inbounds %struct.agp_apple_softc, %struct.agp_apple_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %56, 2
  store i32 %57, i32* %55, align 8
  br label %37

58:                                               ; preds = %51, %37
  %59 = load %struct.agp_apple_softc*, %struct.agp_apple_softc** %4, align 8
  %60 = getelementptr inbounds %struct.agp_apple_softc, %struct.agp_apple_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %61, 4194304
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @agp_generic_detach(i32 %64)
  %66 = load i32, i32* @ENOMEM, align 4
  store i32 %66, i32* %2, align 4
  br label %75

67:                                               ; preds = %58
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.agp_apple_softc*, %struct.agp_apple_softc** %4, align 8
  %70 = getelementptr inbounds %struct.agp_apple_softc, %struct.agp_apple_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @AGP_SET_APERTURE(i32 %68, i32 %71)
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @AGP_FLUSH_TLB(i32 %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %67, %63, %30
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.agp_apple_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @agp_set_aperture_resource(i32, i32) #1

declare dso_local i32 @agp_generic_attach(i32) #1

declare dso_local i64 @agp_alloc_gatt(i32) #1

declare dso_local i32 @agp_generic_detach(i32) #1

declare dso_local i32 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @AGP_FLUSH_TLB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
