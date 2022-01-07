; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_puc_pci.c_puc_pci_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_puc_pci.c_puc_pci_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puc_cfg = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.puc_cfg* (i32, %struct.puc_cfg*)* @puc_pci_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.puc_cfg* @puc_pci_match(i32 %0, %struct.puc_cfg* %1) #0 {
  %3 = alloca %struct.puc_cfg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.puc_cfg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.puc_cfg* %1, %struct.puc_cfg** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @pci_get_vendor(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @pci_get_device(i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @pci_get_subvendor(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @pci_get_subdevice(i32 %16)
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %58, %2
  %19 = load %struct.puc_cfg*, %struct.puc_cfg** %5, align 8
  %20 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 65535
  br i1 %22, label %23, label %61

23:                                               ; preds = %18
  %24 = load %struct.puc_cfg*, %struct.puc_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %23
  %31 = load %struct.puc_cfg*, %struct.puc_cfg** %5, align 8
  %32 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %30
  %37 = load %struct.puc_cfg*, %struct.puc_cfg** %5, align 8
  %38 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.puc_cfg*, %struct.puc_cfg** %5, align 8
  %44 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load %struct.puc_cfg*, %struct.puc_cfg** %5, align 8
  store %struct.puc_cfg* %49, %struct.puc_cfg** %3, align 8
  br label %62

50:                                               ; preds = %42, %36
  %51 = load %struct.puc_cfg*, %struct.puc_cfg** %5, align 8
  %52 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 65535
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load %struct.puc_cfg*, %struct.puc_cfg** %5, align 8
  store %struct.puc_cfg* %56, %struct.puc_cfg** %3, align 8
  br label %62

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %30, %23
  %59 = load %struct.puc_cfg*, %struct.puc_cfg** %5, align 8
  %60 = getelementptr inbounds %struct.puc_cfg, %struct.puc_cfg* %59, i32 1
  store %struct.puc_cfg* %60, %struct.puc_cfg** %5, align 8
  br label %18

61:                                               ; preds = %18
  store %struct.puc_cfg* null, %struct.puc_cfg** %3, align 8
  br label %62

62:                                               ; preds = %61, %55, %48
  %63 = load %struct.puc_cfg*, %struct.puc_cfg** %3, align 8
  ret %struct.puc_cfg* %63
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
