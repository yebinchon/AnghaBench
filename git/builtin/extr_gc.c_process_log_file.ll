; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_gc.c_process_log_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_gc.c_process_log_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.stat = type { i64 }

@log_lock = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to fstat %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"gc.log\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @process_log_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_log_file() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @get_lock_file_fd(%struct.TYPE_5__* @log_lock)
  %4 = call i64 @fstat(i32 %3, %struct.stat* %1)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %0
  %7 = load i32, i32* @errno, align 4
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @stderr, align 4
  %9 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @log_lock, i32 0, i32 0), align 4
  %11 = call i8* @get_tempfile_path(i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i8* @strerror(i32 %12)
  %14 = call i32 @fprintf(i32 %8, i8* %9, i8* %11, i8* %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fflush(i32 %15)
  %17 = call i32 @commit_lock_file(%struct.TYPE_5__* @log_lock)
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* @errno, align 4
  br label %30

19:                                               ; preds = %0
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @commit_lock_file(%struct.TYPE_5__* @log_lock)
  br label %29

25:                                               ; preds = %19
  %26 = call i32 @git_path(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @unlink(i32 %26)
  %28 = call i32 @rollback_lock_file(%struct.TYPE_5__* @log_lock)
  br label %29

29:                                               ; preds = %25, %23
  br label %30

30:                                               ; preds = %29, %6
  ret void
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @get_lock_file_fd(%struct.TYPE_5__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @get_tempfile_path(i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @commit_lock_file(%struct.TYPE_5__*) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @git_path(i8*) #1

declare dso_local i32 @rollback_lock_file(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
