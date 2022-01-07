; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_push_to_deploy.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_push_to_deploy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i8*, i32, i32, i32, i32, i32 }
%struct.argv_array = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"update-index\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"--ignore-submodules\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"--refresh\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"diff-files\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"diff-index\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"--cached\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"read-tree\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"Up-to-date check failed\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Working directory has unstaged changes\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Working directory has staged changes\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Could not update working tree to new HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.argv_array*, i8*)* @push_to_deploy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @push_to_deploy(i8* %0, %struct.argv_array* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.argv_array*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [5 x i8*], align 16
  %9 = alloca [5 x i8*], align 16
  %10 = alloca [7 x i8*], align 16
  %11 = alloca [5 x i8*], align 16
  %12 = alloca %struct.child_process, align 8
  store i8* %0, i8** %5, align 8
  store %struct.argv_array* %1, %struct.argv_array** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = bitcast [5 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false)
  %14 = bitcast i8* %13 to [5 x i8*]*
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8** %15, align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %16, align 8
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8** %18, align 8
  %19 = bitcast [5 x i8*]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 40, i1 false)
  %20 = bitcast i8* %19 to [5 x i8*]*
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8** %21, align 16
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8** %22, align 8
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i32 0, i32 2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8** %23, align 16
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8** %24, align 8
  %25 = bitcast [7 x i8*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 56, i1 false)
  %26 = bitcast i8* %25 to [7 x i8*]*
  %27 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8** %27, align 16
  %28 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8** %28, align 8
  %29 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8** %29, align 16
  %30 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8** %30, align 8
  %31 = getelementptr inbounds [7 x i8*], [7 x i8*]* %26, i32 0, i32 5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8** %31, align 8
  %32 = bitcast [5 x i8*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 40, i1 false)
  %33 = bitcast i8* %32 to [5 x i8*]*
  %34 = getelementptr inbounds [5 x i8*], [5 x i8*]* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8** %34, align 16
  %35 = getelementptr inbounds [5 x i8*], [5 x i8*]* %33, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8** %35, align 8
  %36 = getelementptr inbounds [5 x i8*], [5 x i8*]* %33, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8** %36, align 16
  %37 = bitcast %struct.child_process* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 40, i1 false)
  %38 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 0
  %39 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 0
  store i8** %38, i8*** %39, align 8
  %40 = load %struct.argv_array*, %struct.argv_array** %6, align 8
  %41 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 6
  store i32 %42, i32* %43, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 2
  store i32 1, i32* %46, align 8
  %47 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 3
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 4
  store i32 1, i32* %48, align 8
  %49 = call i64 @run_command(%struct.child_process* %12)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %3
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8** %4, align 8
  br label %112

52:                                               ; preds = %3
  %53 = call i32 @child_process_init(%struct.child_process* %12)
  %54 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 0
  %55 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 0
  store i8** %54, i8*** %55, align 8
  %56 = load %struct.argv_array*, %struct.argv_array** %6, align 8
  %57 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 6
  store i32 %58, i32* %59, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 1
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 2
  store i32 1, i32* %62, align 8
  %63 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 3
  store i32 1, i32* %63, align 4
  %64 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 4
  store i32 1, i32* %64, align 8
  %65 = call i64 @run_command(%struct.child_process* %12)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i8** %4, align 8
  br label %112

68:                                               ; preds = %52
  %69 = call i64 (...) @head_has_history()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %74

72:                                               ; preds = %68
  %73 = call i8* (...) @empty_tree_oid_hex()
  br label %74

74:                                               ; preds = %72, %71
  %75 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %71 ], [ %73, %72 ]
  %76 = getelementptr inbounds [7 x i8*], [7 x i8*]* %10, i64 0, i64 4
  store i8* %75, i8** %76, align 16
  %77 = call i32 @child_process_init(%struct.child_process* %12)
  %78 = getelementptr inbounds [7 x i8*], [7 x i8*]* %10, i64 0, i64 0
  %79 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 0
  store i8** %78, i8*** %79, align 8
  %80 = load %struct.argv_array*, %struct.argv_array** %6, align 8
  %81 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 6
  store i32 %82, i32* %83, align 8
  %84 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 2
  store i32 1, i32* %84, align 8
  %85 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 5
  store i32 1, i32* %85, align 4
  %86 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 3
  store i32 0, i32* %86, align 4
  %87 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 4
  store i32 1, i32* %87, align 8
  %88 = call i64 @run_command(%struct.child_process* %12)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %74
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i8** %4, align 8
  br label %112

91:                                               ; preds = %74
  %92 = load i8*, i8** %5, align 8
  %93 = call i8* @hash_to_hex(i8* %92)
  %94 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 3
  store i8* %93, i8** %94, align 8
  %95 = call i32 @child_process_init(%struct.child_process* %12)
  %96 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %97 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 0
  store i8** %96, i8*** %97, align 8
  %98 = load %struct.argv_array*, %struct.argv_array** %6, align 8
  %99 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 6
  store i32 %100, i32* %101, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 1
  store i8* %102, i8** %103, align 8
  %104 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 2
  store i32 1, i32* %104, align 8
  %105 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 5
  store i32 1, i32* %105, align 4
  %106 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 3
  store i32 0, i32* %106, align 4
  %107 = getelementptr inbounds %struct.child_process, %struct.child_process* %12, i32 0, i32 4
  store i32 1, i32* %107, align 8
  %108 = call i64 @run_command(%struct.child_process* %12)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %91
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i8** %4, align 8
  br label %112

111:                                              ; preds = %91
  store i8* null, i8** %4, align 8
  br label %112

112:                                              ; preds = %111, %110, %90, %67, %51
  %113 = load i8*, i8** %4, align 8
  ret i8* %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @run_command(%struct.child_process*) #2

declare dso_local i32 @child_process_init(%struct.child_process*) #2

declare dso_local i64 @head_has_history(...) #2

declare dso_local i8* @empty_tree_oid_hex(...) #2

declare dso_local i8* @hash_to_hex(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
