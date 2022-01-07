; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_find_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_find_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_ident = type { i64, i64, i32, i32 }

@device_table = common dso_local global %struct.mrsas_ident* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mrsas_ident* (i32)* @mrsas_find_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mrsas_ident* @mrsas_find_ident(i32 %0) #0 {
  %2 = alloca %struct.mrsas_ident*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mrsas_ident*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.mrsas_ident*, %struct.mrsas_ident** @device_table, align 8
  store %struct.mrsas_ident* %5, %struct.mrsas_ident** %4, align 8
  br label %6

6:                                                ; preds = %52, %1
  %7 = load %struct.mrsas_ident*, %struct.mrsas_ident** %4, align 8
  %8 = getelementptr inbounds %struct.mrsas_ident, %struct.mrsas_ident* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %6
  %12 = load %struct.mrsas_ident*, %struct.mrsas_ident** %4, align 8
  %13 = getelementptr inbounds %struct.mrsas_ident, %struct.mrsas_ident* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @pci_get_vendor(i32 %15)
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %11
  %19 = load %struct.mrsas_ident*, %struct.mrsas_ident** %4, align 8
  %20 = getelementptr inbounds %struct.mrsas_ident, %struct.mrsas_ident* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @pci_get_device(i32 %22)
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %18
  %26 = load %struct.mrsas_ident*, %struct.mrsas_ident** %4, align 8
  %27 = getelementptr inbounds %struct.mrsas_ident, %struct.mrsas_ident* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @pci_get_subvendor(i32 %29)
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.mrsas_ident*, %struct.mrsas_ident** %4, align 8
  %34 = getelementptr inbounds %struct.mrsas_ident, %struct.mrsas_ident* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 65535
  br i1 %36, label %37, label %51

37:                                               ; preds = %32, %25
  %38 = load %struct.mrsas_ident*, %struct.mrsas_ident** %4, align 8
  %39 = getelementptr inbounds %struct.mrsas_ident, %struct.mrsas_ident* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @pci_get_subdevice(i32 %41)
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.mrsas_ident*, %struct.mrsas_ident** %4, align 8
  %46 = getelementptr inbounds %struct.mrsas_ident, %struct.mrsas_ident* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 65535
  br i1 %48, label %49, label %51

49:                                               ; preds = %44, %37
  %50 = load %struct.mrsas_ident*, %struct.mrsas_ident** %4, align 8
  store %struct.mrsas_ident* %50, %struct.mrsas_ident** %2, align 8
  br label %56

51:                                               ; preds = %44, %32, %18, %11
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.mrsas_ident*, %struct.mrsas_ident** %4, align 8
  %54 = getelementptr inbounds %struct.mrsas_ident, %struct.mrsas_ident* %53, i32 1
  store %struct.mrsas_ident* %54, %struct.mrsas_ident** %4, align 8
  br label %6

55:                                               ; preds = %6
  store %struct.mrsas_ident* null, %struct.mrsas_ident** %2, align 8
  br label %56

56:                                               ; preds = %55, %49
  %57 = load %struct.mrsas_ident*, %struct.mrsas_ident** %2, align 8
  ret %struct.mrsas_ident* %57
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
