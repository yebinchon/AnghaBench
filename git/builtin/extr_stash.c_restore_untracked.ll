; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_restore_untracked.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_restore_untracked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"read-tree\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"GIT_INDEX_FILE=%s\00", align 1
@stash_index_path = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"checkout-index\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*)* @restore_untracked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore_untracked(%struct.object_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.child_process, align 4
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  %6 = bitcast %struct.child_process* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 12, i1 false)
  %7 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 2
  %9 = call i32 @argv_array_push(i32* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 2
  %11 = load %struct.object_id*, %struct.object_id** %3, align 8
  %12 = call i8* @oid_to_hex(%struct.object_id* %11)
  %13 = call i32 @argv_array_push(i32* %10, i8* %12)
  %14 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stash_index_path, i32 0, i32 0), align 4
  %16 = call i32 @argv_array_pushf(i32* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = call i32 @run_command(%struct.child_process* %5)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stash_index_path, i32 0, i32 0), align 4
  %21 = call i32 @remove_path(i32 %20)
  store i32 -1, i32* %2, align 4
  br label %34

22:                                               ; preds = %1
  %23 = call i32 @child_process_init(%struct.child_process* %5)
  %24 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 2
  %26 = call i32 @argv_array_pushl(i32* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %27 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 1
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stash_index_path, i32 0, i32 0), align 4
  %29 = call i32 @argv_array_pushf(i32* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = call i32 @run_command(%struct.child_process* %5)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stash_index_path, i32 0, i32 0), align 4
  %32 = call i32 @remove_path(i32 %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %22, %19
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i32) #2

declare dso_local i32 @run_command(%struct.child_process*) #2

declare dso_local i32 @remove_path(i32) #2

declare dso_local i32 @child_process_init(%struct.child_process*) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
