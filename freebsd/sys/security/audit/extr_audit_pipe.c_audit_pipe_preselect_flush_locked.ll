; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_preselect_flush_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_preselect_flush_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_pipe = type { i32 }
%struct.audit_pipe_preselect = type { i32 }

@app_list = common dso_local global i32 0, align 4
@M_AUDIT_PIPE_PRESELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_pipe*)* @audit_pipe_preselect_flush_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_pipe_preselect_flush_locked(%struct.audit_pipe* %0) #0 {
  %2 = alloca %struct.audit_pipe*, align 8
  %3 = alloca %struct.audit_pipe_preselect*, align 8
  store %struct.audit_pipe* %0, %struct.audit_pipe** %2, align 8
  %4 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %5 = call i32 @AUDIT_PIPE_LOCK_ASSERT(%struct.audit_pipe* %4)
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %8 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %7, i32 0, i32 0
  %9 = call %struct.audit_pipe_preselect* @TAILQ_FIRST(i32* %8)
  store %struct.audit_pipe_preselect* %9, %struct.audit_pipe_preselect** %3, align 8
  %10 = icmp ne %struct.audit_pipe_preselect* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %13 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %12, i32 0, i32 0
  %14 = load %struct.audit_pipe_preselect*, %struct.audit_pipe_preselect** %3, align 8
  %15 = load i32, i32* @app_list, align 4
  %16 = call i32 @TAILQ_REMOVE(i32* %13, %struct.audit_pipe_preselect* %14, i32 %15)
  %17 = load %struct.audit_pipe_preselect*, %struct.audit_pipe_preselect** %3, align 8
  %18 = load i32, i32* @M_AUDIT_PIPE_PRESELECT, align 4
  %19 = call i32 @free(%struct.audit_pipe_preselect* %17, i32 %18)
  br label %6

20:                                               ; preds = %6
  ret void
}

declare dso_local i32 @AUDIT_PIPE_LOCK_ASSERT(%struct.audit_pipe*) #1

declare dso_local %struct.audit_pipe_preselect* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.audit_pipe_preselect*, i32) #1

declare dso_local i32 @free(%struct.audit_pipe_preselect*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
