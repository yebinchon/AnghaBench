; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_start_threads.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_start_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.grep_opt = type { i64, i32 }

@grep_mutex = common dso_local global i32 0, align 4
@grep_read_mutex = common dso_local global i32 0, align 4
@grep_attr_mutex = common dso_local global i32 0, align 4
@cond_add = common dso_local global i32 0, align 4
@cond_write = common dso_local global i32 0, align 4
@cond_result = common dso_local global i32 0, align 4
@grep_use_locks = common dso_local global i32 0, align 4
@todo = common dso_local global %struct.TYPE_3__* null, align 8
@num_threads = common dso_local global i32 0, align 4
@threads = common dso_local global i32* null, align 8
@strbuf_out = common dso_local global i32 0, align 4
@run = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"grep: failed to create thread: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grep_opt*)* @start_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_threads(%struct.grep_opt* %0) #0 {
  %2 = alloca %struct.grep_opt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.grep_opt*, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %2, align 8
  %6 = call i32 @pthread_mutex_init(i32* @grep_mutex, i32* null)
  %7 = call i32 @pthread_mutex_init(i32* @grep_read_mutex, i32* null)
  %8 = call i32 @pthread_mutex_init(i32* @grep_attr_mutex, i32* null)
  %9 = call i32 @pthread_cond_init(i32* @cond_add, i32* null)
  %10 = call i32 @pthread_cond_init(i32* @cond_write, i32* null)
  %11 = call i32 @pthread_cond_init(i32* @cond_result, i32* null)
  store i32 1, i32* @grep_use_locks, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @todo, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @todo, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @strbuf_init(i32* %22, i32 0)
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load i32, i32* @num_threads, align 4
  %29 = call i32* @xcalloc(i32 %28, i32 4)
  store i32* %29, i32** @threads, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %63, %27
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @num_threads, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %30
  %35 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %36 = call %struct.grep_opt* @grep_opt_dup(%struct.grep_opt* %35)
  store %struct.grep_opt* %36, %struct.grep_opt** %5, align 8
  %37 = load i32, i32* @strbuf_out, align 4
  %38 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %39 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %44 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %34
  %46 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %47 = call i32 @compile_grep_patterns(%struct.grep_opt* %46)
  %48 = load i32*, i32** @threads, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* @run, align 4
  %53 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %54 = call i32 @pthread_create(i32* %51, i32* null, i32 %52, %struct.grep_opt* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %45
  %58 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @strerror(i32 %59)
  %61 = call i32 @die(i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %57, %45
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %30

66:                                               ; preds = %30
  ret void
}

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32* @xcalloc(i32, i32) #1

declare dso_local %struct.grep_opt* @grep_opt_dup(%struct.grep_opt*) #1

declare dso_local i32 @compile_grep_patterns(%struct.grep_opt*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.grep_opt*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
