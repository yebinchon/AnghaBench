; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichwd/extr_ichwd.c_ichwd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ichwd_softc = type { i32*, i32, i32*, i32, i32, i32*, i32, i32*, i32, i32, i32, i32 }

@TCO2_STS = common dso_local global i32 0, align 4
@TCO_SECOND_TO_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"resuming after hardware watchdog timeout\0A\00", align 1
@watchdog_list = common dso_local global i32 0, align 4
@ichwd_event = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ichwd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ichwd_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ichwd_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ichwd_softc* @device_get_softc(i32 %5)
  store %struct.ichwd_softc* %6, %struct.ichwd_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %9 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %8, i32 0, i32 11
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @ichwd_lpc_attach(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @ichwd_smb_attach(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %50

18:                                               ; preds = %13, %1
  %19 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %20 = call i64 @ichwd_clear_noreboot(%struct.ichwd_softc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %50

23:                                               ; preds = %18
  %24 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %25 = load i32, i32* @TCO2_STS, align 4
  %26 = call i32 @ichwd_read_tco_2(%struct.ichwd_softc* %24, i32 %25)
  %27 = load i32, i32* @TCO_SECOND_TO_STS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %35 = call i32 @ichwd_sts_reset(%struct.ichwd_softc* %34)
  %36 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %37 = call i32 @ichwd_tmr_disable(%struct.ichwd_softc* %36)
  %38 = load i32, i32* @watchdog_list, align 4
  %39 = load i32, i32* @ichwd_event, align 4
  %40 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %41 = call i32 @EVENTHANDLER_REGISTER(i32 %38, i32 %39, %struct.ichwd_softc* %40, i32 0)
  %42 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %43 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %42, i32 0, i32 10
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %45 = call i32 @ichwd_smi_is_enabled(%struct.ichwd_softc* %44)
  %46 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %47 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %49 = call i32 @ichwd_smi_disable(%struct.ichwd_softc* %48)
  store i32 0, i32* %2, align 4
  br label %116

50:                                               ; preds = %22, %17
  %51 = load i32, i32* %3, align 4
  %52 = call %struct.ichwd_softc* @device_get_softc(i32 %51)
  store %struct.ichwd_softc* %52, %struct.ichwd_softc** %4, align 8
  %53 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %54 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %53, i32 0, i32 7
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @SYS_RES_IOPORT, align 4
  %60 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %61 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %64 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %63, i32 0, i32 7
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @bus_release_resource(i32 %58, i32 %59, i32 %62, i32* %65)
  br label %67

67:                                               ; preds = %57, %50
  %68 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %69 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @SYS_RES_IOPORT, align 4
  %75 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %76 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %79 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @bus_release_resource(i32 %73, i32 %74, i32 %77, i32* %80)
  br label %82

82:                                               ; preds = %72, %67
  %83 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %84 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %89 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SYS_RES_MEMORY, align 4
  %92 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %93 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %96 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @bus_release_resource(i32 %90, i32 %91, i32 %94, i32* %97)
  br label %99

99:                                               ; preds = %87, %82
  %100 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %101 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @SYS_RES_MEMORY, align 4
  %107 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %108 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ichwd_softc*, %struct.ichwd_softc** %4, align 8
  %111 = getelementptr inbounds %struct.ichwd_softc, %struct.ichwd_softc* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @bus_release_resource(i32 %105, i32 %106, i32 %109, i32* %112)
  br label %114

114:                                              ; preds = %104, %99
  %115 = load i32, i32* @ENXIO, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %33
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.ichwd_softc* @device_get_softc(i32) #1

declare dso_local i64 @ichwd_lpc_attach(i32) #1

declare dso_local i64 @ichwd_smb_attach(i32) #1

declare dso_local i64 @ichwd_clear_noreboot(%struct.ichwd_softc*) #1

declare dso_local i32 @ichwd_read_tco_2(%struct.ichwd_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ichwd_sts_reset(%struct.ichwd_softc*) #1

declare dso_local i32 @ichwd_tmr_disable(%struct.ichwd_softc*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.ichwd_softc*, i32) #1

declare dso_local i32 @ichwd_smi_is_enabled(%struct.ichwd_softc*) #1

declare dso_local i32 @ichwd_smi_disable(%struct.ichwd_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
