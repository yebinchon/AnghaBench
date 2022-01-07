; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_find_iter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_find_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.find_iter_args = type { i64, i32* }

@ACPI_DMAR_TYPE_HARDWARE_UNIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @dmar_find_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_find_iter(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.find_iter_args*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ACPI_DMAR_TYPE_HARDWARE_UNIT, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %30

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.find_iter_args*
  store %struct.find_iter_args* %15, %struct.find_iter_args** %6, align 8
  %16 = load %struct.find_iter_args*, %struct.find_iter_args** %6, align 8
  %17 = getelementptr inbounds %struct.find_iter_args, %struct.find_iter_args* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = bitcast %struct.TYPE_3__* %21 to i32*
  %23 = load %struct.find_iter_args*, %struct.find_iter_args** %6, align 8
  %24 = getelementptr inbounds %struct.find_iter_args, %struct.find_iter_args* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  store i32 0, i32* %3, align 4
  br label %30

25:                                               ; preds = %13
  %26 = load %struct.find_iter_args*, %struct.find_iter_args** %6, align 8
  %27 = getelementptr inbounds %struct.find_iter_args, %struct.find_iter_args* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %20, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
