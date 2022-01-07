; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_iface.c_ng_iface_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_iface.c_ng_iface_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32 }
%struct.ifreq = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@NG_IFACE_MTU_MAX = common dso_local global i32 0, align 4
@NG_IFACE_MTU_MIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @ng_iface_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_iface_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = inttoptr i64 %9 to %struct.ifreq*
  store %struct.ifreq* %10, %struct.ifreq** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %99 [
    i32 131, label %12
    i32 132, label %29
    i32 130, label %30
    i32 129, label %75
    i32 134, label %96
    i32 133, label %96
    i32 128, label %97
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @IFF_UP, align 4
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %101

29:                                               ; preds = %3
  br label %101

30:                                               ; preds = %3
  %31 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %32 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IFF_UP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %30
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %44, %37
  br label %74

57:                                               ; preds = %30
  %58 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %66 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %70 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %64, %57
  br label %74

74:                                               ; preds = %73, %56
  br label %101

75:                                               ; preds = %3
  %76 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %77 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NG_IFACE_MTU_MAX, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %83 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NG_IFACE_MTU_MIN, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81, %75
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %8, align 4
  br label %95

89:                                               ; preds = %81
  %90 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %91 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %94 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %87
  br label %101

96:                                               ; preds = %3, %3
  store i32 0, i32* %8, align 4
  br label %101

97:                                               ; preds = %3
  %98 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %98, i32* %8, align 4
  br label %101

99:                                               ; preds = %3
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %99, %97, %96, %95, %74, %29, %12
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
