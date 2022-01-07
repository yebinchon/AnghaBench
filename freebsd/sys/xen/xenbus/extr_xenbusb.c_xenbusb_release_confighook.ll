; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_release_confighook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_release_confighook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbusb_softc = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Connecting device count error\0A\00", align 1
@XBS_ATTACH_CH_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbusb_softc*)* @xenbusb_release_confighook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenbusb_release_confighook(%struct.xenbusb_softc* %0) #0 {
  %2 = alloca %struct.xenbusb_softc*, align 8
  store %struct.xenbusb_softc* %0, %struct.xenbusb_softc** %2, align 8
  %3 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %2, align 8
  %4 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %3, i32 0, i32 2
  %5 = call i32 @mtx_lock(i32* %4)
  %6 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %2, align 8
  %7 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %2, align 8
  %13 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %2, align 8
  %17 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %1
  %21 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %2, align 8
  %22 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @XBS_ATTACH_CH_ACTIVE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load i32, i32* @XBS_ATTACH_CH_ACTIVE, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %2, align 8
  %31 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %2, align 8
  %35 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %34, i32 0, i32 2
  %36 = call i32 @mtx_unlock(i32* %35)
  %37 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %2, align 8
  %38 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %37, i32 0, i32 3
  %39 = call i32 @config_intrhook_disestablish(i32* %38)
  br label %44

40:                                               ; preds = %20, %1
  %41 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %2, align 8
  %42 = getelementptr inbounds %struct.xenbusb_softc, %struct.xenbusb_softc* %41, i32 0, i32 2
  %43 = call i32 @mtx_unlock(i32* %42)
  br label %44

44:                                               ; preds = %40, %27
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
