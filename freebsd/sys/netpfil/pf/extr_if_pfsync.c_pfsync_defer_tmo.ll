; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_defer_tmo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_defer_tmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_deferral = type { i64, %struct.pf_state*, %struct.mbuf*, %struct.pfsync_softc* }
%struct.pf_state = type { i32 }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pfsync_softc = type { i32 }
%struct.pfsync_bucket = type { i32, i32 }

@pd_entry = common dso_local global i32 0, align 4
@PFSTATE_ACK = common dso_local global i32 0, align 4
@M_PFSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pfsync_defer_tmo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfsync_defer_tmo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pfsync_deferral*, align 8
  %4 = alloca %struct.pfsync_softc*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.pf_state*, align 8
  %7 = alloca %struct.pfsync_bucket*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.pfsync_deferral*
  store %struct.pfsync_deferral* %9, %struct.pfsync_deferral** %3, align 8
  %10 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %3, align 8
  %11 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %10, i32 0, i32 3
  %12 = load %struct.pfsync_softc*, %struct.pfsync_softc** %11, align 8
  store %struct.pfsync_softc* %12, %struct.pfsync_softc** %4, align 8
  %13 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %3, align 8
  %14 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %13, i32 0, i32 2
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  store %struct.mbuf* %15, %struct.mbuf** %5, align 8
  %16 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %3, align 8
  %17 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %16, i32 0, i32 1
  %18 = load %struct.pf_state*, %struct.pf_state** %17, align 8
  store %struct.pf_state* %18, %struct.pf_state** %6, align 8
  %19 = load %struct.pfsync_softc*, %struct.pfsync_softc** %4, align 8
  %20 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %21 = call %struct.pfsync_bucket* @pfsync_get_bucket(%struct.pfsync_softc* %19, %struct.pf_state* %20)
  store %struct.pfsync_bucket* %21, %struct.pfsync_bucket** %7, align 8
  %22 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %7, align 8
  %23 = call i32 @PFSYNC_BUCKET_LOCK_ASSERT(%struct.pfsync_bucket* %22)
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CURVNET_SET(i32 %29)
  %31 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %7, align 8
  %32 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %31, i32 0, i32 1
  %33 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %3, align 8
  %34 = load i32, i32* @pd_entry, align 4
  %35 = call i32 @TAILQ_REMOVE(i32* %32, %struct.pfsync_deferral* %33, i32 %34)
  %36 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %7, align 8
  %37 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @PFSTATE_ACK, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %3, align 8
  %43 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %42, i32 0, i32 1
  %44 = load %struct.pf_state*, %struct.pf_state** %43, align 8
  %45 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %41
  store i32 %47, i32* %45, align 4
  %48 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %3, align 8
  %49 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %1
  %53 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %3, align 8
  %54 = load i32, i32* @M_PFSYNC, align 4
  %55 = call i32 @free(%struct.pfsync_deferral* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %1
  %57 = load %struct.pfsync_softc*, %struct.pfsync_softc** %4, align 8
  %58 = call i32 @PFSYNC_UNLOCK(%struct.pfsync_softc* %57)
  %59 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %60 = call i32 @ip_output(%struct.mbuf* %59, i32* null, i32* null, i32 0, i32* null, i32* null)
  %61 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %62 = call i32 @pf_release_state(%struct.pf_state* %61)
  %63 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

declare dso_local %struct.pfsync_bucket* @pfsync_get_bucket(%struct.pfsync_softc*, %struct.pf_state*) #1

declare dso_local i32 @PFSYNC_BUCKET_LOCK_ASSERT(%struct.pfsync_bucket*) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pfsync_deferral*, i32) #1

declare dso_local i32 @free(%struct.pfsync_deferral*, i32) #1

declare dso_local i32 @PFSYNC_UNLOCK(%struct.pfsync_softc*) #1

declare dso_local i32 @ip_output(%struct.mbuf*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @pf_release_state(%struct.pf_state*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
