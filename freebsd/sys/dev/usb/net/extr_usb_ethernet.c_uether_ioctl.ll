; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_uether_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_usb_ethernet.c_uether_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.usb_ether* }
%struct.usb_ether = type { i32*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ifreq = type { i32 }
%struct.mii_data = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ue_promisc_task = common dso_local global i32 0, align 4
@ue_start_task = common dso_local global i32 0, align 4
@ue_stop_task = common dso_local global i32 0, align 4
@ue_setmulti_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uether_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_ether*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 2
  %13 = load %struct.usb_ether*, %struct.usb_ether** %12, align 8
  store %struct.usb_ether* %13, %struct.usb_ether** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %119 [
    i32 129, label %17
    i32 132, label %79
    i32 131, label %79
    i32 130, label %97
    i32 128, label %97
  ]

17:                                               ; preds = %3
  %18 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %19 = call i32 @UE_LOCK(%struct.usb_ether* %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %17
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %35 = load i32, i32* @ue_promisc_task, align 4
  %36 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %37 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %42 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @ue_queue_command(%struct.usb_ether* %34, i32 %35, i32* %40, i32* %45)
  br label %61

47:                                               ; preds = %26
  %48 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %49 = load i32, i32* @ue_start_task, align 4
  %50 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %51 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %56 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @ue_queue_command(%struct.usb_ether* %48, i32 %49, i32* %54, i32* %59)
  br label %61

61:                                               ; preds = %47, %33
  br label %76

62:                                               ; preds = %17
  %63 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %64 = load i32, i32* @ue_stop_task, align 4
  %65 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %66 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %71 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = call i32 @ue_queue_command(%struct.usb_ether* %63, i32 %64, i32* %69, i32* %74)
  br label %76

76:                                               ; preds = %62, %61
  %77 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %78 = call i32 @UE_UNLOCK(%struct.usb_ether* %77)
  br label %124

79:                                               ; preds = %3, %3
  %80 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %81 = call i32 @UE_LOCK(%struct.usb_ether* %80)
  %82 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %83 = load i32, i32* @ue_setmulti_task, align 4
  %84 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %85 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %90 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @ue_queue_command(%struct.usb_ether* %82, i32 %83, i32* %88, i32* %93)
  %95 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %96 = call i32 @UE_UNLOCK(%struct.usb_ether* %95)
  br label %124

97:                                               ; preds = %3, %3
  %98 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %99 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load %struct.usb_ether*, %struct.usb_ether** %7, align 8
  %104 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call %struct.mii_data* @device_get_softc(i32* %105)
  store %struct.mii_data* %106, %struct.mii_data** %9, align 8
  %107 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %108 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %109 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %110 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %109, i32 0, i32 0
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @ifmedia_ioctl(%struct.ifnet* %107, %struct.ifreq* %108, i32* %110, i32 %111)
  store i32 %112, i32* %10, align 4
  br label %118

113:                                              ; preds = %97
  %114 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @ether_ioctl(%struct.ifnet* %114, i32 %115, i64 %116)
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %113, %102
  br label %124

119:                                              ; preds = %3
  %120 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @ether_ioctl(%struct.ifnet* %120, i32 %121, i64 %122)
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %119, %118, %79, %76
  %125 = load i32, i32* %10, align 4
  ret i32 %125
}

declare dso_local i32 @UE_LOCK(%struct.usb_ether*) #1

declare dso_local i32 @ue_queue_command(%struct.usb_ether*, i32, i32*, i32*) #1

declare dso_local i32 @UE_UNLOCK(%struct.usb_ether*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
