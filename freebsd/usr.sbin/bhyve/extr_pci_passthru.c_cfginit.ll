; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_cfginit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_passthru.c_cfginit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { %struct.passthru_softc* }
%struct.passthru_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"failed to initialize MSI for PCI %d/%d/%d\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to initialize BARs for PCI %d/%d/%d\00", align 1
@PCIR_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.pci_devinst*, i32, i32, i32)* @cfginit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfginit(%struct.vmctx* %0, %struct.pci_devinst* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vmctx*, align 8
  %7 = alloca %struct.pci_devinst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.passthru_softc*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %6, align 8
  store %struct.pci_devinst* %1, %struct.pci_devinst** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %13 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %14 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %13, i32 0, i32 0
  %15 = load %struct.passthru_softc*, %struct.passthru_softc** %14, align 8
  store %struct.passthru_softc* %15, %struct.passthru_softc** %12, align 8
  %16 = load %struct.passthru_softc*, %struct.passthru_softc** %12, align 8
  %17 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %16, i32 0, i32 0
  %18 = call i32 @bzero(%struct.TYPE_3__* %17, i32 4)
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.passthru_softc*, %struct.passthru_softc** %12, align 8
  %21 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.passthru_softc*, %struct.passthru_softc** %12, align 8
  %25 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.passthru_softc*, %struct.passthru_softc** %12, align 8
  %29 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load %struct.passthru_softc*, %struct.passthru_softc** %12, align 8
  %32 = call i64 @cfginitmsi(%struct.passthru_softc* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %5
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37)
  br label %57

39:                                               ; preds = %5
  %40 = load %struct.vmctx*, %struct.vmctx** %6, align 8
  %41 = load %struct.passthru_softc*, %struct.passthru_softc** %12, align 8
  %42 = call i64 @cfginitbar(%struct.vmctx* %40, %struct.passthru_softc* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  br label %57

49:                                               ; preds = %39
  %50 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %51 = load i32, i32* @PCIR_COMMAND, align 4
  %52 = load %struct.passthru_softc*, %struct.passthru_softc** %12, align 8
  %53 = getelementptr inbounds %struct.passthru_softc, %struct.passthru_softc* %52, i32 0, i32 0
  %54 = load i32, i32* @PCIR_COMMAND, align 4
  %55 = call i32 @read_config(%struct.TYPE_3__* %53, i32 %54, i32 2)
  %56 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %50, i32 %51, i32 %55)
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %49, %44, %34
  %58 = load i32, i32* %11, align 4
  ret i32 %58
}

declare dso_local i32 @bzero(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @cfginitmsi(%struct.passthru_softc*) #1

declare dso_local i32 @warnx(i8*, i32, i32, i32) #1

declare dso_local i64 @cfginitbar(%struct.vmctx*, %struct.passthru_softc*) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @read_config(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
