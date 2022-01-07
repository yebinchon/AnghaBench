; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_scif_cb_io_request_get_next_sge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_scif_cb_io_request_get_next_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_IO_REQUEST = type { i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_cb_io_request_get_next_sge(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.ISCI_IO_REQUEST*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ISCI_IO_REQUEST*
  store %struct.ISCI_IO_REQUEST* %10, %struct.ISCI_IO_REQUEST** %7, align 8
  %11 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %12 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %15 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i8**, i8*** %6, align 8
  store i8* null, i8** %19, align 8
  br label %35

20:                                               ; preds = %3
  %21 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %22 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %25 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32* %27, i32** %8, align 8
  %28 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %29 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = bitcast i32* %32 to i8*
  %34 = load i8**, i8*** %6, align 8
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %20, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
