; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_add_work.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_add_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.grep_source }
%struct.grep_source = type { i32 }
%struct.grep_opt = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@todo_end = common dso_local global i32 0, align 4
@todo = common dso_local global %struct.TYPE_5__* null, align 8
@todo_done = common dso_local global i32 0, align 4
@cond_write = common dso_local global i32 0, align 4
@grep_mutex = common dso_local global i32 0, align 4
@GREP_BINARY_TEXT = common dso_local global i64 0, align 8
@cond_add = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grep_opt*, %struct.grep_source*)* @add_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_work(%struct.grep_opt* %0, %struct.grep_source* %1) #0 {
  %3 = alloca %struct.grep_opt*, align 8
  %4 = alloca %struct.grep_source*, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %3, align 8
  store %struct.grep_source* %1, %struct.grep_source** %4, align 8
  %5 = call i32 (...) @grep_lock()
  br label %6

6:                                                ; preds = %14, %2
  %7 = load i32, i32* @todo_end, align 4
  %8 = add nsw i32 %7, 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @todo, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %9)
  %11 = srem i32 %8, %10
  %12 = load i32, i32* @todo_done, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = call i32 @pthread_cond_wait(i32* @cond_write, i32* @grep_mutex)
  br label %6

16:                                               ; preds = %6
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @todo, align 8
  %18 = load i32, i32* @todo_end, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load %struct.grep_source*, %struct.grep_source** %4, align 8
  %23 = bitcast %struct.grep_source* %21 to i8*
  %24 = bitcast %struct.grep_source* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %26 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GREP_BINARY_TEXT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %16
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @todo, align 8
  %32 = load i32, i32* @todo_end, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %37 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @grep_source_load_driver(%struct.grep_source* %35, i32 %40)
  br label %42

42:                                               ; preds = %30, %16
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @todo, align 8
  %44 = load i32, i32* @todo_end, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @todo, align 8
  %49 = load i32, i32* @todo_end, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = call i32 @strbuf_reset(i32* %52)
  %54 = load i32, i32* @todo_end, align 4
  %55 = add nsw i32 %54, 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @todo, align 8
  %57 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %56)
  %58 = srem i32 %55, %57
  store i32 %58, i32* @todo_end, align 4
  %59 = call i32 @pthread_cond_signal(i32* @cond_add)
  %60 = call i32 (...) @grep_unlock()
  ret void
}

declare dso_local i32 @grep_lock(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @grep_source_load_driver(%struct.grep_source*, i32) #1

declare dso_local i32 @strbuf_reset(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @grep_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
