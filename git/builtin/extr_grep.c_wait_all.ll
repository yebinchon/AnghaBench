; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_wait_all.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_wait_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HAVE_THREADS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Never call this function unless you have started threads\00", align 1
@all_work_added = common dso_local global i32 0, align 4
@todo_done = common dso_local global i64 0, align 8
@todo_end = common dso_local global i64 0, align 8
@cond_result = common dso_local global i32 0, align 4
@grep_mutex = common dso_local global i32 0, align 4
@cond_add = common dso_local global i32 0, align 4
@num_threads = common dso_local global i32 0, align 4
@threads = common dso_local global i32* null, align 8
@grep_read_mutex = common dso_local global i32 0, align 4
@grep_attr_mutex = common dso_local global i32 0, align 4
@cond_write = common dso_local global i32 0, align 4
@grep_use_locks = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wait_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @HAVE_THREADS, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @BUG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = call i32 (...) @grep_lock()
  store i32 1, i32* @all_work_added, align 4
  br label %10

10:                                               ; preds = %14, %8
  %11 = load i64, i64* @todo_done, align 8
  %12 = load i64, i64* @todo_end, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @pthread_cond_wait(i32* @cond_result, i32* @grep_mutex)
  br label %10

16:                                               ; preds = %10
  %17 = call i32 @pthread_cond_broadcast(i32* @cond_add)
  %18 = call i32 (...) @grep_unlock()
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %35, %16
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @num_threads, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load i32*, i32** @threads, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pthread_join(i32 %28, i8** %3)
  %30 = load i8*, i8** %3, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %1, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load i32*, i32** @threads, align 8
  %40 = call i32 @free(i32* %39)
  %41 = call i32 @pthread_mutex_destroy(i32* @grep_mutex)
  %42 = call i32 @pthread_mutex_destroy(i32* @grep_read_mutex)
  %43 = call i32 @pthread_mutex_destroy(i32* @grep_attr_mutex)
  %44 = call i32 @pthread_cond_destroy(i32* @cond_add)
  %45 = call i32 @pthread_cond_destroy(i32* @cond_write)
  %46 = call i32 @pthread_cond_destroy(i32* @cond_result)
  store i64 0, i64* @grep_use_locks, align 8
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @grep_lock(...) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @grep_unlock(...) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
