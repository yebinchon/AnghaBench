; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { i32*, i8*, i8*, i32*, i8*, i8*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not map BAR0 memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"could not map BAR1 memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_softc*)* @vmxnet3_alloc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_alloc_resources(%struct.vmxnet3_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmxnet3_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %3, align 8
  %6 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %7 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = call i32 @PCIR_BAR(i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SYS_RES_MEMORY, align 4
  %12 = load i32, i32* @RF_ACTIVE, align 4
  %13 = call i8* @bus_alloc_resource_any(i32 %10, i32 %11, i32* %5, i32 %12)
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %15, i32 0, i32 3
  store i32* %14, i32** %16, align 8
  %17 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %18 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %67

25:                                               ; preds = %1
  %26 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %27 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i8* @rman_get_bustag(i32* %28)
  %30 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i8* @rman_get_bushandle(i32* %34)
  %36 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %37 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = call i32 @PCIR_BAR(i32 1)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SYS_RES_MEMORY, align 4
  %41 = load i32, i32* @RF_ACTIVE, align 4
  %42 = call i8* @bus_alloc_resource_any(i32 %39, i32 %40, i32* %5, i32 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %45 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %47 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %25
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %67

54:                                               ; preds = %25
  %55 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %56 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i8* @rman_get_bustag(i32* %57)
  %59 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %60 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %62 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i8* @rman_get_bushandle(i32* %63)
  %65 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %3, align 8
  %66 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %54, %50, %21
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i8* @rman_get_bustag(i32*) #1

declare dso_local i8* @rman_get_bushandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
