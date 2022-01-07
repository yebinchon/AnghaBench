; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_sysctl.c_isci_sysctl_reset_remote_devices.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_sysctl.c_isci_sysctl_reset_remote_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_CONTROLLER = type { i32, %struct.ISCI_REMOTE_DEVICE** }
%struct.ISCI_REMOTE_DEVICE = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ISCI_CONTROLLER*, i32)* @isci_sysctl_reset_remote_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isci_sysctl_reset_remote_devices(%struct.ISCI_CONTROLLER* %0, i32 %1) #0 {
  %3 = alloca %struct.ISCI_CONTROLLER*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ISCI_REMOTE_DEVICE*, align 8
  store %struct.ISCI_CONTROLLER* %0, %struct.ISCI_CONTROLLER** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %16 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %15, i32 0, i32 1
  %17 = load %struct.ISCI_REMOTE_DEVICE**, %struct.ISCI_REMOTE_DEVICE*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %17, i64 %19
  %21 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %20, align 8
  store %struct.ISCI_REMOTE_DEVICE* %21, %struct.ISCI_REMOTE_DEVICE** %6, align 8
  %22 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %6, align 8
  %23 = icmp ne %struct.ISCI_REMOTE_DEVICE* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %14
  %25 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %26 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %25, i32 0, i32 0
  %27 = call i32 @mtx_lock(i32* %26)
  %28 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %6, align 8
  %29 = call i32 @isci_remote_device_reset(%struct.ISCI_REMOTE_DEVICE* %28, i32* null)
  %30 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %31 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %30, i32 0, i32 0
  %32 = call i32 @mtx_unlock(i32* %31)
  br label %33

33:                                               ; preds = %24, %14
  br label %34

34:                                               ; preds = %33, %10
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 1
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %7

39:                                               ; preds = %7
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @isci_remote_device_reset(%struct.ISCI_REMOTE_DEVICE*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
