; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_rf_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_rf_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_softc = type { i32, i32, %struct.zyd_rf }
%struct.zyd_rf = type { i32, i32, i32, i32, i32, i32, %struct.zyd_softc* }

@zyd_rfmd_init = common dso_local global i32 0, align 4
@zyd_rfmd_switch_radio = common dso_local global i32 0, align 4
@zyd_rfmd_set_channel = common dso_local global i32 0, align 4
@ZYD_ZD1211B = common dso_local global i32 0, align 4
@zyd_al2230_init_b = common dso_local global i32 0, align 4
@zyd_al2230_set_channel_b = common dso_local global i32 0, align 4
@zyd_al2230_init = common dso_local global i32 0, align 4
@zyd_al2230_set_channel = common dso_local global i32 0, align 4
@zyd_al2230_switch_radio = common dso_local global i32 0, align 4
@zyd_al2230_bandedge6 = common dso_local global i32 0, align 4
@zyd_al7230B_init = common dso_local global i32 0, align 4
@zyd_al7230B_switch_radio = common dso_local global i32 0, align 4
@zyd_al7230B_set_channel = common dso_local global i32 0, align 4
@zyd_al2210_init = common dso_local global i32 0, align 4
@zyd_al2210_switch_radio = common dso_local global i32 0, align 4
@zyd_al2210_set_channel = common dso_local global i32 0, align 4
@zyd_gct_init = common dso_local global i32 0, align 4
@zyd_gct_switch_radio = common dso_local global i32 0, align 4
@zyd_gct_set_channel = common dso_local global i32 0, align 4
@zyd_maxim2_init = common dso_local global i32 0, align 4
@zyd_maxim2_switch_radio = common dso_local global i32 0, align 4
@zyd_maxim2_set_channel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"sorry, radio \22%s\22 is not supported yet\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zyd_softc*, i32)* @zyd_rf_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_rf_attach(%struct.zyd_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zyd_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zyd_rf*, align 8
  store %struct.zyd_softc* %0, %struct.zyd_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.zyd_softc*, %struct.zyd_softc** %4, align 8
  %8 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %7, i32 0, i32 2
  store %struct.zyd_rf* %8, %struct.zyd_rf** %6, align 8
  %9 = load %struct.zyd_softc*, %struct.zyd_softc** %4, align 8
  %10 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %11 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %10, i32 0, i32 6
  store %struct.zyd_softc* %9, %struct.zyd_softc** %11, align 8
  %12 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %13 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %106 [
    i32 128, label %15
    i32 134, label %27
    i32 133, label %27
    i32 132, label %56
    i32 135, label %68
    i32 130, label %80
    i32 131, label %80
    i32 129, label %94
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @zyd_rfmd_init, align 4
  %17 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %18 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @zyd_rfmd_switch_radio, align 4
  %20 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %21 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @zyd_rfmd_set_channel, align 4
  %23 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %24 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %26 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %25, i32 0, i32 1
  store i32 24, i32* %26, align 4
  br label %114

27:                                               ; preds = %2, %2
  %28 = load %struct.zyd_softc*, %struct.zyd_softc** %4, align 8
  %29 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ZYD_ZD1211B, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* @zyd_al2230_init_b, align 4
  %35 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %36 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @zyd_al2230_set_channel_b, align 4
  %38 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %39 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  br label %47

40:                                               ; preds = %27
  %41 = load i32, i32* @zyd_al2230_init, align 4
  %42 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %43 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @zyd_al2230_set_channel, align 4
  %45 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %46 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %40, %33
  %48 = load i32, i32* @zyd_al2230_switch_radio, align 4
  %49 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %50 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @zyd_al2230_bandedge6, align 4
  %52 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %53 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %55 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %54, i32 0, i32 1
  store i32 24, i32* %55, align 4
  br label %114

56:                                               ; preds = %2
  %57 = load i32, i32* @zyd_al7230B_init, align 4
  %58 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %59 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @zyd_al7230B_switch_radio, align 4
  %61 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %62 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @zyd_al7230B_set_channel, align 4
  %64 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %65 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %67 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %66, i32 0, i32 1
  store i32 24, i32* %67, align 4
  br label %114

68:                                               ; preds = %2
  %69 = load i32, i32* @zyd_al2210_init, align 4
  %70 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %71 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @zyd_al2210_switch_radio, align 4
  %73 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %74 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @zyd_al2210_set_channel, align 4
  %76 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %77 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %79 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %78, i32 0, i32 1
  store i32 24, i32* %79, align 4
  br label %114

80:                                               ; preds = %2, %2
  %81 = load i32, i32* @zyd_gct_init, align 4
  %82 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %83 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @zyd_gct_switch_radio, align 4
  %85 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %86 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @zyd_gct_set_channel, align 4
  %88 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %89 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %91 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %90, i32 0, i32 1
  store i32 24, i32* %91, align 4
  %92 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %93 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  br label %114

94:                                               ; preds = %2
  %95 = load i32, i32* @zyd_maxim2_init, align 4
  %96 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %97 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @zyd_maxim2_switch_radio, align 4
  %99 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %100 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @zyd_maxim2_set_channel, align 4
  %102 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %103 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.zyd_rf*, %struct.zyd_rf** %6, align 8
  %105 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %104, i32 0, i32 1
  store i32 18, i32* %105, align 4
  br label %114

106:                                              ; preds = %2
  %107 = load %struct.zyd_softc*, %struct.zyd_softc** %4, align 8
  %108 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @zyd_rf_name(i32 %110)
  %112 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %3, align 4
  br label %115

114:                                              ; preds = %94, %80, %68, %56, %47, %15
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %106
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @zyd_rf_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
