; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32*, i32*, i32, i32*, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*)* @bfe_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_release_resources(%struct.bfe_softc* %0) #0 {
  %2 = alloca %struct.bfe_softc*, align 8
  store %struct.bfe_softc* %0, %struct.bfe_softc** %2, align 8
  %3 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %4 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %15 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @bus_teardown_intr(i32 %10, i32* %13, i32* %16)
  br label %18

18:                                               ; preds = %7, %1
  %19 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SYS_RES_IRQ, align 4
  %28 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %29 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @bus_release_resource(i32 %26, i32 %27, i32 0, i32* %30)
  br label %32

32:                                               ; preds = %23, %18
  %33 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %34 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %39 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SYS_RES_MEMORY, align 4
  %42 = call i32 @PCIR_BAR(i32 0)
  %43 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %44 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @bus_release_resource(i32 %40, i32 %41, i32 %42, i32* %45)
  br label %47

47:                                               ; preds = %37, %32
  %48 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %49 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %54 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @if_free(i32* %55)
  br label %57

57:                                               ; preds = %52, %47
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @if_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
