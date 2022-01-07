; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_datagram.c_vmci_datagram_get_priv_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_datagram.c_vmci_datagram_get_priv_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i64 }

@VMCI_INVALID_ID = common dso_local global i64 0, align 8
@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_datagram_get_priv_flags(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmci_handle, align 8
  %5 = alloca i32*, align 8
  %6 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VMCI_INVALID_ID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %15, i32* %3, align 4
  br label %23

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @vmci_datagram_get_priv_flags_int(i64 %18, i64 %21, i32* %19)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %16, %14
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @vmci_datagram_get_priv_flags_int(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
