; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_scic_cb_io_request_get_physical_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_scic_cb_io_request_get_physical_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_REQUEST = type { i64 }
%struct.ISCI_CONTROLLER = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_cb_io_request_get_physical_address(i8* %0, i8* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ISCI_REQUEST*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ISCI_CONTROLLER*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @sci_object_get_association(i8* %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i8* @sci_object_get_association(i8* %16)
  %18 = bitcast i8* %17 to %struct.ISCI_REQUEST*
  store %struct.ISCI_REQUEST* %18, %struct.ISCI_REQUEST** %10, align 8
  %19 = load %struct.ISCI_REQUEST*, %struct.ISCI_REQUEST** %10, align 8
  %20 = icmp ne %struct.ISCI_REQUEST* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load %struct.ISCI_REQUEST*, %struct.ISCI_REQUEST** %10, align 8
  %23 = getelementptr inbounds %struct.ISCI_REQUEST, %struct.ISCI_REQUEST* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = add i64 %24, %26
  %28 = load %struct.ISCI_REQUEST*, %struct.ISCI_REQUEST** %10, align 8
  %29 = ptrtoint %struct.ISCI_REQUEST* %28 to i64
  %30 = sub i64 %27, %29
  %31 = load i64*, i64** %8, align 8
  store i64 %30, i64* %31, align 8
  br label %52

32:                                               ; preds = %4
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @sci_object_get_association(i8* %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i8* @sci_object_get_association(i8* %35)
  %37 = bitcast i8* %36 to %struct.ISCI_CONTROLLER*
  store %struct.ISCI_CONTROLLER* %37, %struct.ISCI_CONTROLLER** %12, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %12, align 8
  %41 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %39, %43
  store i64 %44, i64* %13, align 8
  %45 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %12, align 8
  %46 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64*, i64** %8, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %32, %21
  ret void
}

declare dso_local i8* @sci_object_get_association(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
