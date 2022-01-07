; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_rtas_pci.c_rtaspci_write_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_rtas_pci.c_rtaspci_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtaspci_softc = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32)* @rtaspci_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtaspci_write_config(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtaspci_softc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.rtaspci_softc* @device_get_softc(i32 %18)
  store %struct.rtaspci_softc* %19, %struct.rtaspci_softc** %15, align 8
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, 255
  %22 = shl i32 %21, 16
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, 31
  %25 = shl i32 %24, 11
  %26 = or i32 %22, %25
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %27, 7
  %29 = shl i32 %28, 8
  %30 = or i32 %26, %29
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, 255
  %33 = or i32 %30, %32
  store i32 %33, i32* %16, align 4
  %34 = load %struct.rtaspci_softc*, %struct.rtaspci_softc** %15, align 8
  %35 = getelementptr inbounds %struct.rtaspci_softc, %struct.rtaspci_softc* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %7
  %39 = load i32, i32* %12, align 4
  %40 = and i32 %39, 3840
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %16, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %38, %7
  %45 = load %struct.rtaspci_softc*, %struct.rtaspci_softc** %15, align 8
  %46 = getelementptr inbounds %struct.rtaspci_softc, %struct.rtaspci_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.rtaspci_softc*, %struct.rtaspci_softc** %15, align 8
  %51 = getelementptr inbounds %struct.rtaspci_softc, %struct.rtaspci_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %16, align 4
  %54 = load %struct.rtaspci_softc*, %struct.rtaspci_softc** %15, align 8
  %55 = getelementptr inbounds %struct.rtaspci_softc, %struct.rtaspci_softc* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rtaspci_softc*, %struct.rtaspci_softc** %15, align 8
  %59 = getelementptr inbounds %struct.rtaspci_softc, %struct.rtaspci_softc* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 (i32, i32, i32, i32, i32, i32, ...) @rtas_call_method(i32 %52, i32 5, i32 1, i32 %53, i32 %57, i32 %61, i32 %62, i32 %63, i32* %17)
  br label %73

65:                                               ; preds = %44
  %66 = load %struct.rtaspci_softc*, %struct.rtaspci_softc** %15, align 8
  %67 = getelementptr inbounds %struct.rtaspci_softc, %struct.rtaspci_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 (i32, i32, i32, i32, i32, i32, ...) @rtas_call_method(i32 %68, i32 3, i32 1, i32 %69, i32 %70, i32 %71, i32* %17)
  br label %73

73:                                               ; preds = %65, %49
  ret void
}

declare dso_local %struct.rtaspci_softc* @device_get_softc(i32) #1

declare dso_local i32 @rtas_call_method(i32, i32, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
