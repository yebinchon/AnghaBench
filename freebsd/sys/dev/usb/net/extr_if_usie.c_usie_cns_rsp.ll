; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_cns_rsp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_cns_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usie_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }
%struct.usie_cns = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"received CnS\0A\00", align 1
@USIE_CNS_ID_INIT = common dso_local global i32 0, align 4
@USIE_CNS_ID_STOP = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"undefined link update\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"No signal\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"RSSI=%ddBm\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"undefined CnS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usie_softc*, %struct.usie_cns*)* @usie_cns_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usie_cns_rsp(%struct.usie_softc* %0, %struct.usie_cns* %1) #0 {
  %3 = alloca %struct.usie_softc*, align 8
  %4 = alloca %struct.usie_cns*, align 8
  %5 = alloca %struct.ifnet*, align 8
  store %struct.usie_softc* %0, %struct.usie_softc** %3, align 8
  store %struct.usie_cns* %1, %struct.usie_cns** %4, align 8
  %6 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %7 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %6, i32 0, i32 2
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %5, align 8
  %9 = call i32 @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.usie_cns*, %struct.usie_cns** %4, align 8
  %11 = getelementptr inbounds %struct.usie_cns, %struct.usie_cns* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @be16toh(i32 %12)
  switch i32 %13, label %81 [
    i32 131, label %14
    i32 128, label %52
    i32 129, label %79
    i32 130, label %80
  ]

14:                                               ; preds = %2
  %15 = load %struct.usie_cns*, %struct.usie_cns** %4, align 8
  %16 = getelementptr inbounds %struct.usie_cns, %struct.usie_cns* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be32toh(i32 %17)
  %19 = load i32, i32* @USIE_CNS_ID_INIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %24 = call i32 @usie_if_sync_to(%struct.usie_softc* %23)
  br label %51

25:                                               ; preds = %14
  %26 = load %struct.usie_cns*, %struct.usie_cns** %4, align 8
  %27 = getelementptr inbounds %struct.usie_cns, %struct.usie_cns* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be32toh(i32 %28)
  %30 = load i32, i32* @USIE_CNS_ID_STOP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %25
  %34 = load i32, i32* @IFF_UP, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %41 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %50

48:                                               ; preds = %25
  %49 = call i32 @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %33
  br label %51

51:                                               ; preds = %50, %22
  br label %83

52:                                               ; preds = %2
  %53 = load %struct.usie_cns*, %struct.usie_cns** %4, align 8
  %54 = getelementptr inbounds %struct.usie_cns, %struct.usie_cns* %53, i64 1
  %55 = bitcast %struct.usie_cns* %54 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @be16toh(i32 %56)
  %58 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %59 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %61 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %66 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %78

69:                                               ; preds = %52
  %70 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %71 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.usie_softc*, %struct.usie_softc** %3, align 8
  %74 = getelementptr inbounds %struct.usie_softc, %struct.usie_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 110
  %77 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %69, %64
  br label %83

79:                                               ; preds = %2
  br label %83

80:                                               ; preds = %2
  br label %83

81:                                               ; preds = %2
  %82 = call i32 @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %80, %79, %78, %51
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @be16toh(i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @usie_if_sync_to(%struct.usie_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
