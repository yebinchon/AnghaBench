; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_check_merge_bases.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_check_merge_bases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.object_id }
%struct.object_id = type { i32 }

@current_bad_oid = common dso_local global i32 0, align 4
@good_revs = common dso_local global i32 0, align 4
@skipped_revs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Bisecting: a merge base must be tested\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.commit**, i32)* @check_merge_bases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_merge_bases(i32 %0, %struct.commit** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca %struct.object_id*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.commit** %1, %struct.commit*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.commit**, %struct.commit*** %5, align 8
  %10 = getelementptr inbounds %struct.commit*, %struct.commit** %9, i64 0
  %11 = load %struct.commit*, %struct.commit** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 1
  %14 = load %struct.commit**, %struct.commit*** %5, align 8
  %15 = getelementptr inbounds %struct.commit*, %struct.commit** %14, i64 1
  %16 = call %struct.commit_list* @get_merge_bases_many(%struct.commit* %11, i32 %13, %struct.commit** %15)
  store %struct.commit_list* %16, %struct.commit_list** %7, align 8
  br label %17

17:                                               ; preds = %54, %3
  %18 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %19 = icmp ne %struct.commit_list* %18, null
  br i1 %19, label %20, label %58

20:                                               ; preds = %17
  %21 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %22 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.object_id* %25, %struct.object_id** %8, align 8
  %26 = load %struct.object_id*, %struct.object_id** %8, align 8
  %27 = load i32, i32* @current_bad_oid, align 4
  %28 = call i64 @oideq(%struct.object_id* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = call i32 (...) @handle_bad_merge_base()
  br label %53

32:                                               ; preds = %20
  %33 = load %struct.object_id*, %struct.object_id** %8, align 8
  %34 = call i64 @oid_array_lookup(i32* @good_revs, %struct.object_id* %33)
  %35 = icmp sle i64 0, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %54

37:                                               ; preds = %32
  %38 = load %struct.object_id*, %struct.object_id** %8, align 8
  %39 = call i64 @oid_array_lookup(i32* @skipped_revs, %struct.object_id* %38)
  %40 = icmp sle i64 0, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.object_id*, %struct.object_id** %8, align 8
  %43 = call i32 @handle_skipped_merge_base(%struct.object_id* %42)
  br label %51

44:                                               ; preds = %37
  %45 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @printf(i8* %45)
  %47 = load %struct.object_id*, %struct.object_id** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @bisect_checkout(%struct.object_id* %47, i32 %48)
  %50 = call i32 @exit(i32 %49) #3
  unreachable

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %30
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %56 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %55, i32 0, i32 1
  %57 = load %struct.commit_list*, %struct.commit_list** %56, align 8
  store %struct.commit_list* %57, %struct.commit_list** %7, align 8
  br label %17

58:                                               ; preds = %17
  %59 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %60 = call i32 @free_commit_list(%struct.commit_list* %59)
  ret void
}

declare dso_local %struct.commit_list* @get_merge_bases_many(%struct.commit*, i32, %struct.commit**) #1

declare dso_local i64 @oideq(%struct.object_id*, i32) #1

declare dso_local i32 @handle_bad_merge_base(...) #1

declare dso_local i64 @oid_array_lookup(i32*, %struct.object_id*) #1

declare dso_local i32 @handle_skipped_merge_base(%struct.object_id*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @bisect_checkout(%struct.object_id*, i32) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
