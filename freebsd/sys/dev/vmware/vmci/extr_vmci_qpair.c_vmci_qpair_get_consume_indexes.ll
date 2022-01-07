; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_qpair.c_vmci_qpair_get_consume_indexes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_qpair.c_vmci_qpair_get_consume_indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_qpair = type { i64 }
%struct.vmci_queue_header = type { i32 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@VMCI_ERROR_INVALID_SIZE = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_qpair_get_consume_indexes(%struct.vmci_qpair* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmci_qpair*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.vmci_queue_header*, align 8
  %9 = alloca %struct.vmci_queue_header*, align 8
  store %struct.vmci_qpair* %0, %struct.vmci_qpair** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.vmci_qpair*, %struct.vmci_qpair** %5, align 8
  %11 = icmp ne %struct.vmci_qpair* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %13, i32* %4, align 4
  br label %45

14:                                               ; preds = %3
  %15 = load %struct.vmci_qpair*, %struct.vmci_qpair** %5, align 8
  %16 = call i32 @vmci_qpair_get_queue_headers(%struct.vmci_qpair* %15, %struct.vmci_queue_header** %9, %struct.vmci_queue_header** %8)
  %17 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %8, align 8
  %18 = load %struct.vmci_queue_header*, %struct.vmci_queue_header** %9, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = call i32 @vmci_queue_header_get_pointers(%struct.vmci_queue_header* %17, %struct.vmci_queue_header* %18, i64* %19, i64* %20)
  %22 = load i64*, i64** %6, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.vmci_qpair*, %struct.vmci_qpair** %5, align 8
  %28 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %24, %14
  %32 = load i64*, i64** %7, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.vmci_qpair*, %struct.vmci_qpair** %5, align 8
  %38 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34, %24
  %42 = load i32, i32* @VMCI_ERROR_INVALID_SIZE, align 4
  store i32 %42, i32* %4, align 4
  br label %45

43:                                               ; preds = %34, %31
  %44 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %41, %12
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @vmci_qpair_get_queue_headers(%struct.vmci_qpair*, %struct.vmci_queue_header**, %struct.vmci_queue_header**) #1

declare dso_local i32 @vmci_queue_header_get_pointers(%struct.vmci_queue_header*, %struct.vmci_queue_header*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
