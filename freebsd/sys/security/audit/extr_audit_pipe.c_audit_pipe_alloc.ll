; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_pipe = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@M_AUDIT_PIPE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@AUDIT_PIPE_QLIMIT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"audit_pipe\00", align 1
@AUDITPIPE_PRESELECT_MODE_TRAIL = common dso_local global i32 0, align 4
@audit_pipe_list = common dso_local global i32 0, align 4
@ap_list = common dso_local global i32 0, align 4
@audit_pipe_count = common dso_local global i32 0, align 4
@audit_pipe_ever = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audit_pipe* ()* @audit_pipe_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audit_pipe* @audit_pipe_alloc() #0 {
  %1 = alloca %struct.audit_pipe*, align 8
  %2 = alloca %struct.audit_pipe*, align 8
  %3 = load i32, i32* @M_AUDIT_PIPE, align 4
  %4 = load i32, i32* @M_NOWAIT, align 4
  %5 = load i32, i32* @M_ZERO, align 4
  %6 = or i32 %4, %5
  %7 = call %struct.audit_pipe* @malloc(i32 32, i32 %3, i32 %6)
  store %struct.audit_pipe* %7, %struct.audit_pipe** %2, align 8
  %8 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %9 = icmp eq %struct.audit_pipe* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store %struct.audit_pipe* null, %struct.audit_pipe** %1, align 8
  br label %53

11:                                               ; preds = %0
  %12 = load i32, i32* @AUDIT_PIPE_QLIMIT_DEFAULT, align 4
  %13 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %14 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 4
  %15 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %16 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %15, i32 0, i32 6
  %17 = call i32 @TAILQ_INIT(i32* %16)
  %18 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %19 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %22 = call i32 @AUDIT_PIPE_MTX(%struct.audit_pipe* %21)
  %23 = call i32 @knlist_init_mtx(i32* %20, i32 %22)
  %24 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %25 = call i32 @AUDIT_PIPE_LOCK_INIT(%struct.audit_pipe* %24)
  %26 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %27 = call i32 @AUDIT_PIPE_SX_LOCK_INIT(%struct.audit_pipe* %26)
  %28 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %29 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %28, i32 0, i32 4
  %30 = call i32 @cv_init(i32* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %32 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %31, i32 0, i32 3
  %33 = call i32 @bzero(i32* %32, i32 4)
  %34 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %35 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %34, i32 0, i32 2
  %36 = call i32 @bzero(i32* %35, i32 4)
  %37 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %38 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %37, i32 0, i32 1
  %39 = call i32 @TAILQ_INIT(i32* %38)
  %40 = load i32, i32* @AUDITPIPE_PRESELECT_MODE_TRAIL, align 4
  %41 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %42 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = call i32 (...) @AUDIT_PIPE_LIST_WLOCK()
  %44 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %45 = load i32, i32* @ap_list, align 4
  %46 = call i32 @TAILQ_INSERT_HEAD(i32* @audit_pipe_list, %struct.audit_pipe* %44, i32 %45)
  %47 = load i32, i32* @audit_pipe_count, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @audit_pipe_count, align 4
  %49 = load i32, i32* @audit_pipe_ever, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @audit_pipe_ever, align 4
  %51 = call i32 (...) @AUDIT_PIPE_LIST_WUNLOCK()
  %52 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  store %struct.audit_pipe* %52, %struct.audit_pipe** %1, align 8
  br label %53

53:                                               ; preds = %11, %10
  %54 = load %struct.audit_pipe*, %struct.audit_pipe** %1, align 8
  ret %struct.audit_pipe* %54
}

declare dso_local %struct.audit_pipe* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32) #1

declare dso_local i32 @AUDIT_PIPE_MTX(%struct.audit_pipe*) #1

declare dso_local i32 @AUDIT_PIPE_LOCK_INIT(%struct.audit_pipe*) #1

declare dso_local i32 @AUDIT_PIPE_SX_LOCK_INIT(%struct.audit_pipe*) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @AUDIT_PIPE_LIST_WLOCK(...) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.audit_pipe*, i32) #1

declare dso_local i32 @AUDIT_PIPE_LIST_WUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
