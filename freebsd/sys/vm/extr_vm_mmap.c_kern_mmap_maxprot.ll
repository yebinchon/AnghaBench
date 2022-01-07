; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_mmap_maxprot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_mmap_maxprot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32 }

@P2_PROTMAX_DISABLE = common dso_local global i32 0, align 4
@NT_FREEBSD_FCTL_PROTMAX_DISABLE = common dso_local global i32 0, align 4
@_PROT_ALL = common dso_local global i32 0, align 4
@P2_PROTMAX_ENABLE = common dso_local global i32 0, align 4
@imply_prot_max = common dso_local global i64 0, align 8
@PROT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_mmap_maxprot(%struct.proc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.proc*, %struct.proc** %4, align 8
  %7 = getelementptr inbounds %struct.proc, %struct.proc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @P2_PROTMAX_DISABLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.proc*, %struct.proc** %4, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NT_FREEBSD_FCTL_PROTMAX_DISABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12, %2
  %20 = load i32, i32* @_PROT_ALL, align 4
  store i32 %20, i32* %3, align 4
  br label %39

21:                                               ; preds = %12
  %22 = load %struct.proc*, %struct.proc** %4, align 8
  %23 = getelementptr inbounds %struct.proc, %struct.proc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @P2_PROTMAX_ENABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i64, i64* @imply_prot_max, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28, %21
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PROT_NONE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %31, %28
  %38 = load i32, i32* @_PROT_ALL, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %35, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
