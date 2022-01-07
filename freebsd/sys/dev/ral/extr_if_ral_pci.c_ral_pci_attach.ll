; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_if_ral_pci.c_ral_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_if_ral_pci.c_ral_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, i32)*, i32 }
%struct.ral_pci_softc = type { i32, %struct.TYPE_6__*, i32*, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rt2560_softc }
%struct.rt2560_softc = type { i32, i32, i32 }

@ral_rt2560_opns = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ral_rt2661_opns = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ral_rt2860_opns = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ral_msi_disable = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not allocate interrupt resource\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"could not set up interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ral_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ral_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ral_pci_softc*, align 8
  %5 = alloca %struct.rt2560_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ral_pci_softc* @device_get_softc(i32 %9)
  store %struct.ral_pci_softc* %10, %struct.ral_pci_softc** %4, align 8
  %11 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.rt2560_softc* %13, %struct.rt2560_softc** %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @pci_enable_busmaster(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @pci_get_device(i32 %16)
  switch i32 %17, label %24 [
    i32 513, label %18
    i32 769, label %21
    i32 770, label %21
    i32 1025, label %21
  ]

18:                                               ; preds = %1
  %19 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %19, i32 0, i32 1
  store %struct.TYPE_6__* @ral_rt2560_opns, %struct.TYPE_6__** %20, align 8
  br label %27

21:                                               ; preds = %1, %1, %1
  %22 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %22, i32 0, i32 1
  store %struct.TYPE_6__* @ral_rt2661_opns, %struct.TYPE_6__** %23, align 8
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %25, i32 0, i32 1
  store %struct.TYPE_6__* @ral_rt2860_opns, %struct.TYPE_6__** %26, align 8
  br label %27

27:                                               ; preds = %24, %21, %18
  %28 = call i32 @PCIR_BAR(i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = load i32, i32* @RF_ACTIVE, align 4
  %32 = call i8* @bus_alloc_resource_any(i32 %29, i32 %30, i32* %8, i32 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %34, i32 0, i32 3
  store i32* %33, i32** %35, align 8
  %36 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %147

44:                                               ; preds = %27
  %45 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %46 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @rman_get_bustag(i32* %47)
  %49 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %50 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %52 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @rman_get_bushandle(i32* %53)
  %55 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %56 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %58 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  store i32 0, i32* %8, align 4
  %59 = load i64, i64* @ral_msi_disable, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %44
  store i32 1, i32* %6, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @pci_alloc_msi(i32 %62, i32* %6)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 1, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %61
  br label %67

67:                                               ; preds = %66, %44
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @SYS_RES_IRQ, align 4
  %70 = load i32, i32* @RF_ACTIVE, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @RF_SHAREABLE, align 4
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i32 [ 0, %73 ], [ %75, %74 ]
  %78 = or i32 %70, %77
  %79 = call i8* @bus_alloc_resource_any(i32 %68, i32 %69, i32* %8, i32 %78)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %82 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %81, i32 0, i32 2
  store i32* %80, i32** %82, align 8
  %83 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %84 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %103

87:                                               ; preds = %76
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @device_printf(i32 %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @pci_release_msi(i32 %90)
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @SYS_RES_MEMORY, align 4
  %94 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %95 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @rman_get_rid(i32* %96)
  %98 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %99 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @bus_release_resource(i32 %92, i32 %93, i32 %97, i32* %100)
  %102 = load i32, i32* @ENXIO, align 4
  store i32 %102, i32* %2, align 4
  br label %147

103:                                              ; preds = %76
  %104 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %105 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32 (i32, i32)*, i32 (i32, i32)** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @pci_get_device(i32 %110)
  %112 = call i32 %108(i32 %109, i32 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %103
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @ral_pci_detach(i32 %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %147

119:                                              ; preds = %103
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %122 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* @INTR_TYPE_NET, align 4
  %125 = load i32, i32* @INTR_MPSAFE, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %128 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %133 = load %struct.ral_pci_softc*, %struct.ral_pci_softc** %4, align 8
  %134 = getelementptr inbounds %struct.ral_pci_softc, %struct.ral_pci_softc* %133, i32 0, i32 0
  %135 = call i32 @bus_setup_intr(i32 %120, i32* %123, i32 %126, i32* null, i32 %131, %struct.ral_pci_softc* %132, i32* %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %119
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @device_printf(i32 %139, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @ral_pci_detach(i32 %141)
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %2, align 4
  br label %147

144:                                              ; preds = %119
  %145 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %146 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %145, i32 0, i32 0
  store i32 0, i32* %146, align 4
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %144, %138, %115, %87, %40
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.ral_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @ral_pci_detach(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.ral_pci_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
