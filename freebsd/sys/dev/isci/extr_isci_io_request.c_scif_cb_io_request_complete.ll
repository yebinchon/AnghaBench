; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_scif_cb_io_request_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_scif_cb_io_request_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_IO_REQUEST = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_cb_io_request_complete(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ISCI_IO_REQUEST*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @sci_object_get_association(i32 %10)
  %12 = inttoptr i64 %11 to %struct.ISCI_IO_REQUEST*
  store %struct.ISCI_IO_REQUEST* %12, %struct.ISCI_IO_REQUEST** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @scif_controller_complete_io(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %9, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @isci_io_request_complete(i32 %17, i32 %18, %struct.ISCI_IO_REQUEST* %19, i32 %20)
  ret void
}

declare dso_local i64 @sci_object_get_association(i32) #1

declare dso_local i32 @scif_controller_complete_io(i32, i32, i32) #1

declare dso_local i32 @isci_io_request_complete(i32, i32, %struct.ISCI_IO_REQUEST*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
