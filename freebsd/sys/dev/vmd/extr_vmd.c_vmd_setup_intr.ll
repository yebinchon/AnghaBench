; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd.c_vmd_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmd/extr_vmd.c_vmd_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.vmd_irq_handler = type { i8*, i32, i32*, i32 }
%struct.vmd_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@vmd_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**)* @vmd_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmd_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca %struct.vmd_irq_handler*, align 8
  %18 = alloca %struct.vmd_softc*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store %struct.resource* %2, %struct.resource** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8** %7, i8*** %16, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.vmd_softc* @device_get_softc(i32 %20)
  store %struct.vmd_softc* %21, %struct.vmd_softc** %18, align 8
  store i32 0, i32* %19, align 4
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = load i32, i32* @M_NOWAIT, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.vmd_irq_handler* @malloc(i32 32, i32 %22, i32 %25)
  store %struct.vmd_irq_handler* %26, %struct.vmd_irq_handler** %17, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.vmd_irq_handler*, %struct.vmd_irq_handler** %17, align 8
  %29 = getelementptr inbounds %struct.vmd_irq_handler, %struct.vmd_irq_handler* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load %struct.vmd_irq_handler*, %struct.vmd_irq_handler** %17, align 8
  %32 = getelementptr inbounds %struct.vmd_irq_handler, %struct.vmd_irq_handler* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load %struct.resource*, %struct.resource** %11, align 8
  %34 = call i32 @rman_get_rid(%struct.resource* %33)
  %35 = load %struct.vmd_irq_handler*, %struct.vmd_irq_handler** %17, align 8
  %36 = getelementptr inbounds %struct.vmd_irq_handler, %struct.vmd_irq_handler* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = load %struct.vmd_irq_handler*, %struct.vmd_irq_handler** %17, align 8
  %39 = getelementptr inbounds %struct.vmd_irq_handler, %struct.vmd_irq_handler* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.vmd_softc*, %struct.vmd_softc** %18, align 8
  %41 = getelementptr inbounds %struct.vmd_softc, %struct.vmd_softc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.vmd_irq_handler*, %struct.vmd_irq_handler** %17, align 8
  %48 = load i32, i32* @vmd_link, align 4
  %49 = call i32 @TAILQ_INSERT_TAIL(i32* %46, %struct.vmd_irq_handler* %47, i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.resource*, %struct.resource** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = load i8**, i8*** %16, align 8
  %58 = call i32 @bus_generic_setup_intr(i32 %50, i32 %51, %struct.resource* %52, i32 %53, i32* %54, i32* %55, i8* %56, i8** %57)
  ret i32 %58
}

declare dso_local %struct.vmd_softc* @device_get_softc(i32) #1

declare dso_local %struct.vmd_irq_handler* @malloc(i32, i32, i32) #1

declare dso_local i32 @rman_get_rid(%struct.resource*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.vmd_irq_handler*, i32) #1

declare dso_local i32 @bus_generic_setup_intr(i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
