; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_dwim_reverse_initial.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_dwim_reverse_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.rev_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, %struct.object* }
%struct.object = type { i64, i32 }
%struct.object_id = type { i32 }

@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (%struct.rev_info*, i8**)* @dwim_reverse_initial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @dwim_reverse_initial(%struct.rev_info* %0, i8** %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.object*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.object_id, align 4
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %10 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.commit* null, %struct.commit** %3, align 8
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %17 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.object*, %struct.object** %21, align 8
  store %struct.object* %22, %struct.object** %6, align 8
  %23 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %24 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.object*, %struct.object** %6, align 8
  %27 = call %struct.object* @deref_tag(i32 %25, %struct.object* %26, i32* null, i32 0)
  store %struct.object* %27, %struct.object** %6, align 8
  %28 = load %struct.object*, %struct.object** %6, align 8
  %29 = getelementptr inbounds %struct.object, %struct.object* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OBJ_COMMIT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  store %struct.commit* null, %struct.commit** %3, align 8
  br label %71

34:                                               ; preds = %15
  %35 = load i32, i32* @RESOLVE_REF_READING, align 4
  %36 = call i32 @resolve_ref_unsafe(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %35, %struct.object_id* %8, i32* null)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store %struct.commit* null, %struct.commit** %3, align 8
  br label %71

39:                                               ; preds = %34
  %40 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %41 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.commit* @lookup_commit_reference_gently(i32 %42, %struct.object_id* %8, i32 1)
  store %struct.commit* %43, %struct.commit** %7, align 8
  %44 = load %struct.commit*, %struct.commit** %7, align 8
  %45 = icmp ne %struct.commit* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store %struct.commit* null, %struct.commit** %3, align 8
  br label %71

47:                                               ; preds = %39
  %48 = load i32, i32* @UNINTERESTING, align 4
  %49 = load %struct.object*, %struct.object** %6, align 8
  %50 = getelementptr inbounds %struct.object, %struct.object* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %54 = load %struct.commit*, %struct.commit** %7, align 8
  %55 = getelementptr inbounds %struct.commit, %struct.commit* %54, i32 0, i32 0
  %56 = call i32 @add_pending_object(%struct.rev_info* %53, i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %57 = load i8**, i8*** %5, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %47
  %60 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %61 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %5, align 8
  store i8* %66, i8** %67, align 8
  br label %68

68:                                               ; preds = %59, %47
  %69 = load %struct.object*, %struct.object** %6, align 8
  %70 = bitcast %struct.object* %69 to %struct.commit*
  store %struct.commit* %70, %struct.commit** %3, align 8
  br label %71

71:                                               ; preds = %68, %46, %38, %33, %14
  %72 = load %struct.commit*, %struct.commit** %3, align 8
  ret %struct.commit* %72
}

declare dso_local %struct.object* @deref_tag(i32, %struct.object*, i32*, i32) #1

declare dso_local i32 @resolve_ref_unsafe(i8*, i32, %struct.object_id*, i32*) #1

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
