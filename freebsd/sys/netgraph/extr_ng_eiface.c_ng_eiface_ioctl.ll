; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_eiface.c_ng_eiface_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_eiface.c_ng_eiface_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ifreq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@NG_EIFACE_MTU_MAX = common dso_local global i32 0, align 4
@NG_EIFACE_MTU_MIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @ng_eiface_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_eiface_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %100 [
    i32 132, label %18
    i32 134, label %23
    i32 131, label %24
    i32 129, label %69
    i32 130, label %90
    i32 133, label %90
    i32 136, label %97
    i32 135, label %97
    i32 128, label %98
  ]

18:                                               ; preds = %3
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @ether_ioctl(%struct.ifnet* %19, i32 %20, i64 %21)
  store i32 %22, i32* %9, align 4
  br label %102

23:                                               ; preds = %3
  br label %102

24:                                               ; preds = %3
  %25 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFF_UP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %24
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %46 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %38, %31
  br label %68

51:                                               ; preds = %24
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %60 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %58, %51
  br label %68

68:                                               ; preds = %67, %50
  br label %102

69:                                               ; preds = %3
  %70 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %71 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NG_EIFACE_MTU_MAX, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %77 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NG_EIFACE_MTU_MIN, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75, %69
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %9, align 4
  br label %89

83:                                               ; preds = %75
  %84 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %85 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %88 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %81
  br label %102

90:                                               ; preds = %3, %3
  %91 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %92 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @ifmedia_ioctl(%struct.ifnet* %91, %struct.ifreq* %92, i32* %94, i32 %95)
  store i32 %96, i32* %9, align 4
  br label %102

97:                                               ; preds = %3, %3
  store i32 0, i32* %9, align 4
  br label %102

98:                                               ; preds = %3
  %99 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %99, i32* %9, align 4
  br label %102

100:                                              ; preds = %3
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %100, %98, %97, %90, %89, %68, %23, %18
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
