; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carp_softc = type { i32, i32, i32, i32, i32, i32, i32, %struct.ifnet*, i8*, i32, i32 }
%struct.ifnet = type { %struct.carp_if* }
%struct.carp_if = type { i32 }

@carp_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@M_CARP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CARP_DFLTINTV = common dso_local global i32 0, align 4
@INIT = common dso_local global i32 0, align 4
@CALLOUT_RETURNUNLOCKED = common dso_local global i32 0, align 4
@sc_list = common dso_local global i32 0, align 4
@carp_mtx = common dso_local global i32 0, align 4
@carp_list = common dso_local global i32 0, align 4
@sc_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.carp_softc* (%struct.ifnet*)* @carp_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.carp_softc* @carp_alloc(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.carp_softc*, align 8
  %4 = alloca %struct.carp_if*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %5 = load i32, i32* @SA_XLOCKED, align 4
  %6 = call i32 @sx_assert(i32* @carp_sx, i32 %5)
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.carp_if*, %struct.carp_if** %8, align 8
  store %struct.carp_if* %9, %struct.carp_if** %4, align 8
  %10 = icmp eq %struct.carp_if* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %13 = call %struct.carp_if* @carp_alloc_if(%struct.ifnet* %12)
  store %struct.carp_if* %13, %struct.carp_if** %4, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* @M_CARP, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @malloc(i32 56, i32 %15, i32 %18)
  %20 = bitcast i8* %19 to %struct.carp_softc*
  store %struct.carp_softc* %20, %struct.carp_softc** %3, align 8
  %21 = load i32, i32* @CARP_DFLTINTV, align 4
  %22 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %23 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 4
  %24 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %25 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %27 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* @INIT, align 4
  %29 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %30 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 8
  %31 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %32 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %31, i32 0, i32 2
  store i32 8, i32* %32, align 8
  %33 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %34 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @M_CARP, align 4
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = load i32, i32* @M_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = call i8* @malloc(i32 %35, i32 %36, i32 %39)
  %41 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %42 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %41, i32 0, i32 8
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %44 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %45 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %44, i32 0, i32 7
  store %struct.ifnet* %43, %struct.ifnet** %45, align 8
  %46 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %47 = call i32 @CARP_LOCK_INIT(%struct.carp_softc* %46)
  %48 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %49 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %48, i32 0, i32 4
  %50 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %51 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %50, i32 0, i32 3
  %52 = load i32, i32* @CALLOUT_RETURNUNLOCKED, align 4
  %53 = call i32 @callout_init_mtx(i32* %49, i32* %51, i32 %52)
  %54 = load %struct.carp_if*, %struct.carp_if** %4, align 8
  %55 = call i32 @CIF_LOCK(%struct.carp_if* %54)
  %56 = load %struct.carp_if*, %struct.carp_if** %4, align 8
  %57 = getelementptr inbounds %struct.carp_if, %struct.carp_if* %56, i32 0, i32 0
  %58 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %59 = load i32, i32* @sc_list, align 4
  %60 = call i32 @TAILQ_INSERT_TAIL(i32* %57, %struct.carp_softc* %58, i32 %59)
  %61 = load %struct.carp_if*, %struct.carp_if** %4, align 8
  %62 = call i32 @CIF_UNLOCK(%struct.carp_if* %61)
  %63 = call i32 @mtx_lock(i32* @carp_mtx)
  %64 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %65 = load i32, i32* @sc_next, align 4
  %66 = call i32 @LIST_INSERT_HEAD(i32* @carp_list, %struct.carp_softc* %64, i32 %65)
  %67 = call i32 @mtx_unlock(i32* @carp_mtx)
  %68 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  ret %struct.carp_softc* %68
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local %struct.carp_if* @carp_alloc_if(%struct.ifnet*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @CARP_LOCK_INIT(%struct.carp_softc*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @CIF_LOCK(%struct.carp_if*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.carp_softc*, i32) #1

declare dso_local i32 @CIF_UNLOCK(%struct.carp_if*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.carp_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
