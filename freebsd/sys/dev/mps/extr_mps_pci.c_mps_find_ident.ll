; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_pci.c_mps_find_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_pci.c_mps_find_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_ident = type { i64, i64, i32, i32 }

@mps_identifiers = common dso_local global %struct.mps_ident* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mps_ident* (i32)* @mps_find_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mps_ident* @mps_find_ident(i32 %0) #0 {
  %2 = alloca %struct.mps_ident*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mps_ident*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.mps_ident*, %struct.mps_ident** @mps_identifiers, align 8
  store %struct.mps_ident* %5, %struct.mps_ident** %4, align 8
  br label %6

6:                                                ; preds = %55, %1
  %7 = load %struct.mps_ident*, %struct.mps_ident** %4, align 8
  %8 = getelementptr inbounds %struct.mps_ident, %struct.mps_ident* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %6
  %12 = load %struct.mps_ident*, %struct.mps_ident** %4, align 8
  %13 = getelementptr inbounds %struct.mps_ident, %struct.mps_ident* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @pci_get_vendor(i32 %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %55

19:                                               ; preds = %11
  %20 = load %struct.mps_ident*, %struct.mps_ident** %4, align 8
  %21 = getelementptr inbounds %struct.mps_ident, %struct.mps_ident* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @pci_get_device(i32 %23)
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %55

27:                                               ; preds = %19
  %28 = load %struct.mps_ident*, %struct.mps_ident** %4, align 8
  %29 = getelementptr inbounds %struct.mps_ident, %struct.mps_ident* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 65535
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.mps_ident*, %struct.mps_ident** %4, align 8
  %34 = getelementptr inbounds %struct.mps_ident, %struct.mps_ident* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @pci_get_subvendor(i32 %36)
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %55

40:                                               ; preds = %32, %27
  %41 = load %struct.mps_ident*, %struct.mps_ident** %4, align 8
  %42 = getelementptr inbounds %struct.mps_ident, %struct.mps_ident* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 65535
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.mps_ident*, %struct.mps_ident** %4, align 8
  %47 = getelementptr inbounds %struct.mps_ident, %struct.mps_ident* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @pci_get_subdevice(i32 %49)
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %55

53:                                               ; preds = %45, %40
  %54 = load %struct.mps_ident*, %struct.mps_ident** %4, align 8
  store %struct.mps_ident* %54, %struct.mps_ident** %2, align 8
  br label %59

55:                                               ; preds = %52, %39, %26, %18
  %56 = load %struct.mps_ident*, %struct.mps_ident** %4, align 8
  %57 = getelementptr inbounds %struct.mps_ident, %struct.mps_ident* %56, i32 1
  store %struct.mps_ident* %57, %struct.mps_ident** %4, align 8
  br label %6

58:                                               ; preds = %6
  store %struct.mps_ident* null, %struct.mps_ident** %2, align 8
  br label %59

59:                                               ; preds = %58, %53
  %60 = load %struct.mps_ident*, %struct.mps_ident** %2, align 8
  ret %struct.mps_ident* %60
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
