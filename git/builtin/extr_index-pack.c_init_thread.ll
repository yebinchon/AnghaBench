; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_init_thread.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_init_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@read_mutex = common dso_local global i32 0, align 4
@counter_mutex = common dso_local global i32 0, align 4
@work_mutex = common dso_local global i32 0, align 4
@type_cas_mutex = common dso_local global i32 0, align 4
@show_stat = common dso_local global i64 0, align 8
@deepest_delta_mutex = common dso_local global i32 0, align 4
@key = common dso_local global i32 0, align 4
@nr_threads = common dso_local global i32 0, align 4
@thread_data = common dso_local global %struct.TYPE_3__* null, align 8
@curr_pack = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unable to open %s\00", align 1
@threads_active = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_thread() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @init_recursive_mutex(i32* @read_mutex)
  %3 = call i32 @pthread_mutex_init(i32* @counter_mutex, i32* null)
  %4 = call i32 @pthread_mutex_init(i32* @work_mutex, i32* null)
  %5 = call i32 @pthread_mutex_init(i32* @type_cas_mutex, i32* null)
  %6 = load i64, i64* @show_stat, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @pthread_mutex_init(i32* @deepest_delta_mutex, i32* null)
  br label %10

10:                                               ; preds = %8, %0
  %11 = call i32 @pthread_key_create(i32* @key, i32* null)
  %12 = load i32, i32* @nr_threads, align 4
  %13 = call %struct.TYPE_3__* @xcalloc(i32 %12, i32 4)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** @thread_data, align 8
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %39, %10
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @nr_threads, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load i32, i32* @curr_pack, align 4
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = call i32 @open(i32 %19, i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_data, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %21, i32* %26, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_data, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @curr_pack, align 4
  %37 = call i32 @die_errno(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %18
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %14

42:                                               ; preds = %14
  store i32 1, i32* @threads_active, align 4
  ret void
}

declare dso_local i32 @init_recursive_mutex(i32*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_key_create(i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @xcalloc(i32, i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @die_errno(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
