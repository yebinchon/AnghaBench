; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_pci.c_ocs_intr_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_pci.c_ocs_intr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocs_softc = type { i32, i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, %struct.ocs_softc* }

@.str = private unnamed_addr constant [25 x i8] c"MSI-X allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"MSI allocation failed \0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"could not allocate interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s_intr_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocs_softc*)* @ocs_intr_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_intr_alloc(%struct.ocs_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocs_softc*, align 8
  store %struct.ocs_softc* %0, %struct.ocs_softc** %3, align 8
  %4 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %5 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %9, i32 0, i32 0
  %11 = call i64 @pci_alloc_msix(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %21, i32 0, i32 0
  %23 = call i64 @pci_alloc_msi(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %13
  %26 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %37

34:                                               ; preds = %13
  %35 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %25
  br label %41

38:                                               ; preds = %1
  %39 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SYS_RES_IRQ, align 4
  %46 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %46, i32 0, i32 1
  %48 = load i32, i32* @RF_ACTIVE, align 4
  %49 = load i32, i32* @RF_SHAREABLE, align 4
  %50 = or i32 %48, %49
  %51 = call i32* @bus_alloc_resource_any(i32 %44, i32 %45, i32* %47, i32 %50)
  %52 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %52, i32 0, i32 4
  store i32* %51, i32** %53, align 8
  %54 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* null, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %41
  %59 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %84

63:                                               ; preds = %41
  %64 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %68 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store %struct.ocs_softc* %67, %struct.ocs_softc** %70, align 8
  %71 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %72 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @device_get_nameunit(i32 %77)
  %79 = load %struct.ocs_softc*, %struct.ocs_softc** %3, align 8
  %80 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @snprintf(i32 %74, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %78, i32 %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %63, %58
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
