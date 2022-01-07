; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_maintenance_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_maintenance_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iscsi_maintenance_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_maintenance_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.iscsi_session*
  store %struct.iscsi_session* %5, %struct.iscsi_session** %3, align 8
  %6 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %7 = call i32 @ISCSI_SESSION_LOCK(%struct.iscsi_session* %6)
  br label %8

8:                                                ; preds = %61, %54, %1
  %9 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %13
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %20 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %19, i32 0, i32 6
  %21 = call i64 @STAILQ_EMPTY(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %25 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %28 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ISCSI_SNGT(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23, %18
  %33 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %34 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %33, i32 0, i32 3
  %35 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %36 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %35, i32 0, i32 2
  %37 = call i32 @cv_wait(i32* %34, i32* %36)
  br label %38

38:                                               ; preds = %32, %23, %13, %8
  %39 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %40 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %45 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %44)
  %46 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %47 = call i32 @iscsi_maintenance_thread_terminate(%struct.iscsi_session* %46)
  %48 = call i32 (...) @kthread_exit()
  ret void

49:                                               ; preds = %38
  %50 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %51 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %56 = call i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session* %55)
  %57 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %58 = call i32 @iscsi_maintenance_thread_reconnect(%struct.iscsi_session* %57)
  %59 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %60 = call i32 @ISCSI_SESSION_LOCK(%struct.iscsi_session* %59)
  br label %8

61:                                               ; preds = %49
  %62 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %63 = call i32 @iscsi_session_send_postponed(%struct.iscsi_session* %62)
  br label %8
}

declare dso_local i32 @ISCSI_SESSION_LOCK(%struct.iscsi_session*) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i64 @ISCSI_SNGT(i32, i32) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @ISCSI_SESSION_UNLOCK(%struct.iscsi_session*) #1

declare dso_local i32 @iscsi_maintenance_thread_terminate(%struct.iscsi_session*) #1

declare dso_local i32 @kthread_exit(...) #1

declare dso_local i32 @iscsi_maintenance_thread_reconnect(%struct.iscsi_session*) #1

declare dso_local i32 @iscsi_session_send_postponed(%struct.iscsi_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
