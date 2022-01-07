; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfumass_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"go\00", align 1
@CFUMASS_T_MAX = common dso_local global i32 0, align 4
@cfumass_port = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"ctl_remove_initiator() failed with error %d\00", align 1
@cfumass_refcount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cfumass_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfumass_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfumass_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.cfumass_softc* @device_get_softc(i32 %5)
  store %struct.cfumass_softc* %6, %struct.cfumass_softc** %3, align 8
  %7 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %8 = call i32 @CFUMASS_DEBUG(%struct.cfumass_softc* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %10 = call i32 @CFUMASS_LOCK(%struct.cfumass_softc* %9)
  %11 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %12 = call i32 @cfumass_terminate(%struct.cfumass_softc* %11)
  %13 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %14 = call i32 @CFUMASS_UNLOCK(%struct.cfumass_softc* %13)
  %15 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %16 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CFUMASS_T_MAX, align 4
  %19 = call i32 @usbd_transfer_unsetup(i32 %17, i32 %18)
  %20 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %21 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %38

24:                                               ; preds = %1
  %25 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %26 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ctl_remove_initiator(i32* @cfumass_port, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @CFUMASS_WARN(%struct.cfumass_softc* %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %37 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %1
  %39 = load %struct.cfumass_softc*, %struct.cfumass_softc** %3, align 8
  %40 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %39, i32 0, i32 1
  %41 = call i32 @mtx_destroy(i32* %40)
  %42 = call i32 @refcount_release(i32* @cfumass_refcount)
  ret i32 0
}

declare dso_local %struct.cfumass_softc* @device_get_softc(i32) #1

declare dso_local i32 @CFUMASS_DEBUG(%struct.cfumass_softc*, i8*) #1

declare dso_local i32 @CFUMASS_LOCK(%struct.cfumass_softc*) #1

declare dso_local i32 @cfumass_terminate(%struct.cfumass_softc*) #1

declare dso_local i32 @CFUMASS_UNLOCK(%struct.cfumass_softc*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @ctl_remove_initiator(i32*, i32) #1

declare dso_local i32 @CFUMASS_WARN(%struct.cfumass_softc*, i8*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @refcount_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
