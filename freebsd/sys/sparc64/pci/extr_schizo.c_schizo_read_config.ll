; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.schizo_softc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SCHIZO_MODE_SCZ = common dso_local global i64 0, align 8
@STX_CS_DEVICE = common dso_local global i64 0, align 8
@STX_CS_FUNC = common dso_local global i64 0, align 8
@PCI_REGMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i64, i32)* @schizo_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schizo_read_config(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.schizo_softc*, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.schizo_softc* @device_get_softc(i32 %15)
  store %struct.schizo_softc* %16, %struct.schizo_softc** %14, align 8
  %17 = load %struct.schizo_softc*, %struct.schizo_softc** %14, align 8
  %18 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SCHIZO_MODE_SCZ, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %6
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.schizo_softc*, %struct.schizo_softc** %14, align 8
  %25 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @STX_CS_DEVICE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @STX_CS_FUNC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = icmp sgt i64 %41, 128
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %58

44:                                               ; preds = %37, %33, %29, %22, %6
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @PCI_REGMAX, align 4
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @STX_CONF_OFF(i64 %47, i64 %48, i64 %49, i64 %50)
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @ofw_pci_read_config_common(i32 %45, i32 %46, i32 %51, i64 %52, i64 %53, i64 %54, i64 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %44, %43
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local %struct.schizo_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_pci_read_config_common(i32, i32, i32, i64, i64, i64, i64, i32) #1

declare dso_local i32 @STX_CONF_OFF(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
