; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_kernel_if.c___vmci_memcpy_from_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_kernel_if.c___vmci_memcpy_from_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_queue = type { %struct.vmci_queue_kernel_if* }
%struct.vmci_queue_kernel_if = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iovec = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.vmci_queue*, i64, i64, i32)* @__vmci_memcpy_from_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vmci_memcpy_from_queue(i8* %0, %struct.vmci_queue* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vmci_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmci_queue_kernel_if*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.iovec*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.vmci_queue* %1, %struct.vmci_queue** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.vmci_queue*, %struct.vmci_queue** %7, align 8
  %19 = getelementptr inbounds %struct.vmci_queue, %struct.vmci_queue* %18, i32 0, i32 0
  %20 = load %struct.vmci_queue_kernel_if*, %struct.vmci_queue_kernel_if** %19, align 8
  store %struct.vmci_queue_kernel_if* %20, %struct.vmci_queue_kernel_if** %11, align 8
  store i64 0, i64* %12, align 8
  br label %21

21:                                               ; preds = %78, %5
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %82

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %12, align 8
  %28 = add i64 %26, %27
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = udiv i64 %28, %29
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %12, align 8
  %33 = add i64 %31, %32
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = sub i64 %34, 1
  %36 = and i64 %33, %35
  store i64 %36, i64* %14, align 8
  %37 = load %struct.vmci_queue_kernel_if*, %struct.vmci_queue_kernel_if** %11, align 8
  %38 = getelementptr inbounds %struct.vmci_queue_kernel_if, %struct.vmci_queue_kernel_if* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = add i64 %40, 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %15, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = call i32 @ASSERT(i8* %46)
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = load i64, i64* %14, align 8
  %50 = sub i64 %48, %49
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %12, align 8
  %53 = sub i64 %51, %52
  %54 = call i64 @MIN(i64 %50, i64 %53)
  store i64 %54, i64* %16, align 8
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %25
  %58 = load i8*, i8** %6, align 8
  %59 = bitcast i8* %58 to %struct.iovec*
  store %struct.iovec* %59, %struct.iovec** %17, align 8
  %60 = load %struct.iovec*, %struct.iovec** %17, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = load i64, i64* %14, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i64, i64* %16, align 8
  %66 = call i32 @vmci_memcpy_toiovec(%struct.iovec* %60, i32* %64, i64 %65)
  br label %78

67:                                               ; preds = %25
  %68 = load i8*, i8** %6, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i8*, i8** %15, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i64, i64* %16, align 8
  %77 = call i32 @memcpy(i32* %71, i32* %75, i64 %76)
  br label %78

78:                                               ; preds = %67, %57
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %12, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %12, align 8
  br label %21

82:                                               ; preds = %21
  %83 = load i32, i32* @VMCI_SUCCESS, align 4
  ret i32 %83
}

declare dso_local i32 @ASSERT(i8*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @vmci_memcpy_toiovec(%struct.iovec*, i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
