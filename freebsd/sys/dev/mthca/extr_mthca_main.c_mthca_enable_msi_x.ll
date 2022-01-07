; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_main.c_mthca_enable_msi_x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_main.c_mthca_enable_msi_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.msix_entry = type { i32, i32 }

@MTHCA_EQ_COMP = common dso_local global i64 0, align 8
@MTHCA_EQ_ASYNC = common dso_local global i64 0, align 8
@MTHCA_EQ_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*)* @mthca_enable_msi_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_enable_msi_x(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca [3 x %struct.msix_entry], align 16
  %5 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %6 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 0
  %7 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %6, i32 0, i32 0
  store i32 0, i32* %7, align 16
  %8 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 1
  %9 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 2
  %11 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %10, i32 0, i32 0
  store i32 2, i32* %11, align 16
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 0
  %16 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 0
  %17 = call i32 @ARRAY_SIZE(%struct.msix_entry* %16)
  %18 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 0
  %19 = call i32 @ARRAY_SIZE(%struct.msix_entry* %18)
  %20 = call i32 @pci_enable_msix_range(i32 %14, %struct.msix_entry* %15, i32 %17, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %56

25:                                               ; preds = %1
  %26 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 0
  %27 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i64, i64* @MTHCA_EQ_COMP, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %28, i32* %35, align 4
  %36 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 1
  %37 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i64, i64* @MTHCA_EQ_ASYNC, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %38, i32* %45, align 4
  %46 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 2
  %47 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %50 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i64, i64* @MTHCA_EQ_CMD, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 4
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %25, %23
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @pci_enable_msix_range(i32, %struct.msix_entry*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.msix_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
