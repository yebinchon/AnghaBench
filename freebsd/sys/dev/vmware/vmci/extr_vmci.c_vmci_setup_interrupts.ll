; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_setup_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci.c_vmci_setup_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_softc = type { i32, i32, %struct.vmci_interrupt* }
%struct.vmci_interrupt = type { i32, i32 }

@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_EXCL = common dso_local global i32 0, align 4
@vmci_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"vmci_interrupt\00", align 1
@vmci_interrupt_bm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"vmci_interrupt_bm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_softc*)* @vmci_setup_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_setup_interrupts(%struct.vmci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmci_softc*, align 8
  %4 = alloca %struct.vmci_interrupt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vmci_softc* %0, %struct.vmci_softc** %3, align 8
  %7 = load i32, i32* @INTR_TYPE_NET, align 4
  %8 = load i32, i32* @INTR_MPSAFE, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @INTR_EXCL, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %20 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %19, i32 0, i32 2
  %21 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %20, align 8
  %22 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %21, i64 0
  store %struct.vmci_interrupt* %22, %struct.vmci_interrupt** %4, align 8
  %23 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %24 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %4, align 8
  %27 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @vmci_interrupt, align 4
  %31 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %4, align 8
  %32 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %31, i32 0, i32 0
  %33 = call i32 @bus_setup_intr(i32 %25, i32 %28, i32 %29, i32* null, i32 %30, i32* null, i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %18
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %85

38:                                               ; preds = %18
  %39 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %40 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %4, align 8
  %43 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %4, align 8
  %46 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bus_describe_intr(i32 %41, i32 %44, i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %50 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %84

53:                                               ; preds = %38
  %54 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %55 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %54, i32 0, i32 2
  %56 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %55, align 8
  %57 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %56, i64 1
  store %struct.vmci_interrupt* %57, %struct.vmci_interrupt** %4, align 8
  %58 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %59 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %4, align 8
  %62 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @vmci_interrupt_bm, align 4
  %66 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %4, align 8
  %67 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %66, i32 0, i32 0
  %68 = call i32 @bus_setup_intr(i32 %60, i32 %63, i32 %64, i32* null, i32 %65, i32* null, i32* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %53
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %85

73:                                               ; preds = %53
  %74 = load %struct.vmci_softc*, %struct.vmci_softc** %3, align 8
  %75 = getelementptr inbounds %struct.vmci_softc, %struct.vmci_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %4, align 8
  %78 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.vmci_interrupt*, %struct.vmci_interrupt** %4, align 8
  %81 = getelementptr inbounds %struct.vmci_interrupt, %struct.vmci_interrupt* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bus_describe_intr(i32 %76, i32 %79, i32 %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %73, %38
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %71, %36
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @bus_describe_intr(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
