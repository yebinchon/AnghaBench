; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_octe.c_octe_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_octe.c_octe_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.mii_data = type { i32 }
%struct.ifreq = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @octe_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octe_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca %struct.ifreq*, align 8
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %10, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %122 [
    i32 132, label %18
    i32 130, label %28
    i32 131, label %72
    i32 128, label %78
    i32 129, label %89
    i32 133, label %89
  ]

18:                                               ; preds = %3
  %19 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @ether_ioctl(%struct.ifnet* %19, i32 %20, i64 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %132

27:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %132

28:                                               ; preds = %3
  %29 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %132

37:                                               ; preds = %28
  %38 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IFF_UP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = call i32 @octe_init(%struct.TYPE_6__* %52)
  br label %54

54:                                               ; preds = %51, %44
  br label %66

55:                                               ; preds = %37
  %56 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = call i32 @octe_stop(%struct.TYPE_6__* %63)
  br label %65

65:                                               ; preds = %62, %55
  br label %66

66:                                               ; preds = %65, %54
  %67 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %4, align 4
  br label %132

72:                                               ; preds = %3
  %73 = load %struct.ifreq*, %struct.ifreq** %10, align 8
  %74 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %4, align 4
  br label %132

78:                                               ; preds = %3
  %79 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %80 = load %struct.ifreq*, %struct.ifreq** %10, align 8
  %81 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @cvm_oct_common_change_mtu(%struct.ifnet* %79, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %4, align 4
  br label %132

88:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %132

89:                                               ; preds = %3, %3
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call %struct.mii_data* @device_get_softc(i32* %97)
  store %struct.mii_data* %98, %struct.mii_data** %9, align 8
  %99 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %100 = load %struct.ifreq*, %struct.ifreq** %10, align 8
  %101 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %102 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %101, i32 0, i32 0
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @ifmedia_ioctl(%struct.ifnet* %99, %struct.ifreq* %100, i32* %102, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %94
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %4, align 4
  br label %132

109:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %132

110:                                              ; preds = %89
  %111 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %112 = load %struct.ifreq*, %struct.ifreq** %10, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @ifmedia_ioctl(%struct.ifnet* %111, %struct.ifreq* %112, i32* %114, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %4, align 4
  br label %132

121:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  br label %132

122:                                              ; preds = %3
  %123 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @ether_ioctl(%struct.ifnet* %123, i32 %124, i64 %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %4, align 4
  br label %132

131:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %129, %121, %119, %109, %107, %88, %86, %72, %66, %36, %27, %25
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

declare dso_local i32 @octe_init(%struct.TYPE_6__*) #1

declare dso_local i32 @octe_stop(%struct.TYPE_6__*) #1

declare dso_local i32 @cvm_oct_common_change_mtu(%struct.ifnet*, i32) #1

declare dso_local %struct.mii_data* @device_get_softc(i32*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
