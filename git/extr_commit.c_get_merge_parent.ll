; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_get_merge_parent.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_get_merge_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.object = type { i32 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit* @get_merge_parent(i8* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.object*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.object_id, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @get_oid(i8* %7, %struct.object_id* %6)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.commit* null, %struct.commit** %2, align 8
  br label %32

11:                                               ; preds = %1
  %12 = load i32, i32* @the_repository, align 4
  %13 = call %struct.object* @parse_object(i32 %12, %struct.object_id* %6)
  store %struct.object* %13, %struct.object** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.object*, %struct.object** %4, align 8
  %16 = load i32, i32* @OBJ_COMMIT, align 4
  %17 = call i64 @peel_to_type(i8* %14, i32 0, %struct.object* %15, i32 %16)
  %18 = inttoptr i64 %17 to %struct.commit*
  store %struct.commit* %18, %struct.commit** %5, align 8
  %19 = load %struct.commit*, %struct.commit** %5, align 8
  %20 = icmp ne %struct.commit* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %11
  %22 = load %struct.commit*, %struct.commit** %5, align 8
  %23 = call i32 @merge_remote_util(%struct.commit* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load %struct.commit*, %struct.commit** %5, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load %struct.object*, %struct.object** %4, align 8
  %29 = call i32 @set_merge_remote_desc(%struct.commit* %26, i8* %27, %struct.object* %28)
  br label %30

30:                                               ; preds = %25, %21, %11
  %31 = load %struct.commit*, %struct.commit** %5, align 8
  store %struct.commit* %31, %struct.commit** %2, align 8
  br label %32

32:                                               ; preds = %30, %10
  %33 = load %struct.commit*, %struct.commit** %2, align 8
  ret %struct.commit* %33
}

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i64 @peel_to_type(i8*, i32, %struct.object*, i32) #1

declare dso_local i32 @merge_remote_util(%struct.commit*) #1

declare dso_local i32 @set_merge_remote_desc(%struct.commit*, i8*, %struct.object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
