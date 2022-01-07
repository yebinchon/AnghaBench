; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_handle_ref.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_fsck_handle_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i64, i32 }

@the_repository = common dso_local global i32 0, align 4
@default_refs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: invalid sha1 pointer %s\00", align 1
@ERROR_REACHABLE = common dso_local global i32 0, align 4
@errors_found = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: not a commit\00", align 1
@ERROR_REFS = common dso_local global i32 0, align 4
@USED = common dso_local global i32 0, align 4
@name_objects = common dso_local global i64 0, align 8
@fsck_walk_options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @fsck_handle_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_handle_ref(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @the_repository, align 4
  %12 = load %struct.object_id*, %struct.object_id** %7, align 8
  %13 = call %struct.object* @parse_object(i32 %11, %struct.object_id* %12)
  store %struct.object* %13, %struct.object** %10, align 8
  %14 = load %struct.object*, %struct.object** %10, align 8
  %15 = icmp ne %struct.object* %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %4
  %17 = load %struct.object_id*, %struct.object_id** %7, align 8
  %18 = call i64 @is_promisor_object(%struct.object_id* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @default_refs, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @default_refs, align 4
  store i32 0, i32* %5, align 4
  br label %68

23:                                               ; preds = %16
  %24 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.object_id*, %struct.object_id** %7, align 8
  %27 = call i8* @oid_to_hex(%struct.object_id* %26)
  %28 = call i32 (i32, i8*, ...) @error(i32 %24, i8* %25, i8* %27)
  %29 = load i32, i32* @ERROR_REACHABLE, align 4
  %30 = load i32, i32* @errors_found, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* @errors_found, align 4
  store i32 0, i32* %5, align 4
  br label %68

32:                                               ; preds = %4
  %33 = load %struct.object*, %struct.object** %10, align 8
  %34 = getelementptr inbounds %struct.object, %struct.object* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @OBJ_COMMIT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @is_branch(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 (i32, i8*, ...) @error(i32 %43, i8* %44)
  %46 = load i32, i32* @ERROR_REFS, align 4
  %47 = load i32, i32* @errors_found, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* @errors_found, align 4
  br label %49

49:                                               ; preds = %42, %38, %32
  %50 = load i32, i32* @default_refs, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @default_refs, align 4
  %52 = load i32, i32* @USED, align 4
  %53 = load %struct.object*, %struct.object** %10, align 8
  %54 = getelementptr inbounds %struct.object, %struct.object* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i64, i64* @name_objects, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fsck_walk_options, i32 0, i32 0), align 4
  %61 = load %struct.object*, %struct.object** %10, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @xstrdup(i8* %62)
  %64 = call i32 @add_decoration(i32 %60, %struct.object* %61, i32 %63)
  br label %65

65:                                               ; preds = %59, %49
  %66 = load %struct.object*, %struct.object** %10, align 8
  %67 = call i32 @mark_object_reachable(%struct.object* %66)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %23, %20
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i64 @is_promisor_object(%struct.object_id*) #1

declare dso_local i32 @error(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i64 @is_branch(i8*) #1

declare dso_local i32 @add_decoration(i32, %struct.object*, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @mark_object_reachable(%struct.object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
