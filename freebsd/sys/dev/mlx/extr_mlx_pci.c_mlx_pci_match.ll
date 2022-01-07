; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx_pci.c_mlx_pci_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx_pci.c_mlx_pci_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_ident = type { i64, i64, i64, i64 }

@mlx_identifiers = common dso_local global %struct.mlx_ident* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx_ident* (i32)* @mlx_pci_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx_ident* @mlx_pci_match(i32 %0) #0 {
  %2 = alloca %struct.mlx_ident*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx_ident*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.mlx_ident*, %struct.mlx_ident** @mlx_identifiers, align 8
  store %struct.mlx_ident* %5, %struct.mlx_ident** %4, align 8
  br label %6

6:                                                ; preds = %47, %1
  %7 = load %struct.mlx_ident*, %struct.mlx_ident** %4, align 8
  %8 = getelementptr inbounds %struct.mlx_ident, %struct.mlx_ident* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %6
  %12 = load %struct.mlx_ident*, %struct.mlx_ident** %4, align 8
  %13 = getelementptr inbounds %struct.mlx_ident, %struct.mlx_ident* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @pci_get_vendor(i32 %15)
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %11
  %19 = load %struct.mlx_ident*, %struct.mlx_ident** %4, align 8
  %20 = getelementptr inbounds %struct.mlx_ident, %struct.mlx_ident* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @pci_get_device(i32 %22)
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %18
  %26 = load %struct.mlx_ident*, %struct.mlx_ident** %4, align 8
  %27 = getelementptr inbounds %struct.mlx_ident, %struct.mlx_ident* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %25
  %31 = load %struct.mlx_ident*, %struct.mlx_ident** %4, align 8
  %32 = getelementptr inbounds %struct.mlx_ident, %struct.mlx_ident* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @pci_get_subvendor(i32 %34)
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load %struct.mlx_ident*, %struct.mlx_ident** %4, align 8
  %39 = getelementptr inbounds %struct.mlx_ident, %struct.mlx_ident* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @pci_get_subdevice(i32 %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37, %25
  %45 = load %struct.mlx_ident*, %struct.mlx_ident** %4, align 8
  store %struct.mlx_ident* %45, %struct.mlx_ident** %2, align 8
  br label %51

46:                                               ; preds = %37, %30, %18, %11
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.mlx_ident*, %struct.mlx_ident** %4, align 8
  %49 = getelementptr inbounds %struct.mlx_ident, %struct.mlx_ident* %48, i32 1
  store %struct.mlx_ident* %49, %struct.mlx_ident** %4, align 8
  br label %6

50:                                               ; preds = %6
  store %struct.mlx_ident* null, %struct.mlx_ident** %2, align 8
  br label %51

51:                                               ; preds = %50, %44
  %52 = load %struct.mlx_ident*, %struct.mlx_ident** %2, align 8
  ret %struct.mlx_ident* %52
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i64 @pci_get_subvendor(i32) #1

declare dso_local i64 @pci_get_subdevice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
