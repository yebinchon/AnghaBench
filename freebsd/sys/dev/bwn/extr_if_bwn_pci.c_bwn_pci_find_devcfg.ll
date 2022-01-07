; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_pci.c_bwn_pci_find_devcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_pci.c_bwn_pci_find_devcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_pci_devcfg = type { %struct.bwn_pci_device* }
%struct.bwn_pci_device = type { i64, i64 }

@bwn_pci_devcfgs = common dso_local global %struct.bwn_pci_devcfg* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.bwn_pci_devcfg**, %struct.bwn_pci_device**)* @bwn_pci_find_devcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_pci_find_devcfg(i32 %0, %struct.bwn_pci_devcfg** %1, %struct.bwn_pci_device** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwn_pci_devcfg**, align 8
  %7 = alloca %struct.bwn_pci_device**, align 8
  %8 = alloca %struct.bwn_pci_devcfg*, align 8
  %9 = alloca %struct.bwn_pci_device*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.bwn_pci_devcfg** %1, %struct.bwn_pci_devcfg*** %6, align 8
  store %struct.bwn_pci_device** %2, %struct.bwn_pci_device*** %7, align 8
  %10 = load %struct.bwn_pci_devcfg*, %struct.bwn_pci_devcfg** @bwn_pci_devcfgs, align 8
  store %struct.bwn_pci_devcfg* %10, %struct.bwn_pci_devcfg** %8, align 8
  br label %11

11:                                               ; preds = %57, %3
  %12 = load %struct.bwn_pci_devcfg*, %struct.bwn_pci_devcfg** %8, align 8
  %13 = getelementptr inbounds %struct.bwn_pci_devcfg, %struct.bwn_pci_devcfg* %12, i32 0, i32 0
  %14 = load %struct.bwn_pci_device*, %struct.bwn_pci_device** %13, align 8
  %15 = icmp ne %struct.bwn_pci_device* %14, null
  br i1 %15, label %16, label %60

16:                                               ; preds = %11
  %17 = load %struct.bwn_pci_devcfg*, %struct.bwn_pci_devcfg** %8, align 8
  %18 = getelementptr inbounds %struct.bwn_pci_devcfg, %struct.bwn_pci_devcfg* %17, i32 0, i32 0
  %19 = load %struct.bwn_pci_device*, %struct.bwn_pci_device** %18, align 8
  store %struct.bwn_pci_device* %19, %struct.bwn_pci_device** %9, align 8
  br label %20

20:                                               ; preds = %53, %16
  %21 = load %struct.bwn_pci_device*, %struct.bwn_pci_device** %9, align 8
  %22 = getelementptr inbounds %struct.bwn_pci_device, %struct.bwn_pci_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @pci_get_vendor(i32 %26)
  %28 = load %struct.bwn_pci_device*, %struct.bwn_pci_device** %9, align 8
  %29 = getelementptr inbounds %struct.bwn_pci_device, %struct.bwn_pci_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @pci_get_device(i32 %33)
  %35 = load %struct.bwn_pci_device*, %struct.bwn_pci_device** %9, align 8
  %36 = getelementptr inbounds %struct.bwn_pci_device, %struct.bwn_pci_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.bwn_pci_devcfg**, %struct.bwn_pci_devcfg*** %6, align 8
  %41 = icmp ne %struct.bwn_pci_devcfg** %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.bwn_pci_devcfg*, %struct.bwn_pci_devcfg** %8, align 8
  %44 = load %struct.bwn_pci_devcfg**, %struct.bwn_pci_devcfg*** %6, align 8
  store %struct.bwn_pci_devcfg* %43, %struct.bwn_pci_devcfg** %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.bwn_pci_device**, %struct.bwn_pci_device*** %7, align 8
  %47 = icmp ne %struct.bwn_pci_device** %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.bwn_pci_device*, %struct.bwn_pci_device** %9, align 8
  %50 = load %struct.bwn_pci_device**, %struct.bwn_pci_device*** %7, align 8
  store %struct.bwn_pci_device* %49, %struct.bwn_pci_device** %50, align 8
  br label %51

51:                                               ; preds = %48, %45
  store i32 0, i32* %4, align 4
  br label %62

52:                                               ; preds = %32, %25
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.bwn_pci_device*, %struct.bwn_pci_device** %9, align 8
  %55 = getelementptr inbounds %struct.bwn_pci_device, %struct.bwn_pci_device* %54, i32 1
  store %struct.bwn_pci_device* %55, %struct.bwn_pci_device** %9, align 8
  br label %20

56:                                               ; preds = %20
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.bwn_pci_devcfg*, %struct.bwn_pci_devcfg** %8, align 8
  %59 = getelementptr inbounds %struct.bwn_pci_devcfg, %struct.bwn_pci_devcfg* %58, i32 1
  store %struct.bwn_pci_devcfg* %59, %struct.bwn_pci_devcfg** %8, align 8
  br label %11

60:                                               ; preds = %11
  %61 = load i32, i32* @ENOENT, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %51
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
