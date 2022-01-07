; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_dp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i64, %struct.ecore_hwfn*, i8*, i8* }
%struct.ecore_hwfn = type { i64, i8*, i8* }

@MAX_HWFNS_PER_DEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_init_dp(%struct.ecore_dev* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.ecore_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ecore_hwfn*, align 8
  store %struct.ecore_dev* %0, %struct.ecore_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %16 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %19 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %39, %4
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @MAX_HWFNS_PER_DEVICE, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %26 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %25, i32 0, i32 1
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %27, i64 %28
  store %struct.ecore_hwfn* %29, %struct.ecore_hwfn** %10, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %32 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %35 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %10, align 8
  %38 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %24
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %9, align 8
  br label %20

42:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
