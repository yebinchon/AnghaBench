; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_rtas_pci.c_rtaspci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_rtas_pci.c_rtaspci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtaspci_softc = type { i64, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"read-pci-config\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"write-pci-config\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"ibm,read-pci-config\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ibm,write-pci-config\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ibm,pci-config-space-type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rtaspci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtaspci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtaspci_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.rtaspci_softc* @device_get_softc(i32 %5)
  store %struct.rtaspci_softc* %6, %struct.rtaspci_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ofw_bus_get_node(i32 %7)
  %9 = load %struct.rtaspci_softc*, %struct.rtaspci_softc** %4, align 8
  %10 = getelementptr inbounds %struct.rtaspci_softc, %struct.rtaspci_softc* %9, i32 0, i32 5
  %11 = bitcast i32* %10 to i64*
  %12 = call i32 @OF_getencprop(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %11, i32 4)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %1
  %17 = call i8* @rtas_token_lookup(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.rtaspci_softc*, %struct.rtaspci_softc** %4, align 8
  %19 = getelementptr inbounds %struct.rtaspci_softc, %struct.rtaspci_softc* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = call i8* @rtas_token_lookup(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.rtaspci_softc*, %struct.rtaspci_softc** %4, align 8
  %22 = getelementptr inbounds %struct.rtaspci_softc, %struct.rtaspci_softc* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = call i8* @rtas_token_lookup(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %24 = load %struct.rtaspci_softc*, %struct.rtaspci_softc** %4, align 8
  %25 = getelementptr inbounds %struct.rtaspci_softc, %struct.rtaspci_softc* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = call i8* @rtas_token_lookup(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %27 = load %struct.rtaspci_softc*, %struct.rtaspci_softc** %4, align 8
  %28 = getelementptr inbounds %struct.rtaspci_softc, %struct.rtaspci_softc* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.rtaspci_softc*, %struct.rtaspci_softc** %4, align 8
  %30 = getelementptr inbounds %struct.rtaspci_softc, %struct.rtaspci_softc* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ofw_bus_get_node(i32 %31)
  %33 = load %struct.rtaspci_softc*, %struct.rtaspci_softc** %4, align 8
  %34 = getelementptr inbounds %struct.rtaspci_softc, %struct.rtaspci_softc* %33, i32 0, i32 0
  %35 = call i32 @OF_getencprop(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64* %34, i32 8)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @ofw_pci_attach(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %16, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.rtaspci_softc* @device_get_softc(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i8* @rtas_token_lookup(i8*) #1

declare dso_local i32 @ofw_pci_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
