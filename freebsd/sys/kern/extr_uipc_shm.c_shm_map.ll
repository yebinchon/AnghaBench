; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.shmfd* }
%struct.shmfd = type { i64, i32, i32 }

@DTYPE_SHM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@VMFS_OPTIMAL_SPACE = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_MAP_WIRE_SYSTEM = common dso_local global i32 0, align 4
@VM_MAP_WIRE_NOHOLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shm_map(%struct.file* %0, i64 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.shmfd*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DTYPE_SHM, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %124

22:                                               ; preds = %4
  %23 = load %struct.file*, %struct.file** %6, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 1
  %25 = load %struct.shmfd*, %struct.shmfd** %24, align 8
  store %struct.shmfd* %25, %struct.shmfd** %10, align 8
  %26 = load %struct.shmfd*, %struct.shmfd** %10, align 8
  %27 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @VM_OBJECT_WLOCK(i32 %29)
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.shmfd*, %struct.shmfd** %10, align 8
  %33 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %22
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.shmfd*, %struct.shmfd** %10, align 8
  %41 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @round_page(i64 %42)
  %44 = icmp ugt i64 %39, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %36, %22
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @VM_OBJECT_WUNLOCK(i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %5, align 4
  br label %124

49:                                               ; preds = %36
  %50 = load %struct.shmfd*, %struct.shmfd** %10, align 8
  %51 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @vm_object_reference_locked(i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @VM_OBJECT_WUNLOCK(i32 %56)
  %58 = load i32, i32* @kernel_map, align 4
  %59 = call i64 @vm_map_min(i32 %58)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @PAGE_MASK, align 8
  %62 = and i64 %60, %61
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @trunc_page(i64 %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add i64 %65, %66
  %68 = call i64 @round_page(i64 %67)
  store i64 %68, i64* %7, align 8
  %69 = load i32, i32* @kernel_map, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i32, i32* @VMFS_OPTIMAL_SPACE, align 4
  %74 = load i32, i32* @VM_PROT_READ, align 4
  %75 = load i32, i32* @VM_PROT_WRITE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @VM_PROT_READ, align 4
  %78 = load i32, i32* @VM_PROT_WRITE, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @vm_map_find(i32 %69, i32 %70, i64 %71, i64* %11, i64 %72, i32 0, i32 %73, i32 %76, i32 %79, i32 0)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @KERN_SUCCESS, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %49
  %85 = load i32, i32* @kernel_map, align 4
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %87, %88
  %90 = load i32, i32* @VM_MAP_WIRE_SYSTEM, align 4
  %91 = load i32, i32* @VM_MAP_WIRE_NOHOLES, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @vm_map_wire(i32 %85, i64 %86, i64 %89, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @KERN_SUCCESS, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %84
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %12, align 8
  %100 = add i64 %98, %99
  %101 = inttoptr i64 %100 to i8*
  %102 = load i8**, i8*** %9, align 8
  store i8* %101, i8** %102, align 8
  store i32 0, i32* %5, align 4
  br label %124

103:                                              ; preds = %84
  %104 = load i32, i32* @kernel_map, align 4
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %106, %107
  %109 = call i32 @vm_map_remove(i32 %104, i64 %105, i64 %108)
  br label %113

110:                                              ; preds = %49
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @vm_object_deallocate(i32 %111)
  br label %113

113:                                              ; preds = %110, %103
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @VM_OBJECT_WLOCK(i32 %114)
  %116 = load %struct.shmfd*, %struct.shmfd** %10, align 8
  %117 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %117, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @VM_OBJECT_WUNLOCK(i32 %120)
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @vm_mmap_to_errno(i32 %122)
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %113, %97, %45, %20
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i32 @vm_object_reference_locked(i32) #1

declare dso_local i64 @vm_map_min(i32) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i32 @vm_map_find(i32, i32, i64, i64*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vm_map_wire(i32, i64, i64, i32) #1

declare dso_local i32 @vm_map_remove(i32, i64, i64) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

declare dso_local i32 @vm_mmap_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
