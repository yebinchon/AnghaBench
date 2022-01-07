; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_port_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_port_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { %struct.sfxge_port }
%struct.sfxge_port = type { i64, i32*, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SFXGE_PORT_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Port not initialized\00", align 1
@SFXGE_PORT_UNINITIALIZED = common dso_local global i64 0, align 8
@EFX_LINK_UNKNOWN = common dso_local global i32 0, align 4
@M_SFXGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfxge_port_fini(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca %struct.sfxge_port*, align 8
  %4 = alloca i32*, align 8
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %5 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %6 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %5, i32 0, i32 0
  store %struct.sfxge_port* %6, %struct.sfxge_port** %3, align 8
  %7 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %8 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32* %9, i32** %4, align 8
  %10 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %11 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SFXGE_PORT_INITIALIZED, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @SFXGE_PORT_UNINITIALIZED, align 8
  %18 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %19 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @EFX_LINK_UNKNOWN, align 4
  %21 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %22 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %24 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = call i32 @sfxge_dma_free(i32* %25)
  %27 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %28 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @M_SFXGE, align 4
  %32 = call i32 @free(i32 %30, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @sfxge_dma_free(i32* %33)
  %35 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %36 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @M_SFXGE, align 4
  %40 = call i32 @free(i32 %38, i32 %39)
  %41 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %42 = call i32 @SFXGE_PORT_LOCK_DESTROY(%struct.sfxge_port* %41)
  %43 = load %struct.sfxge_port*, %struct.sfxge_port** %3, align 8
  %44 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sfxge_dma_free(i32*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @SFXGE_PORT_LOCK_DESTROY(%struct.sfxge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
