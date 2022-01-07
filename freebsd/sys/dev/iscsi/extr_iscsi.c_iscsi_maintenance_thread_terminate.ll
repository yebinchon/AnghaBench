; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_maintenance_thread_terminate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_maintenance_thread_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.iscsi_softc* }
%struct.iscsi_softc = type { i32, i32, i32 }

@is_next = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"is_terminating == false\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"destroying session with active tasks\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"destroying session with postponed PDUs\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"terminated\00", align 1
@M_ISCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_session*)* @iscsi_maintenance_thread_terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_maintenance_thread_terminate(%struct.iscsi_session* %0) #0 {
  %2 = alloca %struct.iscsi_session*, align 8
  %3 = alloca %struct.iscsi_softc*, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %2, align 8
  %4 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %4, i32 0, i32 9
  %6 = load %struct.iscsi_softc*, %struct.iscsi_softc** %5, align 8
  store %struct.iscsi_softc* %6, %struct.iscsi_softc** %3, align 8
  %7 = load %struct.iscsi_softc*, %struct.iscsi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_softc, %struct.iscsi_softc* %7, i32 0, i32 1
  %9 = call i32 @sx_xlock(i32* %8)
  %10 = load %struct.iscsi_softc*, %struct.iscsi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_softc, %struct.iscsi_softc* %10, i32 0, i32 2
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %13 = load i32, i32* @is_next, align 4
  %14 = call i32 @TAILQ_REMOVE(i32* %11, %struct.iscsi_session* %12, i32 %13)
  %15 = load %struct.iscsi_softc*, %struct.iscsi_softc** %3, align 8
  %16 = getelementptr inbounds %struct.iscsi_softc, %struct.iscsi_softc* %15, i32 0, i32 1
  %17 = call i32 @sx_xunlock(i32* %16)
  %18 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %19 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @icl_conn_close(i32 %20)
  %22 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %23 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %22, i32 0, i32 8
  %24 = call i32 @callout_drain(i32* %23)
  %25 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %26 = call i32 @ISCSI_SESSION_LOCK(%struct.iscsi_session* %25)
  %27 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %28 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %32 = call i32 @iscsi_session_cleanup(%struct.iscsi_session* %31, i32 1)
  %33 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %34 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %33, i32 0, i32 5
  %35 = call i32 @TAILQ_EMPTY(i32* %34)
  %36 = call i32 @KASSERT(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %38 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %37, i32 0, i32 4
  %39 = call i32 @STAILQ_EMPTY(i32* %38)
  %40 = call i32 @KASSERT(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %42 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %41)
  %43 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %44 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @icl_conn_free(i32 %45)
  %47 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %48 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %47, i32 0, i32 2
  %49 = call i32 @mtx_destroy(i32* %48)
  %50 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %51 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %50, i32 0, i32 1
  %52 = call i32 @cv_destroy(i32* %51)
  %53 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %54 = call i32 @ISCSI_SESSION_DEBUG(%struct.iscsi_session* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %56 = load i32, i32* @M_ISCSI, align 4
  %57 = call i32 @free(%struct.iscsi_session* %55, i32 %56)
  %58 = load %struct.iscsi_softc*, %struct.iscsi_softc** %3, align 8
  %59 = getelementptr inbounds %struct.iscsi_softc, %struct.iscsi_softc* %58, i32 0, i32 0
  %60 = call i32 @cv_signal(i32* %59)
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.iscsi_session*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @icl_conn_close(i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ISCSI_SESSION_LOCK(%struct.iscsi_session*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @iscsi_session_cleanup(%struct.iscsi_session*, i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session*) #1

declare dso_local i32 @icl_conn_free(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @ISCSI_SESSION_DEBUG(%struct.iscsi_session*, i8*) #1

declare dso_local i32 @free(%struct.iscsi_session*, i32) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
