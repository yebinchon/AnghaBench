; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an_isa.c_an_attach_isa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an_isa.c_an_attach_isa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i32, i32, i32, i32, i32 }

@INTR_TYPE_NET = common dso_local global i32 0, align 4
@an_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @an_attach_isa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @an_attach_isa(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.an_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.an_softc* @device_get_softc(i32 %7)
  store %struct.an_softc* %8, %struct.an_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_flags(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %13 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @an_alloc_port(i32 %11, i32 %14, i32 1)
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %18 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @an_alloc_irq(i32 %16, i32 %19, i32 0)
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %23 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @an_attach(%struct.an_softc* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @an_release_resources(i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %51

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %36 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @INTR_TYPE_NET, align 4
  %39 = load i32, i32* @an_intr, align 4
  %40 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %41 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %42 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %41, i32 0, i32 0
  %43 = call i32 @bus_setup_intr(i32 %34, i32 %37, i32 %38, i32* null, i32 %39, %struct.an_softc* %40, i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @an_release_resources(i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %46, %29
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.an_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32 @an_alloc_port(i32, i32, i32) #1

declare dso_local i32 @an_alloc_irq(i32, i32, i32) #1

declare dso_local i32 @an_attach(%struct.an_softc*, i32) #1

declare dso_local i32 @an_release_resources(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.an_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
