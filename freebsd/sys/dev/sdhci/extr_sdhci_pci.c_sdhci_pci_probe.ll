; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_pci.c_sdhci_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci_pci.c_sdhci_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8* }

@ENXIO = common dso_local global i32 0, align 4
@sdhci_devices = common dso_local global %struct.TYPE_2__* null, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@PCIC_BASEPERIPH = common dso_local global i64 0, align 8
@PCIS_BASEPERIPH_SDHC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Generic SD HCI\00", align 1
@BUS_PROBE_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sdhci_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @pci_get_device(i32 %9)
  %11 = trunc i64 %10 to i32
  %12 = shl i32 %11, 16
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @pci_get_vendor(i32 %13)
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @pci_get_subvendor(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @pci_get_class(i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @pci_get_subclass(i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %71, %1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdhci_devices, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %26
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdhci_devices, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %34
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdhci_devices, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 65535
  br i1 %50, label %60, label %51

51:                                               ; preds = %43
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdhci_devices, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %51, %43
  %61 = load i32, i32* %2, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdhci_devices, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @device_set_desc(i32 %61, i8* %67)
  %69 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %69, i32* %8, align 4
  br label %74

70:                                               ; preds = %51, %34
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %26

74:                                               ; preds = %60, %26
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @ENXIO, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* @PCIC_BASEPERIPH, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @PCIS_BASEPERIPH_SDHC, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @device_set_desc(i32 %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %89 = load i32, i32* @BUS_PROBE_GENERIC, align 4
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %86, %82, %78, %74
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
