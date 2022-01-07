; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_ng_udbp_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_ng_udbp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udbp_softc = type { i32, i32, i32* }

@UDBP_FLAG_READ_STALL = common dso_local global i32 0, align 4
@UDBP_FLAG_WRITE_STALL = common dso_local global i32 0, align 4
@UDBP_T_RD = common dso_local global i64 0, align 8
@UDBP_T_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ng_udbp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_udbp_connect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.udbp_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @NG_HOOK_NODE(i32 %4)
  %6 = call %struct.udbp_softc* @NG_NODE_PRIVATE(i32 %5)
  store %struct.udbp_softc* %6, %struct.udbp_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @NG_HOOK_PEER(i32 %7)
  %9 = call i32 @NG_HOOK_FORCE_QUEUE(i32 %8)
  %10 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %11 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %10, i32 0, i32 1
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load i32, i32* @UDBP_FLAG_READ_STALL, align 4
  %14 = load i32, i32* @UDBP_FLAG_WRITE_STALL, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %17 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %21 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @UDBP_T_RD, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usbd_transfer_start(i32 %25)
  %27 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %28 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @UDBP_T_WR, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usbd_transfer_start(i32 %32)
  %34 = load %struct.udbp_softc*, %struct.udbp_softc** %3, align 8
  %35 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %34, i32 0, i32 1
  %36 = call i32 @mtx_unlock(i32* %35)
  ret i32 0
}

declare dso_local %struct.udbp_softc* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

declare dso_local i32 @NG_HOOK_FORCE_QUEUE(i32) #1

declare dso_local i32 @NG_HOOK_PEER(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
