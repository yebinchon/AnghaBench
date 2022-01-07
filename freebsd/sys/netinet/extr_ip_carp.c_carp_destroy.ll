; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carp_softc = type { %struct.carp_softc*, i32, i32, i32, i64, %struct.ifnet* }
%struct.ifnet = type { %struct.carp_if* }
%struct.carp_if = type { i32 }

@carp_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@V_carp_ifdown_adj = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vhid removed\00", align 1
@sc_list = common dso_local global i32 0, align 4
@carp_mtx = common dso_local global i32 0, align 4
@sc_next = common dso_local global i32 0, align 4
@M_CARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carp_softc*)* @carp_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carp_destroy(%struct.carp_softc* %0) #0 {
  %2 = alloca %struct.carp_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.carp_if*, align 8
  store %struct.carp_softc* %0, %struct.carp_softc** %2, align 8
  %5 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %6 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %5, i32 0, i32 5
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load %struct.carp_if*, %struct.carp_if** %9, align 8
  store %struct.carp_if* %10, %struct.carp_if** %4, align 8
  %11 = load i32, i32* @SA_XLOCKED, align 4
  %12 = call i32 @sx_assert(i32* @carp_sx, i32 %11)
  %13 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %14 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @V_carp_ifdown_adj, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i32 @carp_demote_adj(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %23 = call i32 @CARP_UNLOCK(%struct.carp_softc* %22)
  %24 = load %struct.carp_if*, %struct.carp_if** %4, align 8
  %25 = call i32 @CIF_LOCK(%struct.carp_if* %24)
  %26 = load %struct.carp_if*, %struct.carp_if** %4, align 8
  %27 = getelementptr inbounds %struct.carp_if, %struct.carp_if* %26, i32 0, i32 0
  %28 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %29 = load i32, i32* @sc_list, align 4
  %30 = call i32 @TAILQ_REMOVE(i32* %27, %struct.carp_softc* %28, i32 %29)
  %31 = load %struct.carp_if*, %struct.carp_if** %4, align 8
  %32 = call i32 @CIF_UNLOCK(%struct.carp_if* %31)
  %33 = call i32 @mtx_lock(i32* @carp_mtx)
  %34 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %35 = load i32, i32* @sc_next, align 4
  %36 = call i32 @LIST_REMOVE(%struct.carp_softc* %34, i32 %35)
  %37 = call i32 @mtx_unlock(i32* @carp_mtx)
  %38 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %39 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %38, i32 0, i32 3
  %40 = call i32 @callout_drain(i32* %39)
  %41 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %42 = call i32 @CARP_LOCK_DESTROY(%struct.carp_softc* %41)
  %43 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %44 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %43, i32 0, i32 0
  %45 = load %struct.carp_softc*, %struct.carp_softc** %44, align 8
  %46 = load i32, i32* @M_CARP, align 4
  %47 = call i32 @free(%struct.carp_softc* %45, i32 %46)
  %48 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %49 = load i32, i32* @M_CARP, align 4
  %50 = call i32 @free(%struct.carp_softc* %48, i32 %49)
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @carp_demote_adj(i32, i8*) #1

declare dso_local i32 @CARP_UNLOCK(%struct.carp_softc*) #1

declare dso_local i32 @CIF_LOCK(%struct.carp_if*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.carp_softc*, i32) #1

declare dso_local i32 @CIF_UNLOCK(%struct.carp_if*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.carp_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @CARP_LOCK_DESTROY(%struct.carp_softc*) #1

declare dso_local i32 @free(%struct.carp_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
