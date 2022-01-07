; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_resolve_deltas.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_resolve_deltas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.object_entry = type { i32 }

@nr_ofs_deltas = common dso_local global i64 0, align 8
@nr_ref_deltas = common dso_local global i64 0, align 8
@ofs_deltas = common dso_local global i32 0, align 4
@compare_ofs_delta_entry = common dso_local global i32 0, align 4
@ref_deltas = common dso_local global i32 0, align 4
@compare_ref_delta_entry = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@show_resolving_progress = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Resolving deltas\00", align 1
@progress = common dso_local global i32 0, align 4
@nr_dispatched = common dso_local global i64 0, align 8
@nr_threads = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"GIT_FORCE_THREADS\00", align 1
@thread_data = common dso_local global %struct.TYPE_3__* null, align 8
@threaded_second_pass = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"unable to create thread: %s\00", align 1
@nr_objects = common dso_local global i32 0, align 4
@objects = common dso_local global %struct.object_entry* null, align 8
@nr_resolved_deltas = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @resolve_deltas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_deltas() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.object_entry*, align 8
  %4 = load i64, i64* @nr_ofs_deltas, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* @nr_ref_deltas, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  br label %108

10:                                               ; preds = %6, %0
  %11 = load i32, i32* @ofs_deltas, align 4
  %12 = load i64, i64* @nr_ofs_deltas, align 8
  %13 = load i32, i32* @compare_ofs_delta_entry, align 4
  %14 = call i32 @QSORT(i32 %11, i64 %12, i32 %13)
  %15 = load i32, i32* @ref_deltas, align 4
  %16 = load i64, i64* @nr_ref_deltas, align 8
  %17 = load i32, i32* @compare_ref_delta_entry, align 4
  %18 = call i32 @QSORT(i32 %15, i64 %16, i32 %17)
  %19 = load i64, i64* @verbose, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %10
  %22 = load i64, i64* @show_resolving_progress, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21, %10
  %25 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* @nr_ref_deltas, align 8
  %27 = load i64, i64* @nr_ofs_deltas, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @start_progress(i32 %25, i64 %28)
  store i32 %29, i32* @progress, align 4
  br label %30

30:                                               ; preds = %24, %21
  store i64 0, i64* @nr_dispatched, align 8
  %31 = load i32, i32* @nr_threads, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = call i64 @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %83

36:                                               ; preds = %33, %30
  %37 = call i32 (...) @init_thread()
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %62, %36
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @nr_threads, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_data, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* @threaded_second_pass, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_data, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = call i32 @pthread_create(i32* %47, i32* null, i32 %48, %struct.TYPE_3__* %52)
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 @die(i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %56, %42
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %1, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %1, align 4
  br label %38

65:                                               ; preds = %38
  store i32 0, i32* %1, align 4
  br label %66

66:                                               ; preds = %78, %65
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* @nr_threads, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_data, align 8
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pthread_join(i32 %76, i32* null)
  br label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %1, align 4
  br label %66

81:                                               ; preds = %66
  %82 = call i32 (...) @cleanup_thread()
  br label %108

83:                                               ; preds = %33
  store i32 0, i32* %1, align 4
  br label %84

84:                                               ; preds = %105, %83
  %85 = load i32, i32* %1, align 4
  %86 = load i32, i32* @nr_objects, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %84
  %89 = load %struct.object_entry*, %struct.object_entry** @objects, align 8
  %90 = load i32, i32* %1, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %89, i64 %91
  store %struct.object_entry* %92, %struct.object_entry** %3, align 8
  %93 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %94 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @is_delta_type(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %105

99:                                               ; preds = %88
  %100 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %101 = call i32 @resolve_base(%struct.object_entry* %100)
  %102 = load i32, i32* @progress, align 4
  %103 = load i32, i32* @nr_resolved_deltas, align 4
  %104 = call i32 @display_progress(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %98
  %106 = load i32, i32* %1, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %1, align 4
  br label %84

108:                                              ; preds = %9, %81, %84
  ret void
}

declare dso_local i32 @QSORT(i32, i64, i32) #1

declare dso_local i32 @start_progress(i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @init_thread(...) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @cleanup_thread(...) #1

declare dso_local i64 @is_delta_type(i32) #1

declare dso_local i32 @resolve_base(%struct.object_entry*) #1

declare dso_local i32 @display_progress(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
