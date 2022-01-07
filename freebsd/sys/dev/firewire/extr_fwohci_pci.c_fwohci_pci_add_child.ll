; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci_pci.c_fwohci_pci_add_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci_pci.c_fwohci_pci_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [37 x i8] c"probe_and_attach failed with err=%d\0A\00", align 1
@cold = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i8*, i32)* @fwohci_pci_add_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fwohci_pci_add_child(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fwohci_softc*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @device_get_softc(i32* %14)
  %16 = inttoptr i64 %15 to %struct.fwohci_softc*
  store %struct.fwohci_softc* %16, %struct.fwohci_softc** %10, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32* @device_add_child(i32* %17, i8* %18, i32 %19)
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32*, i32** %11, align 8
  store i32* %24, i32** %5, align 8
  br label %60

25:                                               ; preds = %4
  %26 = load i32*, i32** %11, align 8
  %27 = load %struct.fwohci_softc*, %struct.fwohci_softc** %10, align 8
  %28 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32* %26, i32** %29, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.fwohci_softc*, %struct.fwohci_softc** %10, align 8
  %32 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %31, i32 0, i32 0
  %33 = call i32 @device_set_ivars(i32* %30, %struct.TYPE_3__* %32)
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @device_probe_and_attach(i32* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %25
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @device_printf(i32* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @fwohci_pci_detach(i32* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @device_delete_child(i32* %44, i32* %45)
  store i32* null, i32** %5, align 8
  br label %60

47:                                               ; preds = %25
  %48 = load i64, i64* @cold, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = call i32 @DELAY(i32 250)
  %52 = call i32 (...) @splfw()
  store i32 %52, i32* %13, align 4
  %53 = load %struct.fwohci_softc*, %struct.fwohci_softc** %10, align 8
  %54 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %53, i32 0, i32 0
  %55 = call i32 @fwohci_poll(%struct.TYPE_3__* %54, i32 0, i32 -1)
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @splx(i32 %56)
  br label %58

58:                                               ; preds = %50, %47
  %59 = load i32*, i32** %11, align 8
  store i32* %59, i32** %5, align 8
  br label %60

60:                                               ; preds = %58, %38, %23
  %61 = load i32*, i32** %5, align 8
  ret i32* %61
}

declare dso_local i64 @device_get_softc(i32*) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @device_printf(i32*, i8*, i32) #1

declare dso_local i32 @fwohci_pci_detach(i32*) #1

declare dso_local i32 @device_delete_child(i32*, i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @splfw(...) #1

declare dso_local i32 @fwohci_poll(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
