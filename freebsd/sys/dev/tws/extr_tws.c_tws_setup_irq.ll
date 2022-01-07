; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_setup_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32, i32*, i32, i8** }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Using legacy INTx\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pci alloc msi fail\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Using MSI\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tws_softc*)* @tws_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tws_setup_irq(%struct.tws_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tws_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %3, align 8
  %5 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %6 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %111 [
    i32 129, label %8
    i32 128, label %54
  ]

8:                                                ; preds = %1
  %9 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %10 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %12 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %16 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SYS_RES_IRQ, align 4
  %19 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %20 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* @RF_SHAREABLE, align 4
  %24 = load i32, i32* @RF_ACTIVE, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @bus_alloc_resource_any(i32 %17, i32 %18, i32* %22, i32 %25)
  %27 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %28 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %27, i32 0, i32 4
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  store i8* %26, i8** %30, align 8
  %31 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %32 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %31, i32 0, i32 4
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %8
  %38 = load i32, i32* @FAILURE, align 4
  store i32 %38, i32* %2, align 4
  br label %113

39:                                               ; preds = %8
  %40 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %41 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %42 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @tws_setup_intr(%struct.tws_softc* %40, i32 %43)
  %45 = load i32, i32* @FAILURE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @FAILURE, align 4
  store i32 %48, i32* %2, align 4
  br label %113

49:                                               ; preds = %39
  %50 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %51 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %111

54:                                               ; preds = %1
  %55 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %56 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %58 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 1, i32* %60, align 4
  store i32 1, i32* %4, align 4
  %61 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %62 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pci_alloc_msi(i32 %63, i32* %4)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %54
  %67 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @TWS_TRACE(%struct.tws_softc* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %68)
  %70 = load i32, i32* @FAILURE, align 4
  store i32 %70, i32* %2, align 4
  br label %113

71:                                               ; preds = %54
  %72 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %73 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SYS_RES_IRQ, align 4
  %76 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %77 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* @RF_SHAREABLE, align 4
  %81 = load i32, i32* @RF_ACTIVE, align 4
  %82 = or i32 %80, %81
  %83 = call i8* @bus_alloc_resource_any(i32 %74, i32 %75, i32* %79, i32 %82)
  %84 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %85 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %84, i32 0, i32 4
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  store i8* %83, i8** %87, align 8
  %88 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %89 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %88, i32 0, i32 4
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %71
  %95 = load i32, i32* @FAILURE, align 4
  store i32 %95, i32* %2, align 4
  br label %113

96:                                               ; preds = %71
  %97 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %98 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %99 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @tws_setup_intr(%struct.tws_softc* %97, i32 %100)
  %102 = load i32, i32* @FAILURE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @FAILURE, align 4
  store i32 %105, i32* %2, align 4
  br label %113

106:                                              ; preds = %96
  %107 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %108 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %111

111:                                              ; preds = %1, %106, %49
  %112 = load i32, i32* @SUCCESS, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %104, %94, %66, %47, %37
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @tws_setup_intr(%struct.tws_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @TWS_TRACE(%struct.tws_softc*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
