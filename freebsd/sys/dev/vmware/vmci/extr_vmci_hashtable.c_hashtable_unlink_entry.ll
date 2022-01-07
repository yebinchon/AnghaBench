; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_hashtable_unlink_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_hashtable_unlink_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_hashtable = type { %struct.vmci_hash_entry**, i32 }
%struct.vmci_hash_entry = type { %struct.vmci_hash_entry*, i32 }

@VMCI_ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmci_hashtable*, %struct.vmci_hash_entry*)* @hashtable_unlink_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashtable_unlink_entry(%struct.vmci_hashtable* %0, %struct.vmci_hash_entry* %1) #0 {
  %3 = alloca %struct.vmci_hashtable*, align 8
  %4 = alloca %struct.vmci_hash_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmci_hash_entry*, align 8
  %7 = alloca %struct.vmci_hash_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.vmci_hashtable* %0, %struct.vmci_hashtable** %3, align 8
  store %struct.vmci_hash_entry* %1, %struct.vmci_hash_entry** %4, align 8
  %9 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %4, align 8
  %10 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %3, align 8
  %13 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @VMCI_HASHTABLE_HASH(i32 %11, i32 %14)
  store i32 %15, i32* %8, align 4
  store %struct.vmci_hash_entry* null, %struct.vmci_hash_entry** %6, align 8
  %16 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %3, align 8
  %17 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %16, i32 0, i32 0
  %18 = load %struct.vmci_hash_entry**, %struct.vmci_hash_entry*** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %18, i64 %20
  %22 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %21, align 8
  store %struct.vmci_hash_entry* %22, %struct.vmci_hash_entry** %7, align 8
  br label %23

23:                                               ; preds = %2, %65
  %24 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %7, align 8
  %25 = icmp eq %struct.vmci_hash_entry* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @VMCI_ERROR_NOT_FOUND, align 4
  store i32 %27, i32* %5, align 4
  br label %70

28:                                               ; preds = %23
  %29 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %7, align 8
  %30 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %4, align 8
  %33 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @VMCI_HANDLE_EQUAL(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %28
  %38 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %7, align 8
  %39 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %4, align 8
  %40 = icmp eq %struct.vmci_hash_entry* %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %6, align 8
  %44 = icmp ne %struct.vmci_hash_entry* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %7, align 8
  %47 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %46, i32 0, i32 0
  %48 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %47, align 8
  %49 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %6, align 8
  %50 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %49, i32 0, i32 0
  store %struct.vmci_hash_entry* %48, %struct.vmci_hash_entry** %50, align 8
  br label %61

51:                                               ; preds = %37
  %52 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %7, align 8
  %53 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %52, i32 0, i32 0
  %54 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %53, align 8
  %55 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %3, align 8
  %56 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %55, i32 0, i32 0
  %57 = load %struct.vmci_hash_entry**, %struct.vmci_hash_entry*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %57, i64 %59
  store %struct.vmci_hash_entry* %54, %struct.vmci_hash_entry** %60, align 8
  br label %61

61:                                               ; preds = %51, %45
  %62 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %7, align 8
  %63 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %62, i32 0, i32 0
  store %struct.vmci_hash_entry* null, %struct.vmci_hash_entry** %63, align 8
  %64 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %64, i32* %5, align 4
  br label %70

65:                                               ; preds = %28
  %66 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %7, align 8
  store %struct.vmci_hash_entry* %66, %struct.vmci_hash_entry** %6, align 8
  %67 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %7, align 8
  %68 = getelementptr inbounds %struct.vmci_hash_entry, %struct.vmci_hash_entry* %67, i32 0, i32 0
  %69 = load %struct.vmci_hash_entry*, %struct.vmci_hash_entry** %68, align 8
  store %struct.vmci_hash_entry* %69, %struct.vmci_hash_entry** %7, align 8
  br label %23

70:                                               ; preds = %61, %26
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @VMCI_HASHTABLE_HASH(i32, i32) #1

declare dso_local i64 @VMCI_HANDLE_EQUAL(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
