; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb_back.c_xenbusb_back_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb_back.c_xenbusb_back_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbusb_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"backend\00", align 1
@XBS_ATTACH_CH_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xenbusb_back_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenbusb_back_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xenbusb_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.xenbusb_softc* @device_get_softc(i32 %5)
  store %struct.xenbusb_softc* %6, %struct.xenbusb_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @xenbusb_attach(i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 2)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %3, align 8
  %10 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %9, i32 0, i32 1
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %3, align 8
  %13 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XBS_ATTACH_CH_ACTIVE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load i32, i32* @XBS_ATTACH_CH_ACTIVE, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %3, align 8
  %22 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %3, align 8
  %26 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %25, i32 0, i32 1
  %27 = call i32 @mtx_unlock(i32* %26)
  %28 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %3, align 8
  %29 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %28, i32 0, i32 2
  %30 = call i32 @config_intrhook_disestablish(i32* %29)
  br label %35

31:                                               ; preds = %1
  %32 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %3, align 8
  %33 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %32, i32 0, i32 1
  %34 = call i32 @mtx_unlock(i32* %33)
  br label %35

35:                                               ; preds = %31, %18
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.xenbusb_softc* @device_get_softc(i32) #1

declare dso_local i32 @xenbusb_attach(i32, i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
