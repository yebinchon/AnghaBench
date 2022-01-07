; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_fha.c_fha_nd_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_fha.c_fha_nd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.svc_req = type { i32, %struct.fha_hash_entry* }
%struct.fha_hash_entry = type { i64, i64, %struct.mtx* }
%struct.mtx = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Negative request count %d on %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fha_nd_complete(%struct.TYPE_4__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.svc_req*, align 8
  %5 = alloca %struct.fha_hash_entry*, align 8
  %6 = alloca %struct.mtx*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.svc_req* %1, %struct.svc_req** %4, align 8
  %7 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %8 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %7, i32 0, i32 1
  %9 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %8, align 8
  store %struct.fha_hash_entry* %9, %struct.fha_hash_entry** %5, align 8
  %10 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %5, align 8
  %11 = icmp ne %struct.fha_hash_entry* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %62

13:                                               ; preds = %2
  %14 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %5, align 8
  %15 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %14, i32 0, i32 2
  %16 = load %struct.mtx*, %struct.mtx** %15, align 8
  store %struct.mtx* %16, %struct.mtx** %6, align 8
  %17 = load %struct.mtx*, %struct.mtx** %6, align 8
  %18 = call i32 @mtx_lock(%struct.mtx* %17)
  %19 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %5, align 8
  %20 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %21 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @fha_hash_entry_add_op(%struct.fha_hash_entry* %19, i32 %22, i32 -1)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = bitcast %struct.TYPE_4__* %36 to i8*
  %38 = call i32 @KASSERT(i32 %32, i8* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %13
  %44 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %5, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = call i32 @fha_hash_entry_remove_thread(%struct.fha_hash_entry* %44, %struct.TYPE_4__* %45)
  %47 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %5, align 8
  %48 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %5, align 8
  %51 = getelementptr inbounds %struct.fha_hash_entry, %struct.fha_hash_entry* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = icmp eq i64 0, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load %struct.fha_hash_entry*, %struct.fha_hash_entry** %5, align 8
  %57 = call i32 @fha_hash_entry_remove(%struct.fha_hash_entry* %56)
  br label %58

58:                                               ; preds = %55, %43
  br label %59

59:                                               ; preds = %58, %13
  %60 = load %struct.mtx*, %struct.mtx** %6, align 8
  %61 = call i32 @mtx_unlock(%struct.mtx* %60)
  br label %62

62:                                               ; preds = %59, %12
  ret void
}

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @fha_hash_entry_add_op(%struct.fha_hash_entry*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @fha_hash_entry_remove_thread(%struct.fha_hash_entry*, %struct.TYPE_4__*) #1

declare dso_local i32 @fha_hash_entry_remove(%struct.fha_hash_entry*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
