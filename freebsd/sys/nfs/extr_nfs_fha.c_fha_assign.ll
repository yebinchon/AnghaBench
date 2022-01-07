; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_fha.c_fha_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_fha.c_fha_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.svc_req = type { i64, i32, %struct.fha_hash_entry*, i32, i32 }
%struct.fha_hash_entry = type { i32 }
%struct.fha_params = type { %struct.TYPE_8__, %struct.fha_callbacks }
%struct.TYPE_8__ = type { i64 }
%struct.fha_callbacks = type { i32 }
%struct.fha_info = type { i32, i32, i32 }

@NFS_PROG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"fha_assign: NULL thread!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @fha_assign(%struct.TYPE_9__* %0, %struct.svc_req* %1, %struct.fha_params* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.svc_req*, align 8
  %7 = alloca %struct.fha_params*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.fha_info, align 4
  %10 = alloca %struct.fha_hash_entry*, align 8
  %11 = alloca %struct.fha_callbacks*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.svc_req* %1, %struct.svc_req** %6, align 8
  store %struct.fha_params* %2, %struct.fha_params** %7, align 8
  %12 = load %struct.fha_params*, %struct.fha_params** %7, align 8
  %13 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %12, i32 0, i32 1
  store %struct.fha_callbacks* %13, %struct.fha_callbacks** %11, align 8
  %14 = load %struct.fha_params*, %struct.fha_params** %7, align 8
  %15 = getelementptr inbounds %struct.fha_params, %struct.fha_params* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %83

20:                                               ; preds = %3
  %21 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %22 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NFS_PROG, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %83

27:                                               ; preds = %20
  %28 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %29 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 2
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %34 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 3
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %83

38:                                               ; preds = %32, %27
  %39 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %40 = load %struct.fha_callbacks*, %struct.fha_callbacks** %11, align 8
  %41 = call i32 @fha_extract_info(%struct.svc_req* %39, %struct.fha_info* %9, %struct.fha_callbacks* %40)
  %42 = load %struct.fha_params*, %struct.fha_params** %7, align 8
  %43 = getelementptr inbounds %struct.fha_info, %struct.fha_info* %9, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.fha_hash_entry* @fha_hash_entry_lookup(%struct.fha_params* %42, i32 %44)
  store %struct.fha_hash_entry* %45, %struct.fha_hash_entry** %10, align 8
  %46 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %10, align 8
  %47 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %48 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %47, i32 0, i32 2
  store %struct.fha_hash_entry* %46, %struct.fha_hash_entry** %48, align 8
  %49 = getelementptr inbounds %struct.fha_info, %struct.fha_info* %9, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %52 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.fha_info, %struct.fha_info* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %56 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.fha_params*, %struct.fha_params** %7, align 8
  %58 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %10, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = call %struct.TYPE_9__* @fha_hash_entry_choose_thread(%struct.fha_params* %57, %struct.fha_hash_entry* %58, %struct.fha_info* %9, %struct.TYPE_9__* %59)
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %8, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = call i32 @KASSERT(%struct.TYPE_9__* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %10, align 8
  %64 = getelementptr inbounds %struct.fha_info, %struct.fha_info* %9, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fha_hash_entry_add_op(%struct.fha_hash_entry* %63, i32 %65, i32 1)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = getelementptr inbounds %struct.fha_info, %struct.fha_info* %9, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = call i32 @mtx_lock(i32* %76)
  %78 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %10, align 8
  %79 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @mtx_unlock(i32 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %4, align 8
  br label %90

83:                                               ; preds = %37, %26, %19
  %84 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %85 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %84, i32 0, i32 2
  store %struct.fha_hash_entry* null, %struct.fha_hash_entry** %85, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = call i32 @mtx_lock(i32* %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %89, %struct.TYPE_9__** %4, align 8
  br label %90

90:                                               ; preds = %83, %38
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %91
}

declare dso_local i32 @fha_extract_info(%struct.svc_req*, %struct.fha_info*, %struct.fha_callbacks*) #1

declare dso_local %struct.fha_hash_entry* @fha_hash_entry_lookup(%struct.fha_params*, i32) #1

declare dso_local %struct.TYPE_9__* @fha_hash_entry_choose_thread(%struct.fha_params*, %struct.fha_hash_entry*, %struct.fha_info*, %struct.TYPE_9__*) #1

declare dso_local i32 @KASSERT(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @fha_hash_entry_add_op(%struct.fha_hash_entry*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
