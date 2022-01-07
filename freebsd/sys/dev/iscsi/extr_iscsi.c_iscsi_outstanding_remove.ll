; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_outstanding_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_outstanding_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32, i32 }
%struct.iscsi_outstanding = type { i32 }

@io_next = common dso_local global i32 0, align 4
@iscsi_outstanding_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_session*, %struct.iscsi_outstanding*)* @iscsi_outstanding_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_outstanding_remove(%struct.iscsi_session* %0, %struct.iscsi_outstanding* %1) #0 {
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca %struct.iscsi_outstanding*, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %3, align 8
  store %struct.iscsi_outstanding* %1, %struct.iscsi_outstanding** %4, align 8
  %5 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %6 = call i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session* %5)
  %7 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_outstanding, %struct.iscsi_outstanding* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @icl_conn_task_done(i32 %9, i32 %12)
  %14 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %14, i32 0, i32 0
  %16 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %17 = load i32, i32* @io_next, align 4
  %18 = call i32 @TAILQ_REMOVE(i32* %15, %struct.iscsi_outstanding* %16, i32 %17)
  %19 = load i32, i32* @iscsi_outstanding_zone, align 4
  %20 = load %struct.iscsi_outstanding*, %struct.iscsi_outstanding** %4, align 8
  %21 = call i32 @uma_zfree(i32 %19, %struct.iscsi_outstanding* %20)
  ret void
}

declare dso_local i32 @ISCSI_SESSION_LOCK_ASSERT(%struct.iscsi_session*) #1

declare dso_local i32 @icl_conn_task_done(i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.iscsi_outstanding*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.iscsi_outstanding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
