; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/imcsmb/extr_imcsmb_pci.c_imcsmb_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/imcsmb/extr_imcsmb_pci.c_imcsmb_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imcsmb_pci_softc = type { i64, i32* }

@.str = private unnamed_addr constant [7 x i8] c"imcsmb\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Child imcsmb not added\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@imcsmb_regs = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to attach children: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @imcsmb_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imcsmb_pci_attach(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.imcsmb_pci_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.imcsmb_pci_softc* @device_get_softc(i32* %7)
  store %struct.imcsmb_pci_softc* %8, %struct.imcsmb_pci_softc** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = load %struct.imcsmb_pci_softc*, %struct.imcsmb_pci_softc** %3, align 8
  %11 = getelementptr inbounds %struct.imcsmb_pci_softc, %struct.imcsmb_pci_softc* %10, i32 0, i32 1
  store i32* %9, i32** %11, align 8
  %12 = load %struct.imcsmb_pci_softc*, %struct.imcsmb_pci_softc** %3, align 8
  %13 = getelementptr inbounds %struct.imcsmb_pci_softc, %struct.imcsmb_pci_softc* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %33, %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load i32*, i32** %2, align 8
  %19 = call i32* @device_add_child(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 (i32*, i8*, ...) @device_printf(i32* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %5, align 4
  br label %45

26:                                               ; preds = %17
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** @imcsmb_regs, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @device_set_ivars(i32* %27, i32* %31)
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %14

36:                                               ; preds = %14
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @bus_generic_attach(i32* %37)
  store i32 %38, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (i32*, i8*, ...) @device_printf(i32* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %40, %22
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.imcsmb_pci_softc* @device_get_softc(i32*) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @device_set_ivars(i32*, i32*) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
