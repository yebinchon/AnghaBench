; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_verify_working_tree_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_verify_working_tree_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32 }
%struct.commit = type { %struct.commit_list* }
%struct.commit_list = type { %struct.TYPE_6__*, %struct.commit_list* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.object_id }
%struct.object_id = type { i32 }

@OBJ_BLOB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"no such path '%s' in HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.commit*, i8*)* @verify_working_tree_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_working_tree_path(%struct.repository* %0, %struct.commit* %1, i8* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca %struct.object_id, align 4
  %11 = alloca i16, align 2
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.commit*, %struct.commit** %5, align 8
  %13 = getelementptr inbounds %struct.commit, %struct.commit* %12, i32 0, i32 0
  %14 = load %struct.commit_list*, %struct.commit_list** %13, align 8
  store %struct.commit_list* %14, %struct.commit_list** %7, align 8
  br label %15

15:                                               ; preds = %36, %3
  %16 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %17 = icmp ne %struct.commit_list* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %20 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.object_id* %23, %struct.object_id** %9, align 8
  %24 = load %struct.repository*, %struct.repository** %4, align 8
  %25 = load %struct.object_id*, %struct.object_id** %9, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @get_tree_entry(%struct.repository* %24, %struct.object_id* %25, i8* %26, %struct.object_id* %10, i16* %11)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %18
  %30 = load %struct.repository*, %struct.repository** %4, align 8
  %31 = call i64 @oid_object_info(%struct.repository* %30, %struct.object_id* %10, i32* null)
  %32 = load i64, i64* @OBJ_BLOB, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %81

35:                                               ; preds = %29, %18
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %38 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %37, i32 0, i32 1
  %39 = load %struct.commit_list*, %struct.commit_list** %38, align 8
  store %struct.commit_list* %39, %struct.commit_list** %7, align 8
  br label %15

40:                                               ; preds = %15
  %41 = load %struct.repository*, %struct.repository** %4, align 8
  %42 = getelementptr inbounds %struct.repository, %struct.repository* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = call i32 @index_name_pos(%struct.TYPE_8__* %43, i8* %44, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %81

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 -1, %52
  %54 = load %struct.repository*, %struct.repository** %4, align 8
  %55 = getelementptr inbounds %struct.repository, %struct.repository* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %51
  %61 = load %struct.repository*, %struct.repository** %4, align 8
  %62 = getelementptr inbounds %struct.repository, %struct.repository* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 -1, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %65, i64 %68
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @strcmp(i32 %72, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %60
  br label %80

77:                                               ; preds = %60, %51
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %77, %76
  br label %81

81:                                               ; preds = %34, %80, %50
  ret void
}

declare dso_local i32 @get_tree_entry(%struct.repository*, %struct.object_id*, i8*, %struct.object_id*, i16*) #1

declare dso_local i64 @oid_object_info(%struct.repository*, %struct.object_id*, i32*) #1

declare dso_local i32 @index_name_pos(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
