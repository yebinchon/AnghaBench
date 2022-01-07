; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8327.c_ar8327_fetch_pdata_sgmii.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_8327.c_ar8327_fetch_pdata_sgmii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32 }
%struct.ar8327_sgmii_cfg = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"sgmii.ctrl\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"sgmii.serdes_aen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arswitch_softc*, %struct.ar8327_sgmii_cfg*)* @ar8327_fetch_pdata_sgmii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_fetch_pdata_sgmii(%struct.arswitch_softc* %0, %struct.ar8327_sgmii_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arswitch_softc*, align 8
  %5 = alloca %struct.ar8327_sgmii_cfg*, align 8
  %6 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %4, align 8
  store %struct.ar8327_sgmii_cfg* %1, %struct.ar8327_sgmii_cfg** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %8 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @device_get_name(i32 %9)
  %11 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %12 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @device_get_unit(i32 %13)
  %15 = call i64 @resource_int_value(i32 %10, i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ar8327_sgmii_cfg*, %struct.ar8327_sgmii_cfg** %5, align 8
  %21 = getelementptr inbounds %struct.ar8327_sgmii_cfg, %struct.ar8327_sgmii_cfg* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  store i32 0, i32* %6, align 4
  %22 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %23 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @device_get_name(i32 %24)
  %26 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %27 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @device_get_unit(i32 %28)
  %30 = call i64 @resource_int_value(i32 %25, i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %37

33:                                               ; preds = %18
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ar8327_sgmii_cfg*, %struct.ar8327_sgmii_cfg** %5, align 8
  %36 = getelementptr inbounds %struct.ar8327_sgmii_cfg, %struct.ar8327_sgmii_cfg* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %32, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
