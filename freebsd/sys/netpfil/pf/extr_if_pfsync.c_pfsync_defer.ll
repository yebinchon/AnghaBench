; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_defer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pf_state = type { i32 }
%struct.mbuf = type { i32 }
%struct.pfsync_deferral = type { i32, %struct.mbuf*, %struct.pf_state*, i64, %struct.pfsync_softc* }
%struct.pfsync_bucket = type { i32, i32, i32 }

@V_pfsyncif = common dso_local global %struct.pfsync_softc* null, align 8
@M_BCAST = common dso_local global i32 0, align 4
@M_MCAST = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@PFSYNCF_DEFER = common dso_local global i32 0, align 4
@M_PFSYNC = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_SKIP_FIREWALL = common dso_local global i32 0, align 4
@PFSTATE_ACK = common dso_local global i32 0, align 4
@pd_entry = common dso_local global i32 0, align 4
@CALLOUT_RETURNUNLOCKED = common dso_local global i32 0, align 4
@pfsync_defer_tmo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_state*, %struct.mbuf*)* @pfsync_defer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfsync_defer(%struct.pf_state* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pf_state*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.pfsync_softc*, align 8
  %7 = alloca %struct.pfsync_deferral*, align 8
  %8 = alloca %struct.pfsync_bucket*, align 8
  store %struct.pf_state* %0, %struct.pf_state** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %9 = load %struct.pfsync_softc*, %struct.pfsync_softc** @V_pfsyncif, align 8
  store %struct.pfsync_softc* %9, %struct.pfsync_softc** %6, align 8
  %10 = load %struct.pfsync_softc*, %struct.pfsync_softc** %6, align 8
  %11 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %12 = call %struct.pfsync_bucket* @pfsync_get_bucket(%struct.pfsync_softc* %10, %struct.pf_state* %11)
  store %struct.pfsync_bucket* %12, %struct.pfsync_bucket** %8, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @M_BCAST, align 4
  %17 = load i32, i32* @M_MCAST, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

22:                                               ; preds = %2
  %23 = load %struct.pfsync_softc*, %struct.pfsync_softc** %6, align 8
  %24 = call i32 @PFSYNC_LOCK(%struct.pfsync_softc* %23)
  %25 = load %struct.pfsync_softc*, %struct.pfsync_softc** %6, align 8
  %26 = icmp eq %struct.pfsync_softc* %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %22
  %28 = load %struct.pfsync_softc*, %struct.pfsync_softc** %6, align 8
  %29 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.pfsync_softc*, %struct.pfsync_softc** %6, align 8
  %38 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PFSYNCF_DEFER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36, %27, %22
  %44 = load %struct.pfsync_softc*, %struct.pfsync_softc** %6, align 8
  %45 = call i32 @PFSYNC_UNLOCK(%struct.pfsync_softc* %44)
  store i32 0, i32* %3, align 4
  br label %109

46:                                               ; preds = %36
  %47 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %8, align 8
  %48 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 128
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %8, align 8
  %53 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %52, i32 0, i32 2
  %54 = call i32 @TAILQ_FIRST(i32* %53)
  %55 = call i32 @pfsync_undefer(i32 %54, i32 0)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* @M_PFSYNC, align 4
  %58 = load i32, i32* @M_NOWAIT, align 4
  %59 = call %struct.pfsync_deferral* @malloc(i32 40, i32 %57, i32 %58)
  store %struct.pfsync_deferral* %59, %struct.pfsync_deferral** %7, align 8
  %60 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %7, align 8
  %61 = icmp eq %struct.pfsync_deferral* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %109

63:                                               ; preds = %56
  %64 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %8, align 8
  %65 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @M_SKIP_FIREWALL, align 4
  %69 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @PFSTATE_ACK, align 4
  %74 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %75 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.pfsync_softc*, %struct.pfsync_softc** %6, align 8
  %79 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %7, align 8
  %80 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %79, i32 0, i32 4
  store %struct.pfsync_softc* %78, %struct.pfsync_softc** %80, align 8
  %81 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %7, align 8
  %82 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %84 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %7, align 8
  %85 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %84, i32 0, i32 2
  store %struct.pf_state* %83, %struct.pf_state** %85, align 8
  %86 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %87 = call i32 @pf_ref_state(%struct.pf_state* %86)
  %88 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %89 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %7, align 8
  %90 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %89, i32 0, i32 1
  store %struct.mbuf* %88, %struct.mbuf** %90, align 8
  %91 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %8, align 8
  %92 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %91, i32 0, i32 2
  %93 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %7, align 8
  %94 = load i32, i32* @pd_entry, align 4
  %95 = call i32 @TAILQ_INSERT_TAIL(i32* %92, %struct.pfsync_deferral* %93, i32 %94)
  %96 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %7, align 8
  %97 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %96, i32 0, i32 0
  %98 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %8, align 8
  %99 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %98, i32 0, i32 1
  %100 = load i32, i32* @CALLOUT_RETURNUNLOCKED, align 4
  %101 = call i32 @callout_init_mtx(i32* %97, i32* %99, i32 %100)
  %102 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %7, align 8
  %103 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %102, i32 0, i32 0
  %104 = load i32, i32* @pfsync_defer_tmo, align 4
  %105 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %7, align 8
  %106 = call i32 @callout_reset(i32* %103, i32 10, i32 %104, %struct.pfsync_deferral* %105)
  %107 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %8, align 8
  %108 = call i32 @pfsync_push(%struct.pfsync_bucket* %107)
  store i32 1, i32* %3, align 4
  br label %109

109:                                              ; preds = %63, %62, %43, %21
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.pfsync_bucket* @pfsync_get_bucket(%struct.pfsync_softc*, %struct.pf_state*) #1

declare dso_local i32 @PFSYNC_LOCK(%struct.pfsync_softc*) #1

declare dso_local i32 @PFSYNC_UNLOCK(%struct.pfsync_softc*) #1

declare dso_local i32 @pfsync_undefer(i32, i32) #1

declare dso_local i32 @TAILQ_FIRST(i32*) #1

declare dso_local %struct.pfsync_deferral* @malloc(i32, i32, i32) #1

declare dso_local i32 @pf_ref_state(%struct.pf_state*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pfsync_deferral*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.pfsync_deferral*) #1

declare dso_local i32 @pfsync_push(%struct.pfsync_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
