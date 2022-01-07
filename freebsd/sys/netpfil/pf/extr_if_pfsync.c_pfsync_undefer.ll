; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_undefer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_undefer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_deferral = type { %struct.pf_state*, %struct.mbuf*, %struct.pfsync_softc* }
%struct.pf_state = type { i32 }
%struct.mbuf = type { i32 }
%struct.pfsync_softc = type { i32 }
%struct.pfsync_bucket = type { i32, i32, i32 }

@pd_entry = common dso_local global i32 0, align 4
@PFSTATE_ACK = common dso_local global i32 0, align 4
@M_PFSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfsync_deferral*, i32)* @pfsync_undefer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfsync_undefer(%struct.pfsync_deferral* %0, i32 %1) #0 {
  %3 = alloca %struct.pfsync_deferral*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfsync_softc*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.pf_state*, align 8
  %8 = alloca %struct.pfsync_bucket*, align 8
  store %struct.pfsync_deferral* %0, %struct.pfsync_deferral** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %3, align 8
  %10 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %9, i32 0, i32 2
  %11 = load %struct.pfsync_softc*, %struct.pfsync_softc** %10, align 8
  store %struct.pfsync_softc* %11, %struct.pfsync_softc** %5, align 8
  %12 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %3, align 8
  %13 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %12, i32 0, i32 1
  %14 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %14, %struct.mbuf** %6, align 8
  %15 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %3, align 8
  %16 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %15, i32 0, i32 0
  %17 = load %struct.pf_state*, %struct.pf_state** %16, align 8
  store %struct.pf_state* %17, %struct.pf_state** %7, align 8
  %18 = load %struct.pfsync_softc*, %struct.pfsync_softc** %5, align 8
  %19 = load %struct.pf_state*, %struct.pf_state** %7, align 8
  %20 = call %struct.pfsync_bucket* @pfsync_get_bucket(%struct.pfsync_softc* %18, %struct.pf_state* %19)
  store %struct.pfsync_bucket* %20, %struct.pfsync_bucket** %8, align 8
  %21 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %8, align 8
  %22 = call i32 @PFSYNC_BUCKET_LOCK_ASSERT(%struct.pfsync_bucket* %21)
  %23 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %8, align 8
  %24 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %23, i32 0, i32 2
  %25 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %3, align 8
  %26 = load i32, i32* @pd_entry, align 4
  %27 = call i32 @TAILQ_REMOVE(i32* %24, %struct.pfsync_deferral* %25, i32 %26)
  %28 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %8, align 8
  %29 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @PFSTATE_ACK, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %3, align 8
  %35 = getelementptr inbounds %struct.pfsync_deferral, %struct.pfsync_deferral* %34, i32 0, i32 0
  %36 = load %struct.pf_state*, %struct.pf_state** %35, align 8
  %37 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %33
  store i32 %39, i32* %37, align 4
  %40 = load %struct.pfsync_deferral*, %struct.pfsync_deferral** %3, align 8
  %41 = load i32, i32* @M_PFSYNC, align 4
  %42 = call i32 @free(%struct.pfsync_deferral* %40, i32 %41)
  %43 = load %struct.pf_state*, %struct.pf_state** %7, align 8
  %44 = call i32 @pf_release_state(%struct.pf_state* %43)
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %2
  %48 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %49 = call i32 @m_freem(%struct.mbuf* %48)
  br label %57

50:                                               ; preds = %2
  %51 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %8, align 8
  %52 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %51, i32 0, i32 0
  %53 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %54 = call i32 @_IF_ENQUEUE(i32* %52, %struct.mbuf* %53)
  %55 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %8, align 8
  %56 = call i32 @pfsync_push(%struct.pfsync_bucket* %55)
  br label %57

57:                                               ; preds = %50, %47
  ret void
}

declare dso_local %struct.pfsync_bucket* @pfsync_get_bucket(%struct.pfsync_softc*, %struct.pf_state*) #1

declare dso_local i32 @PFSYNC_BUCKET_LOCK_ASSERT(%struct.pfsync_bucket*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pfsync_deferral*, i32) #1

declare dso_local i32 @free(%struct.pfsync_deferral*, i32) #1

declare dso_local i32 @pf_release_state(%struct.pf_state*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @_IF_ENQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @pfsync_push(%struct.pfsync_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
