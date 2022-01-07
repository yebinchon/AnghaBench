; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_compat_setregwin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_pci.c_bhndb_pci_compat_setregwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_regwin = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BHNDB_REGWIN_T_DYN = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@BHNDB_PCI_BARCTRL_WRITE_RETRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.bhndb_regwin*, i64)* @bhndb_pci_compat_setregwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_pci_compat_setregwin(i32 %0, i32 %1, %struct.bhndb_regwin* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bhndb_regwin*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.bhndb_regwin* %2, %struct.bhndb_regwin** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %8, align 8
  %14 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BHNDB_REGWIN_T_DYN, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @ENODEV, align 4
  store i32 %19, i32* %5, align 4
  br label %53

20:                                               ; preds = %4
  %21 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %8, align 8
  %22 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %26

26:                                               ; preds = %48, %20
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @BHNDB_PCI_BARCTRL_WRITE_RETRY, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @bhndb_pci_fast_setregwin(i32 %31, i32 %32, %struct.bhndb_regwin* %33, i64 %34)
  store i32 %35, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %53

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @pci_read_config(i32 %40, i32 %41, i32 4)
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %53

46:                                               ; preds = %39
  %47 = call i32 @DELAY(i32 10)
  br label %48

48:                                               ; preds = %46
  %49 = load i64, i64* %12, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %12, align 8
  br label %26

51:                                               ; preds = %26
  %52 = load i32, i32* @ENODEV, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %45, %37, %18
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @bhndb_pci_fast_setregwin(i32, i32, %struct.bhndb_regwin*, i64) #1

declare dso_local i64 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
