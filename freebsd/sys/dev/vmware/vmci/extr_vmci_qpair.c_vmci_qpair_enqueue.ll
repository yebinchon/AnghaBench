; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_qpair.c_vmci_qpair_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_qpair.c_vmci_qpair_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_qpair = type { i32, i32, i32, i32 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@VMCI_QPFLAG_LOCAL = common dso_local global i32 0, align 4
@vmci_memcpy_to_queue_local = common dso_local global i32 0, align 4
@vmci_memcpy_to_queue = common dso_local global i32 0, align 4
@VMCI_QPFLAG_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_qpair_enqueue(%struct.vmci_qpair* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmci_qpair*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vmci_qpair* %0, %struct.vmci_qpair** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.vmci_qpair*, %struct.vmci_qpair** %6, align 8
  %12 = icmp ne %struct.vmci_qpair* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %4
  %17 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %17, i32* %5, align 4
  br label %53

18:                                               ; preds = %13
  %19 = load %struct.vmci_qpair*, %struct.vmci_qpair** %6, align 8
  %20 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vmci_qpair*, %struct.vmci_qpair** %6, align 8
  %23 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vmci_qpair*, %struct.vmci_qpair** %6, align 8
  %26 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.vmci_qpair*, %struct.vmci_qpair** %6, align 8
  %32 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VMCI_QPFLAG_LOCAL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %18
  %38 = load i32, i32* @vmci_memcpy_to_queue_local, align 4
  br label %41

39:                                               ; preds = %18
  %40 = load i32, i32* @vmci_memcpy_to_queue, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.vmci_qpair*, %struct.vmci_qpair** %6, align 8
  %44 = getelementptr inbounds %struct.vmci_qpair, %struct.vmci_qpair* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VMCI_QPFLAG_NONBLOCK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @enqueue(i32 %21, i32 %24, i32 %27, i8* %28, i64 %29, i32 %30, i32 %42, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %41, %16
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @enqueue(i32, i32, i32, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
