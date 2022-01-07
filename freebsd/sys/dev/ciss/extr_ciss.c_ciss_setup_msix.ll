; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_setup_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_setup_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ciss_softc = type { i32, i32*, i32 }

@ciss_vendor_data = common dso_local global %struct.TYPE_2__* null, align 8
@CISS_BOARD_NOMSI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CISS_MSI_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"got %d MSI messages]\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Using %d MSIX interrupt%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*)* @ciss_setup_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_setup_msix(%struct.ciss_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  %6 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @ciss_lookup(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ciss_vendor_data, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CISS_BOARD_NOMSI, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %2, align 4
  br label %95

21:                                               ; preds = %1
  %22 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pci_msix_count(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @CISS_MSI_COUNT, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %21
  %30 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pci_msi_count(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @CISS_MSI_COUNT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %2, align 4
  br label %95

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %21
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @CISS_MSI_COUNT, align 4
  %48 = call i32 @MIN(i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @pci_alloc_msix(i32 %51, i32* %4)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %45
  %55 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @pci_alloc_msi(i32 %57, i32* %4)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %2, align 4
  br label %95

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %45
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* @bootverbose, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 1
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %76 = call i32 @ciss_printf(%struct.ciss_softc* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %71, i8* %75)
  br label %77

77:                                               ; preds = %69, %63
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %91, %77
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  %85 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %86 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %78

94:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %60, %42, %19
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @ciss_lookup(i32) #1

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @pci_msi_count(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @pci_alloc_msix(i32, i32*) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
