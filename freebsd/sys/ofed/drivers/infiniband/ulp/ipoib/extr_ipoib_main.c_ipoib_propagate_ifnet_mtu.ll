; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_propagate_ifnet_mtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_propagate_ifnet_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 }
%struct.ifreq = type { i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCSIFMTU = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoib_dev_priv*, i32, i32)* @ipoib_propagate_ifnet_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_propagate_ifnet_mtu(%struct.ipoib_dev_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.ifreq, align 4
  %10 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %12 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %11, i32 0, i32 0
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %8, align 8
  %14 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %27 = call i32 @if_name(%struct.ifnet* %26)
  %28 = load i32, i32* @IFNAMSIZ, align 4
  %29 = call i32 @strlcpy(i32 %25, i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CURVNET_SET(i32 %34)
  %36 = load i32, i32* @SIOCSIFMTU, align 4
  %37 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %38 = ptrtoint %struct.ifreq* %9 to i32
  %39 = load i32, i32* @curthread, align 4
  %40 = call i32 @ifhwioctl(i32 %36, %struct.ifnet* %37, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = call i32 (...) @CURVNET_RESTORE()
  br label %46

42:                                               ; preds = %20
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %23
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %19
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @ifhwioctl(i32, %struct.ifnet*, i32, i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
