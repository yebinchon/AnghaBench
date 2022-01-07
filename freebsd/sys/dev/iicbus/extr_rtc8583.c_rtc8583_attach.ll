; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_rtc8583.c_rtc8583_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_rtc8583.c_rtc8583_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc8583_softc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.rtc8583_softc*, i32 }

@rtc8583_init = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rtc8583_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc8583_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc8583_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.rtc8583_softc* @device_get_softc(i32 %5)
  store %struct.rtc8583_softc* %6, %struct.rtc8583_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.rtc8583_softc*, %struct.rtc8583_softc** %4, align 8
  %9 = getelementptr inbounds %struct.rtc8583_softc, %struct.rtc8583_softc* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load %struct.rtc8583_softc*, %struct.rtc8583_softc** %4, align 8
  %11 = getelementptr inbounds %struct.rtc8583_softc, %struct.rtc8583_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @device_get_parent(i32 %12)
  %14 = load %struct.rtc8583_softc*, %struct.rtc8583_softc** %4, align 8
  %15 = getelementptr inbounds %struct.rtc8583_softc, %struct.rtc8583_softc* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @rtc8583_init, align 4
  %17 = load %struct.rtc8583_softc*, %struct.rtc8583_softc** %4, align 8
  %18 = getelementptr inbounds %struct.rtc8583_softc, %struct.rtc8583_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 8
  %20 = load %struct.rtc8583_softc*, %struct.rtc8583_softc** %4, align 8
  %21 = load %struct.rtc8583_softc*, %struct.rtc8583_softc** %4, align 8
  %22 = getelementptr inbounds %struct.rtc8583_softc, %struct.rtc8583_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.rtc8583_softc* %20, %struct.rtc8583_softc** %23, align 8
  %24 = load %struct.rtc8583_softc*, %struct.rtc8583_softc** %4, align 8
  %25 = getelementptr inbounds %struct.rtc8583_softc, %struct.rtc8583_softc* %24, i32 0, i32 0
  %26 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %28
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.rtc8583_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
