; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_process.c_proc_rwmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_process.c_proc_rwmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.uio = type { i64, i64, i64 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i64 0, align 8
@VM_PROT_COPY = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_FAULT_DIRTY = common dso_local global i32 0, align 4
@VM_FAULT_NORMAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@PQ_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_rwmem(%struct.proc* %0, %struct.uio* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.uio*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.uio* %1, %struct.uio** %4, align 8
  %15 = load %struct.proc*, %struct.proc** %3, align 8
  %16 = call i32 @PROC_ASSERT_HELD(%struct.proc* %15)
  %17 = load %struct.proc*, %struct.proc** %3, align 8
  %18 = load i32, i32* @MA_NOTOWNED, align 4
  %19 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %17, i32 %18)
  %20 = load %struct.proc*, %struct.proc** %3, align 8
  %21 = getelementptr inbounds %struct.proc, %struct.proc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* %23, i32** %5, align 8
  %24 = load %struct.uio*, %struct.uio** %4, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UIO_WRITE, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @VM_PROT_COPY, align 4
  %34 = load i32, i32* @VM_PROT_READ, align 4
  %35 = or i32 %33, %34
  br label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @VM_PROT_READ, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %35, %32 ], [ %37, %36 ]
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @VM_FAULT_DIRTY, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @VM_FAULT_NORMAL, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %123, %46
  %49 = load %struct.uio*, %struct.uio** %4, align 8
  %50 = getelementptr inbounds %struct.uio, %struct.uio* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @trunc_page(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load %struct.uio*, %struct.uio** %4, align 8
  %62 = getelementptr inbounds %struct.uio, %struct.uio* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @min(i32 %60, i64 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @vm_fault(i32* %65, i32 %66, i32 %67, i32 %68, i32* %14)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @KERN_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %48
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @ENOMEM, align 4
  store i32 %78, i32* %8, align 4
  br label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @EFAULT, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %79, %77
  br label %125

82:                                               ; preds = %48
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.uio*, %struct.uio** %4, align 8
  %86 = call i32 @uiomove_fromphys(i32* %14, i32 %83, i32 %84, %struct.uio* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %82
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %89
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @vm_map_lock_read(i32* %93)
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %101 = call i64 @vm_map_check_protection(i32* %95, i32 %96, i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %92
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @vm_sync_icache(i32* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %92
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @vm_map_unlock_read(i32* %109)
  br label %111

111:                                              ; preds = %108, %89, %82
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* @PQ_ACTIVE, align 4
  %114 = call i32 @vm_page_unwire(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.uio*, %struct.uio** %4, align 8
  %120 = getelementptr inbounds %struct.uio, %struct.uio* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %121, 0
  br label %123

123:                                              ; preds = %118, %115
  %124 = phi i1 [ false, %115 ], [ %122, %118 ]
  br i1 %124, label %48, label %125

125:                                              ; preds = %123, %81
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local i32 @PROC_ASSERT_HELD(%struct.proc*) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @vm_fault(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @uiomove_fromphys(i32*, i32, i32, %struct.uio*) #1

declare dso_local i32 @vm_map_lock_read(i32*) #1

declare dso_local i64 @vm_map_check_protection(i32*, i32, i32, i32) #1

declare dso_local i32 @vm_sync_icache(i32*, i32, i32) #1

declare dso_local i32 @vm_map_unlock_read(i32*) #1

declare dso_local i32 @vm_page_unwire(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
