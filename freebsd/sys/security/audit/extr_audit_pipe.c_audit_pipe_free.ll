; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_pipe = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@audit_pipe_list = common dso_local global i32 0, align 4
@ap_list = common dso_local global i32 0, align 4
@M_AUDIT_PIPE = common dso_local global i32 0, align 4
@audit_pipe_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_pipe*)* @audit_pipe_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_pipe_free(%struct.audit_pipe* %0) #0 {
  %2 = alloca %struct.audit_pipe*, align 8
  store %struct.audit_pipe* %0, %struct.audit_pipe** %2, align 8
  %3 = call i32 (...) @AUDIT_PIPE_LIST_WLOCK_ASSERT()
  %4 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %5 = call i32 @AUDIT_PIPE_LOCK_ASSERT(%struct.audit_pipe* %4)
  %6 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %7 = call i32 @audit_pipe_preselect_flush_locked(%struct.audit_pipe* %6)
  %8 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %9 = call i32 @audit_pipe_flush(%struct.audit_pipe* %8)
  %10 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %11 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %10, i32 0, i32 1
  %12 = call i32 @cv_destroy(i32* %11)
  %13 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %14 = call i32 @AUDIT_PIPE_SX_LOCK_DESTROY(%struct.audit_pipe* %13)
  %15 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %16 = call i32 @AUDIT_PIPE_LOCK_DESTROY(%struct.audit_pipe* %15)
  %17 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %18 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %17, i32 0, i32 0
  %19 = call i32 @seldrain(%struct.TYPE_2__* %18)
  %20 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %21 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @knlist_destroy(i32* %22)
  %24 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %25 = load i32, i32* @ap_list, align 4
  %26 = call i32 @TAILQ_REMOVE(i32* @audit_pipe_list, %struct.audit_pipe* %24, i32 %25)
  %27 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %28 = load i32, i32* @M_AUDIT_PIPE, align 4
  %29 = call i32 @free(%struct.audit_pipe* %27, i32 %28)
  %30 = load i32, i32* @audit_pipe_count, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* @audit_pipe_count, align 4
  ret void
}

declare dso_local i32 @AUDIT_PIPE_LIST_WLOCK_ASSERT(...) #1

declare dso_local i32 @AUDIT_PIPE_LOCK_ASSERT(%struct.audit_pipe*) #1

declare dso_local i32 @audit_pipe_preselect_flush_locked(%struct.audit_pipe*) #1

declare dso_local i32 @audit_pipe_flush(%struct.audit_pipe*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @AUDIT_PIPE_SX_LOCK_DESTROY(%struct.audit_pipe*) #1

declare dso_local i32 @AUDIT_PIPE_LOCK_DESTROY(%struct.audit_pipe*) #1

declare dso_local i32 @seldrain(%struct.TYPE_2__*) #1

declare dso_local i32 @knlist_destroy(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.audit_pipe*, i32) #1

declare dso_local i32 @free(%struct.audit_pipe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
