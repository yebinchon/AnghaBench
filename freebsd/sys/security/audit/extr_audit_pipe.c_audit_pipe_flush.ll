; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_pipe = type { i64, i64, i64, i32 }
%struct.audit_pipe_entry = type { i64 }

@ape_queue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"audit_pipe_free: ap_qbyteslen\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"audit_pipe_flush: ap_qbyteslen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_pipe*)* @audit_pipe_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_pipe_flush(%struct.audit_pipe* %0) #0 {
  %2 = alloca %struct.audit_pipe*, align 8
  %3 = alloca %struct.audit_pipe_entry*, align 8
  store %struct.audit_pipe* %0, %struct.audit_pipe** %2, align 8
  %4 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %5 = call i32 @AUDIT_PIPE_LOCK_ASSERT(%struct.audit_pipe* %4)
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %8 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %7, i32 0, i32 3
  %9 = call %struct.audit_pipe_entry* @TAILQ_FIRST(i32* %8)
  store %struct.audit_pipe_entry* %9, %struct.audit_pipe_entry** %3, align 8
  %10 = icmp ne %struct.audit_pipe_entry* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %6
  %12 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %13 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %12, i32 0, i32 3
  %14 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %3, align 8
  %15 = load i32, i32* @ape_queue, align 4
  %16 = call i32 @TAILQ_REMOVE(i32* %13, %struct.audit_pipe_entry* %14, i32 %15)
  %17 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %3, align 8
  %18 = getelementptr inbounds %struct.audit_pipe_entry, %struct.audit_pipe_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %21 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %22, %19
  store i64 %23, i64* %21, align 8
  %24 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %3, align 8
  %25 = call i32 @audit_pipe_entry_free(%struct.audit_pipe_entry* %24)
  %26 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %27 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  br label %6

30:                                               ; preds = %6
  %31 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %32 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %34 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.audit_pipe*, %struct.audit_pipe** %2, align 8
  %40 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @KASSERT(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @AUDIT_PIPE_LOCK_ASSERT(%struct.audit_pipe*) #1

declare dso_local %struct.audit_pipe_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.audit_pipe_entry*, i32) #1

declare dso_local i32 @audit_pipe_entry_free(%struct.audit_pipe_entry*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
