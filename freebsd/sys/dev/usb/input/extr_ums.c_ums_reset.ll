; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ums_softc = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32*, i32, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }

@MOUSE_MSC_MAXBUTTON = common dso_local global i64 0, align 8
@MOUSE_IF_USB = common dso_local global i32 0, align 4
@MOUSE_MOUSE = common dso_local global i32 0, align 4
@MOUSE_MODEL_GENERIC = common dso_local global i32 0, align 4
@MOUSE_PROTO_MSC = common dso_local global i32 0, align 4
@MOUSE_RES_UNKNOWN = common dso_local global i32 0, align 4
@MOUSE_MSC_PACKETSIZE = common dso_local global i32 0, align 4
@MOUSE_MSC_SYNCMASK = common dso_local global i32 0, align 4
@MOUSE_MSC_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ums_softc*)* @ums_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ums_reset(%struct.ums_softc* %0) #0 {
  %2 = alloca %struct.ums_softc*, align 8
  store %struct.ums_softc* %0, %struct.ums_softc** %2, align 8
  %3 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MOUSE_MSC_MAXBUTTON, align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i64, i64* @MOUSE_MSC_MAXBUTTON, align 8
  %10 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i64 %9, i64* %12, align 8
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  br label %20

20:                                               ; preds = %13, %8
  %21 = load i32, i32* @MOUSE_IF_USB, align 4
  %22 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @MOUSE_MOUSE, align 4
  %26 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @MOUSE_MODEL_GENERIC, align 4
  %30 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  %33 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %34 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @MOUSE_PROTO_MSC, align 4
  %37 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 6
  store i32 %36, i32* %39, align 4
  %40 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %41 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 8
  %43 = load i32, i32* @MOUSE_RES_UNKNOWN, align 4
  %44 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %45 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  store i32 %43, i32* %46, align 8
  %47 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %48 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %51 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @MOUSE_MSC_PACKETSIZE, align 4
  %54 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %55 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @MOUSE_MSC_SYNCMASK, align 4
  %58 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %59 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %57, i32* %62, align 4
  %63 = load i32, i32* @MOUSE_MSC_SYNC, align 4
  %64 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %65 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %63, i32* %68, align 4
  %69 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %73 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  store i64 0, i64* %74, align 8
  %75 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %76 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %79 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.ums_softc*, %struct.ums_softc** %2, align 8
  %85 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
