; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.ipoib_dev_priv*, i32 (%struct.ipoib_dev_priv*)* }
%struct.ipoib_dev_priv = type { i64, i32 }
%struct.ifaddr = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ifreq = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@ENXIO = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4
@INFINIBAND_ALEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @ipoib_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ipoib_dev_priv*, align 8
  %9 = alloca %struct.ifaddr*, align 8
  %10 = alloca %struct.ifreq*, align 8
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 2
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  store %struct.ipoib_dev_priv* %14, %struct.ipoib_dev_priv** %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to %struct.ifaddr*
  store %struct.ifaddr* %16, %struct.ifaddr** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = inttoptr i64 %17 to %struct.ifreq*
  store %struct.ifreq* %18, %struct.ifreq** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %20 = icmp eq %struct.ipoib_dev_priv* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %4, align 4
  br label %115

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %111 [
    i32 129, label %30
    i32 133, label %61
    i32 132, label %61
    i32 130, label %74
    i32 131, label %94
    i32 128, label %104
  ]

30:                                               ; preds = %28
  %31 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IFF_UP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %46 = call i32 @ipoib_open(%struct.ipoib_dev_priv* %45)
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %44, %37
  br label %60

49:                                               ; preds = %30
  %50 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %58 = call i32 @ipoib_stop(%struct.ipoib_dev_priv* %57)
  br label %59

59:                                               ; preds = %56, %49
  br label %60

60:                                               ; preds = %59, %48
  br label %113

61:                                               ; preds = %28, %28
  %62 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i32, i32* @ipoib_workqueue, align 4
  %70 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %71 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %70, i32 0, i32 1
  %72 = call i32 @queue_work(i32 %69, i32* %71)
  br label %73

73:                                               ; preds = %68, %61
  br label %113

74:                                               ; preds = %28
  %75 = load i32, i32* @IFF_UP, align 4
  %76 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %81 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %85 [
  ]

85:                                               ; preds = %74
  %86 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %87 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %86, i32 0, i32 3
  %88 = load i32 (%struct.ipoib_dev_priv*)*, i32 (%struct.ipoib_dev_priv*)** %87, align 8
  %89 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %90 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %89, i32 0, i32 2
  %91 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %90, align 8
  %92 = call i32 %88(%struct.ipoib_dev_priv* %91)
  br label %93

93:                                               ; preds = %85
  br label %113

94:                                               ; preds = %28
  %95 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %96 = call i32 @IF_LLADDR(%struct.ifnet* %95)
  %97 = load %struct.ifreq*, %struct.ifreq** %10, align 8
  %98 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* @INFINIBAND_ALEN, align 4
  %103 = call i32 @bcopy(i32 %96, i32* %101, i32 %102)
  br label %113

104:                                              ; preds = %28
  %105 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %106 = load %struct.ifreq*, %struct.ifreq** %10, align 8
  %107 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ipoib_change_mtu(%struct.ipoib_dev_priv* %105, i32 %108, i32 0)
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %11, align 4
  br label %113

111:                                              ; preds = %28
  %112 = load i32, i32* @EINVAL, align 4
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %111, %104, %94, %93, %73, %60
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %26
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @ipoib_open(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @ipoib_stop(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @ipoib_change_mtu(%struct.ipoib_dev_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
