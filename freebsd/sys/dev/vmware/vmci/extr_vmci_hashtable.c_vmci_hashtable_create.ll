; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_vmci_hashtable_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_hashtable.c_vmci_hashtable_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_hashtable = type { i32, %struct.vmci_hashtable*, i32 }

@VMCI_MEMORY_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"VMCI Hashtable lock\00", align 1
@VMCI_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmci_hashtable* @vmci_hashtable_create(i32 %0) #0 {
  %2 = alloca %struct.vmci_hashtable*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmci_hashtable*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @VMCI_MEMORY_NORMAL, align 4
  %6 = call i8* @vmci_alloc_kernel_mem(i32 24, i32 %5)
  %7 = bitcast i8* %6 to %struct.vmci_hashtable*
  store %struct.vmci_hashtable* %7, %struct.vmci_hashtable** %4, align 8
  %8 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %4, align 8
  %9 = icmp eq %struct.vmci_hashtable* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.vmci_hashtable* null, %struct.vmci_hashtable** %2, align 8
  br label %60

11:                                               ; preds = %1
  %12 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %4, align 8
  %13 = call i32 @memset(%struct.vmci_hashtable* %12, i32 0, i32 24)
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 24, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @VMCI_MEMORY_NORMAL, align 4
  %19 = call i8* @vmci_alloc_kernel_mem(i32 %17, i32 %18)
  %20 = bitcast i8* %19 to %struct.vmci_hashtable*
  %21 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %4, align 8
  %22 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %21, i32 0, i32 1
  store %struct.vmci_hashtable* %20, %struct.vmci_hashtable** %22, align 8
  %23 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %4, align 8
  %24 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %23, i32 0, i32 1
  %25 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %24, align 8
  %26 = icmp eq %struct.vmci_hashtable* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %11
  %28 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %4, align 8
  %29 = call i32 @vmci_free_kernel_mem(%struct.vmci_hashtable* %28, i32 24)
  store %struct.vmci_hashtable* null, %struct.vmci_hashtable** %2, align 8
  br label %60

30:                                               ; preds = %11
  %31 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %4, align 8
  %32 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %31, i32 0, i32 1
  %33 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 24, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memset(%struct.vmci_hashtable* %33, i32 0, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %4, align 8
  %41 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %4, align 8
  %43 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %42, i32 0, i32 2
  %44 = call i64 @vmci_init_lock(i32* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %45 = load i64, i64* @VMCI_SUCCESS, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %30
  %48 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %4, align 8
  %49 = getelementptr inbounds %struct.vmci_hashtable, %struct.vmci_hashtable* %48, i32 0, i32 1
  %50 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 24, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @vmci_free_kernel_mem(%struct.vmci_hashtable* %50, i32 %54)
  %56 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %4, align 8
  %57 = call i32 @vmci_free_kernel_mem(%struct.vmci_hashtable* %56, i32 24)
  store %struct.vmci_hashtable* null, %struct.vmci_hashtable** %2, align 8
  br label %60

58:                                               ; preds = %30
  %59 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %4, align 8
  store %struct.vmci_hashtable* %59, %struct.vmci_hashtable** %2, align 8
  br label %60

60:                                               ; preds = %58, %47, %27, %10
  %61 = load %struct.vmci_hashtable*, %struct.vmci_hashtable** %2, align 8
  ret %struct.vmci_hashtable* %61
}

declare dso_local i8* @vmci_alloc_kernel_mem(i32, i32) #1

declare dso_local i32 @memset(%struct.vmci_hashtable*, i32, i32) #1

declare dso_local i32 @vmci_free_kernel_mem(%struct.vmci_hashtable*, i32) #1

declare dso_local i64 @vmci_init_lock(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
