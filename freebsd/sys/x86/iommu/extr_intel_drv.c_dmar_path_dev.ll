; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_path_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_path_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@PCIR_SECBUS_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32, %struct.TYPE_3__*, i32*)* @dmar_path_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dmar_path_dev(i32 %0, i32 %1, i32 %2, %struct.TYPE_3__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %44, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @pci_find_dbsf(i32 %18, i32 %19, i32 %22, i32 %25)
  store i32* %26, i32** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %17
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PCIR_SECBUS_1, align 4
  %40 = call i32 @pci_cfgregread(i32 %32, i32 %35, i32 %38, i32 %39, i32 1)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 1
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %9, align 8
  br label %43

43:                                               ; preds = %31, %17
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %13

47:                                               ; preds = %13
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @PCI_RID(i32 %48, i32 %51, i32 %54)
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %11, align 8
  ret i32* %57
}

declare dso_local i32* @pci_find_dbsf(i32, i32, i32, i32) #1

declare dso_local i32 @pci_cfgregread(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCI_RID(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
