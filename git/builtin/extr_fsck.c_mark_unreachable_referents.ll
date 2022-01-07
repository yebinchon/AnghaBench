; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_mark_unreachable_referents.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_mark_unreachable_referents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsck_options = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i32, i64, i32 }

@FSCK_OPTIONS_DEFAULT = common dso_local global %struct.fsck_options zeroinitializer, align 4
@the_repository = common dso_local global i32 0, align 4
@HAS_OBJ = common dso_local global i32 0, align 4
@REACHABLE = common dso_local global i32 0, align 4
@OBJ_NONE = common dso_local global i64 0, align 8
@mark_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*)* @mark_unreachable_referents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_unreachable_referents(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca %struct.fsck_options, align 4
  %4 = alloca %struct.object*, align 8
  %5 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %6 = bitcast %struct.fsck_options* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.fsck_options* @FSCK_OPTIONS_DEFAULT to i8*), i64 4, i1 false)
  %7 = load i32, i32* @the_repository, align 4
  %8 = load %struct.object_id*, %struct.object_id** %2, align 8
  %9 = call %struct.object* @lookup_object(i32 %7, %struct.object_id* %8)
  store %struct.object* %9, %struct.object** %4, align 8
  %10 = load %struct.object*, %struct.object** %4, align 8
  %11 = icmp ne %struct.object* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.object*, %struct.object** %4, align 8
  %14 = getelementptr inbounds %struct.object, %struct.object* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HAS_OBJ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %1
  br label %52

20:                                               ; preds = %12
  %21 = load %struct.object*, %struct.object** %4, align 8
  %22 = getelementptr inbounds %struct.object, %struct.object* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @REACHABLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %52

28:                                               ; preds = %20
  %29 = load %struct.object*, %struct.object** %4, align 8
  %30 = getelementptr inbounds %struct.object, %struct.object* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OBJ_NONE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load i32, i32* @the_repository, align 4
  %36 = load %struct.object*, %struct.object** %4, align 8
  %37 = getelementptr inbounds %struct.object, %struct.object* %36, i32 0, i32 2
  %38 = call i32 @oid_object_info(i32 %35, i32* %37, i32* null)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ugt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* @the_repository, align 4
  %43 = load %struct.object*, %struct.object** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @object_as_type(i32 %42, %struct.object* %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %41, %34
  br label %47

47:                                               ; preds = %46, %28
  %48 = load i32, i32* @mark_used, align 4
  %49 = getelementptr inbounds %struct.fsck_options, %struct.fsck_options* %3, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.object*, %struct.object** %4, align 8
  %51 = call i32 @fsck_walk(%struct.object* %50, i32* null, %struct.fsck_options* %3)
  br label %52

52:                                               ; preds = %47, %27, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.object* @lookup_object(i32, %struct.object_id*) #2

declare dso_local i32 @oid_object_info(i32, i32*, i32*) #2

declare dso_local i32 @object_as_type(i32, %struct.object*, i32, i32) #2

declare dso_local i32 @fsck_walk(%struct.object*, i32*, %struct.fsck_options*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
