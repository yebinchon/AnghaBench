; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds3231.c_ds3231_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds3231.c_ds3231_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds3231_softc = type { i32, %struct.TYPE_2__, i64, i32, i8* }
%struct.TYPE_2__ = type { i8*, i32 }

@ds3231_start = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ds3231_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds3231_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ds3231_softc*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.ds3231_softc* @device_get_softc(i8* %5)
  store %struct.ds3231_softc* %6, %struct.ds3231_softc** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %9 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %8, i32 0, i32 4
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @iicbus_get_addr(i8* %10)
  %12 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %13 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 8
  %16 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @ds3231_start, align 4
  %19 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load %struct.ds3231_softc*, %struct.ds3231_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ds3231_softc, %struct.ds3231_softc* %26, i32 0, i32 1
  %28 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.ds3231_softc* @device_get_softc(i8*) #1

declare dso_local i32 @iicbus_get_addr(i8*) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
