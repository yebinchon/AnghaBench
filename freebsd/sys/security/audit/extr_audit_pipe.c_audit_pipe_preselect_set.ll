; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_preselect_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_preselect_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_pipe = type { i32 }
%struct.audit_pipe_preselect = type { i32, i32 }

@M_AUDIT_PIPE_PRESELECT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@app_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_pipe*, i32, i32)* @audit_pipe_preselect_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_pipe_preselect_set(%struct.audit_pipe* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.audit_pipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.audit_pipe_preselect*, align 8
  %8 = alloca %struct.audit_pipe_preselect*, align 8
  store %struct.audit_pipe* %0, %struct.audit_pipe** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @M_AUDIT_PIPE_PRESELECT, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = call %struct.audit_pipe_preselect* @malloc(i32 8, i32 %9, i32 %10)
  store %struct.audit_pipe_preselect* %11, %struct.audit_pipe_preselect** %8, align 8
  %12 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %13 = call i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe* %12)
  %14 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.audit_pipe_preselect* @audit_pipe_preselect_find(%struct.audit_pipe* %14, i32 %15)
  store %struct.audit_pipe_preselect* %16, %struct.audit_pipe_preselect** %7, align 8
  %17 = load %struct.audit_pipe_preselect*, %struct.audit_pipe_preselect** %7, align 8
  %18 = icmp eq %struct.audit_pipe_preselect* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.audit_pipe_preselect*, %struct.audit_pipe_preselect** %8, align 8
  store %struct.audit_pipe_preselect* %20, %struct.audit_pipe_preselect** %7, align 8
  store %struct.audit_pipe_preselect* null, %struct.audit_pipe_preselect** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.audit_pipe_preselect*, %struct.audit_pipe_preselect** %7, align 8
  %23 = getelementptr inbounds %struct.audit_pipe_preselect, %struct.audit_pipe_preselect* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %25 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %24, i32 0, i32 0
  %26 = load %struct.audit_pipe_preselect*, %struct.audit_pipe_preselect** %7, align 8
  %27 = load i32, i32* @app_list, align 4
  %28 = call i32 @TAILQ_INSERT_TAIL(i32* %25, %struct.audit_pipe_preselect* %26, i32 %27)
  br label %29

29:                                               ; preds = %19, %3
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.audit_pipe_preselect*, %struct.audit_pipe_preselect** %7, align 8
  %32 = getelementptr inbounds %struct.audit_pipe_preselect, %struct.audit_pipe_preselect* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %34 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %33)
  %35 = load %struct.audit_pipe_preselect*, %struct.audit_pipe_preselect** %8, align 8
  %36 = icmp ne %struct.audit_pipe_preselect* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.audit_pipe_preselect*, %struct.audit_pipe_preselect** %8, align 8
  %39 = load i32, i32* @M_AUDIT_PIPE_PRESELECT, align 4
  %40 = call i32 @free(%struct.audit_pipe_preselect* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %29
  ret void
}

declare dso_local %struct.audit_pipe_preselect* @malloc(i32, i32, i32) #1

declare dso_local i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe*) #1

declare dso_local %struct.audit_pipe_preselect* @audit_pipe_preselect_find(%struct.audit_pipe*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.audit_pipe_preselect*, i32) #1

declare dso_local i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe*) #1

declare dso_local i32 @free(%struct.audit_pipe_preselect*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
