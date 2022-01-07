; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_vmci_hashtable_entry_exists_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_vmci_hashtable_entry_exists_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_hashtable = type { %struct.vmci_hash_entry**, i32 }
%struct.vmci_hash_entry = type { %struct.vmci_hash_entry*, %struct.vmci_handle }
%struct.vmci_handle = type { i32 }

@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_hashtable*, i32)* @vmci_hashtable_entry_exists_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_hashtable_entry_exists_locked(%struct.vmci_hashtable* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmci_handle, align 4
  %5 = alloca %struct.vmci_hashtable*, align 8
  %6 = alloca %struct.vmci_hash_entry*, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store %struct.vmci_hashtable* %0, %struct.vmci_hashtable** %5, align 8
  %9 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %5, align 8
  %10 = call i32 @ASSERT(%struct.vmci_hashtable* %9)
  %11 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %5, align 8
  %12 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @VMCI_HASHTABLE_HASH(i32 %15, i32 %13)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %5, align 8
  %18 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %17, i32 0, i32 0
  %19 = load %struct.vmci_hash_entry**, %struct.vmci_hash_entry*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %19, i64 %21
  %23 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %22, align 8
  store %struct.vmci_hash_entry* %23, %struct.vmci_hash_entry** %6, align 8
  br label %24

24:                                               ; preds = %63, %2
  %25 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %6, align 8
  %26 = icmp ne %struct.vmci_hash_entry* %25, null
  br i1 %26, label %27, label %67

27:                                               ; preds = %24
  %28 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %6, align 8
  %29 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @VMCI_HANDLE_TO_RESOURCE_ID(i32 %31)
  %33 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @VMCI_HANDLE_TO_RESOURCE_ID(i32 %34)
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %27
  %38 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %6, align 8
  %39 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @VMCI_HANDLE_TO_CONTEXT_ID(i32 %41)
  %43 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @VMCI_HANDLE_TO_CONTEXT_ID(i32 %44)
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %61, label %47

47:                                               ; preds = %37
  %48 = load i64, i64* @VMCI_INVALID_ID, align 8
  %49 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @VMCI_HANDLE_TO_CONTEXT_ID(i32 %50)
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = load i64, i64* @VMCI_INVALID_ID, align 8
  %55 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %6, align 8
  %56 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @VMCI_HANDLE_TO_CONTEXT_ID(i32 %58)
  %60 = icmp eq i64 %54, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53, %47, %37
  store i32 1, i32* %3, align 4
  br label %68

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %27
  %64 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %6, align 8
  %65 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %64, i32 0, i32 0
  %66 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %65, align 8
  store %struct.vmci_hash_entry* %66, %struct.vmci_hash_entry** %6, align 8
  br label %24

67:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @ASSERT(%struct.vmci_hashtable*) #1

declare dso_local i32 @VMCI_HASHTABLE_HASH(i32, i32) #1

declare dso_local i64 @VMCI_HANDLE_TO_RESOURCE_ID(i32) #1

declare dso_local i64 @VMCI_HANDLE_TO_CONTEXT_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
