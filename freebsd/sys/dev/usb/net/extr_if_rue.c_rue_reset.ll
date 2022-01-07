; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rue_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RUE_CR = common dso_local global i32 0, align 4
@RUE_CR_SOFT_RST = common dso_local global i32 0, align 4
@RUE_TIMEOUT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"reset never completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rue_softc*)* @rue_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rue_reset(%struct.rue_softc* %0) #0 {
  %2 = alloca %struct.rue_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.rue_softc* %0, %struct.rue_softc** %2, align 8
  %4 = load %struct.rue_softc*, %struct.rue_softc** %2, align 8
  %5 = load i32, i32* @RUE_CR, align 4
  %6 = load i32, i32* @RUE_CR_SOFT_RST, align 4
  %7 = call i32 @rue_csr_write_1(%struct.rue_softc* %4, i32 %5, i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @RUE_TIMEOUT, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load %struct.rue_softc*, %struct.rue_softc** %2, align 8
  %14 = getelementptr inbounds %struct.rue_softc, %struct.rue_softc* %13, i32 0, i32 0
  %15 = load i32, i32* @hz, align 4
  %16 = sdiv i32 %15, 1000
  %17 = call i64 @uether_pause(%struct.TYPE_2__* %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %32

20:                                               ; preds = %12
  %21 = load %struct.rue_softc*, %struct.rue_softc** %2, align 8
  %22 = load i32, i32* @RUE_CR, align 4
  %23 = call i32 @rue_csr_read_1(%struct.rue_softc* %21, i32 %22)
  %24 = load i32, i32* @RUE_CR_SOFT_RST, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %32

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %8

32:                                               ; preds = %27, %19, %8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @RUE_TIMEOUT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.rue_softc*, %struct.rue_softc** %2, align 8
  %38 = getelementptr inbounds %struct.rue_softc, %struct.rue_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %32
  %43 = load %struct.rue_softc*, %struct.rue_softc** %2, align 8
  %44 = getelementptr inbounds %struct.rue_softc, %struct.rue_softc* %43, i32 0, i32 0
  %45 = load i32, i32* @hz, align 4
  %46 = sdiv i32 %45, 100
  %47 = call i64 @uether_pause(%struct.TYPE_2__* %44, i32 %46)
  ret void
}

declare dso_local i32 @rue_csr_write_1(%struct.rue_softc*, i32, i32) #1

declare dso_local i64 @uether_pause(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @rue_csr_read_1(%struct.rue_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
