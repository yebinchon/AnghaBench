; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl8366rb_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl8366rb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366rb_softc = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@RTL8366RB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"RTL8366RB Ethernet Switch Controller\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"RTL8366SR Ethernet Switch Controller\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rtl8366rb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl8366rb_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.rtl8366rb_softc* @device_get_softc(i32 %5)
  store %struct.rtl8366rb_softc* %6, %struct.rtl8366rb_softc** %4, align 8
  %7 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %8 = call i32 @bzero(%struct.rtl8366rb_softc* %7, i32 8)
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @smi_probe(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %16 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RTL8366RB, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_set_desc(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %26

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_set_desc(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.rtl8366rb_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.rtl8366rb_softc*, i32) #1

declare dso_local i64 @smi_probe(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
