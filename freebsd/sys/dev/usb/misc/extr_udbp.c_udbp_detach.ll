; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_udbp_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_udbp_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udbp_softc = type { i32*, i32, i32, i32, i32, i32* }

@UDBP_T_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @udbp_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udbp_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.udbp_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.udbp_softc* @device_get_softc(i32 %4)
  store %struct.udbp_softc* %5, %struct.udbp_softc** %3, align 8
  %6 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %7 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %6, i32 0, i32 5
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %12 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @NG_NODE_SET_PRIVATE(i32* %13, i32* null)
  %15 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %16 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @ng_rmnode_self(i32* %17)
  %19 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %20 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %10, %1
  %22 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %23 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UDBP_T_MAX, align 4
  %26 = call i32 @usbd_transfer_unsetup(i32 %24, i32 %25)
  %27 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %28 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %27, i32 0, i32 3
  %29 = call i32 @mtx_destroy(i32* %28)
  %30 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %31 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %30, i32 0, i32 2
  %32 = call i32 @NG_BT_MBUFQ_DESTROY(i32* %31)
  %33 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %34 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %33, i32 0, i32 1
  %35 = call i32 @NG_BT_MBUFQ_DESTROY(i32* %34)
  %36 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %37 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %21
  %41 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %42 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @m_freem(i32* %43)
  %45 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %46 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40, %21
  ret i32 0
}

declare dso_local %struct.udbp_softc* @device_get_softc(i32) #1

declare dso_local i32 @NG_NODE_SET_PRIVATE(i32*, i32*) #1

declare dso_local i32 @ng_rmnode_self(i32*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @NG_BT_MBUFQ_DESTROY(i32*) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
