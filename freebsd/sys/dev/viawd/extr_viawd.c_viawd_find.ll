; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/viawd/extr_viawd.c_viawd_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/viawd/extr_viawd.c_viawd_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viawd_device = type { i64, i32* }

@VENDORID_VIA = common dso_local global i64 0, align 8
@viawd_devices = common dso_local global %struct.viawd_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.viawd_device* (i32)* @viawd_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.viawd_device* @viawd_find(i32 %0) #0 {
  %2 = alloca %struct.viawd_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.viawd_device*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @pci_get_vendor(i32 %5)
  %7 = load i64, i64* @VENDORID_VIA, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.viawd_device* null, %struct.viawd_device** %2, align 8
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.viawd_device*, %struct.viawd_device** @viawd_devices, align 8
  store %struct.viawd_device* %11, %struct.viawd_device** %4, align 8
  br label %12

12:                                               ; preds = %27, %10
  %13 = load %struct.viawd_device*, %struct.viawd_device** %4, align 8
  %14 = getelementptr inbounds %struct.viawd_device, %struct.viawd_device* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @pci_get_device(i32 %18)
  %20 = load %struct.viawd_device*, %struct.viawd_device** %4, align 8
  %21 = getelementptr inbounds %struct.viawd_device, %struct.viawd_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load %struct.viawd_device*, %struct.viawd_device** %4, align 8
  store %struct.viawd_device* %25, %struct.viawd_device** %2, align 8
  br label %31

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.viawd_device*, %struct.viawd_device** %4, align 8
  %29 = getelementptr inbounds %struct.viawd_device, %struct.viawd_device* %28, i32 1
  store %struct.viawd_device* %29, %struct.viawd_device** %4, align 8
  br label %12

30:                                               ; preds = %12
  store %struct.viawd_device* null, %struct.viawd_device** %2, align 8
  br label %31

31:                                               ; preds = %30, %24, %9
  %32 = load %struct.viawd_device*, %struct.viawd_device** %2, align 8
  ret %struct.viawd_device* %32
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
