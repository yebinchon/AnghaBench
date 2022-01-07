; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_resource.c_vmci_resource_get_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_resource.c_vmci_resource_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }

@resource_id = common dso_local global i64 0, align 8
@VMCI_RESERVED_RESOURCE_ID_MAX = common dso_local global i64 0, align 8
@resource_id_lock = common dso_local global i32 0, align 4
@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@resource_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vmci_resource_get_id(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmci_handle, align 4
  %8 = alloca %struct.vmci_handle, align 4
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* @resource_id, align 8
  store i64 %9, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @VMCI_RESERVED_RESOURCE_ID_MAX, align 8
  %12 = icmp sgt i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  br label %15

15:                                               ; preds = %51, %1
  %16 = call i32 @vmci_grab_lock(i32* @resource_id_lock)
  %17 = load i64, i64* @resource_id, align 8
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @VMCI_MAKE_HANDLE(i64 %18, i64 %19)
  %21 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %8, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = bitcast %struct.vmci_handle* %7 to i8*
  %23 = bitcast %struct.vmci_handle* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load i64, i64* @resource_id, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* @resource_id, align 8
  %26 = load i64, i64* @resource_id, align 8
  %27 = load i64, i64* @VMCI_INVALID_ID, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @UNLIKELY(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = load i64, i64* @VMCI_RESERVED_RESOURCE_ID_MAX, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* @resource_id, align 8
  br label %35

35:                                               ; preds = %32, %15
  %36 = call i32 @vmci_release_lock(i32* @resource_id_lock)
  %37 = load i32, i32* @resource_table, align 4
  %38 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @vmci_hashtable_entry_exists(i32 %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* @resource_id, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %48, %49
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  br i1 %52, label %15, label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @UNLIKELY(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i64, i64* @VMCI_INVALID_ID, align 8
  store i64 %61, i64* %2, align 8
  br label %64

62:                                               ; preds = %53
  %63 = load i64, i64* %4, align 8
  store i64 %63, i64* %2, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = load i64, i64* %2, align 8
  ret i64 %65
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @vmci_grab_lock(i32*) #1

declare dso_local i32 @VMCI_MAKE_HANDLE(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @vmci_release_lock(i32*) #1

declare dso_local i32 @vmci_hashtable_entry_exists(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
