; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_set_max_read_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_set_max_read_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PCIER_DEVICE_CTL = common dso_local global i64 0, align 8
@PCIEM_CTL_MAX_READ_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_set_max_read_req(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_devinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.pci_devinfo* @device_get_ivars(i32 %9)
  store %struct.pci_devinfo* %10, %struct.pci_devinfo** %6, align 8
  %11 = load %struct.pci_devinfo*, %struct.pci_devinfo** %6, align 8
  %12 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 128
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 128, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %24, 4096
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 4096, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @fls(i32 %28)
  %30 = sub nsw i32 %29, 1
  %31 = shl i32 1, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @PCIER_DEVICE_CTL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @pci_read_config(i32 %32, i64 %36, i32 2)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @PCIEM_CTL_MAX_READ_REQUEST, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @fls(i32 %42)
  %44 = sub nsw i32 %43, 8
  %45 = shl i32 %44, 12
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @PCIER_DEVICE_CTL, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @pci_write_config(i32 %48, i64 %52, i32 %53, i32 2)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %27, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
