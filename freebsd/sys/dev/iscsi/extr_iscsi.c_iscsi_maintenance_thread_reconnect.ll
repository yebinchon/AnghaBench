; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_maintenance_thread_reconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_maintenance_thread_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32, i32, i32, i32, %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__, i32, i32, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@fail_on_disconnection = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"connection failed, destroying devices\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"destroying session with active tasks\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"destroying session with postponed PDUs\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Waiting for iscsid(8)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_session*)* @iscsi_maintenance_thread_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_maintenance_thread_reconnect(%struct.iscsi_session* %0) #0 {
  %2 = alloca %struct.iscsi_session*, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %2, align 8
  %3 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %4 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %3, i32 0, i32 12
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @icl_conn_close(i32 %5)
  %7 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %8 = call i32 @ISCSI_SESSION_LOCK(%struct.iscsi_session* %7)
  %9 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %10 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %12 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %14 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %13, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = load i64, i64* @fail_on_disconnection, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %19 = call i32 @ISCSI_SESSION_DEBUG(%struct.iscsi_session* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %21 = call i32 @iscsi_session_cleanup(%struct.iscsi_session* %20, i32 1)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %24 = call i32 @iscsi_session_cleanup(%struct.iscsi_session* %23, i32 0)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %27 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %26, i32 0, i32 9
  %28 = call i32 @TAILQ_EMPTY(i32* %27)
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %31 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %30, i32 0, i32 8
  %32 = call i32 @STAILQ_EMPTY(i32* %31)
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %35 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %25
  %40 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %41 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %47 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %46)
  br label %64

48:                                               ; preds = %39, %25
  %49 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %50 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %49, i32 0, i32 3
  store i32 1, i32* %50, align 4
  %51 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %52 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @strlcpy(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %55 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %56 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %58 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %57)
  %59 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %60 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %59, i32 0, i32 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @cv_signal(i32* %62)
  br label %64

64:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @icl_conn_close(i32) #1

declare dso_local i32 @ISCSI_SESSION_LOCK(%struct.iscsi_session*) #1

declare dso_local i32 @ISCSI_SESSION_DEBUG(%struct.iscsi_session*, i8*) #1

declare dso_local i32 @iscsi_session_cleanup(%struct.iscsi_session*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
