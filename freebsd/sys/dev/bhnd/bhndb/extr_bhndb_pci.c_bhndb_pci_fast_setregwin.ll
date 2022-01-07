; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_fast_setregwin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_fast_setregwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_regwin = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@UINT32_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.bhndb_regwin*, i64)* @bhndb_pci_fast_setregwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_fast_setregwin(i32 %0, i32 %1, %struct.bhndb_regwin* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bhndb_regwin*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.bhndb_regwin* %2, %struct.bhndb_regwin** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @UINT32_MAX, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @ERANGE, align 4
  store i32 %14, i32* %5, align 4
  br label %40

15:                                               ; preds = %4
  %16 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %8, align 8
  %17 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %37 [
    i32 128, label %19
  ]

19:                                               ; preds = %15
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %8, align 8
  %22 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = srem i64 %20, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %5, align 4
  br label %40

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %8, align 8
  %31 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @pci_write_config(i32 %29, i32 %34, i64 %35, i32 4)
  br label %39

37:                                               ; preds = %15
  %38 = load i32, i32* @ENODEV, align 4
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %37, %26, %13
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @pci_write_config(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
