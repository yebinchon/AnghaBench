; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_ref_newer.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_ref_newer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.object = type { i64 }
%struct.commit = type { i32 }
%struct.commit_list = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ref_newer(%struct.object_id* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.object*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.commit_list*, align 8
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  store %struct.commit_list* null, %struct.commit_list** %9, align 8
  %10 = load i32, i32* @the_repository, align 4
  %11 = load i32, i32* @the_repository, align 4
  %12 = load %struct.object_id*, %struct.object_id** %5, align 8
  %13 = call i32 @parse_object(i32 %11, %struct.object_id* %12)
  %14 = call %struct.object* @deref_tag(i32 %10, i32 %13, i32* null, i32 0)
  store %struct.object* %14, %struct.object** %6, align 8
  %15 = load %struct.object*, %struct.object** %6, align 8
  %16 = icmp ne %struct.object* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.object*, %struct.object** %6, align 8
  %19 = getelementptr inbounds %struct.object, %struct.object* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OBJ_COMMIT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %54

24:                                               ; preds = %17
  %25 = load %struct.object*, %struct.object** %6, align 8
  %26 = bitcast %struct.object* %25 to %struct.commit*
  store %struct.commit* %26, %struct.commit** %7, align 8
  %27 = load i32, i32* @the_repository, align 4
  %28 = load i32, i32* @the_repository, align 4
  %29 = load %struct.object_id*, %struct.object_id** %4, align 8
  %30 = call i32 @parse_object(i32 %28, %struct.object_id* %29)
  %31 = call %struct.object* @deref_tag(i32 %27, i32 %30, i32* null, i32 0)
  store %struct.object* %31, %struct.object** %6, align 8
  %32 = load %struct.object*, %struct.object** %6, align 8
  %33 = icmp ne %struct.object* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.object*, %struct.object** %6, align 8
  %36 = getelementptr inbounds %struct.object, %struct.object* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @OBJ_COMMIT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %24
  store i32 0, i32* %3, align 4
  br label %54

41:                                               ; preds = %34
  %42 = load %struct.object*, %struct.object** %6, align 8
  %43 = bitcast %struct.object* %42 to %struct.commit*
  store %struct.commit* %43, %struct.commit** %8, align 8
  %44 = load %struct.commit*, %struct.commit** %8, align 8
  %45 = call i64 @parse_commit(%struct.commit* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %54

48:                                               ; preds = %41
  %49 = load %struct.commit*, %struct.commit** %7, align 8
  %50 = call i32 @commit_list_insert(%struct.commit* %49, %struct.commit_list** %9)
  %51 = load %struct.commit*, %struct.commit** %8, align 8
  %52 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %53 = call i32 @is_descendant_of(%struct.commit* %51, %struct.commit_list* %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %47, %40, %23
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.object* @deref_tag(i32, i32, i32*, i32) #1

declare dso_local i32 @parse_object(i32, %struct.object_id*) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @is_descendant_of(%struct.commit*, %struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
