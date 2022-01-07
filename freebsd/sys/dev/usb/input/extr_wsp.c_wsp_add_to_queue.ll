; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wsp.c_wsp_add_to_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wsp.c_wsp_add_to_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wsp_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@MOUSE_MSC_BUTTONS = common dso_local global i32 0, align 4
@MOUSE_BUTTON1DOWN = common dso_local global i32 0, align 4
@MOUSE_MSC_BUTTON1UP = common dso_local global i32 0, align 4
@MOUSE_BUTTON2DOWN = common dso_local global i32 0, align 4
@MOUSE_MSC_BUTTON2UP = common dso_local global i32 0, align 4
@MOUSE_BUTTON3DOWN = common dso_local global i32 0, align 4
@MOUSE_MSC_BUTTON3UP = common dso_local global i32 0, align 4
@MOUSE_SYS_EXTBUTTONS = common dso_local global i32 0, align 4
@USB_FIFO_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wsp_softc*, i32, i32, i32, i32)* @wsp_add_to_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wsp_add_to_queue(%struct.wsp_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wsp_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  store %struct.wsp_softc* %0, %struct.wsp_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @imin(i32 %13, i32 254)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @imax(i32 %15, i32 -256)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @imin(i32 %17, i32 254)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @imax(i32 %19, i32 -256)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @imin(i32 %21, i32 126)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @imax(i32 %23, i32 -128)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @MOUSE_MSC_BUTTONS, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @MOUSE_BUTTON1DOWN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load i32, i32* @MOUSE_MSC_BUTTON1UP, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %57

35:                                               ; preds = %5
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @MOUSE_BUTTON2DOWN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* @MOUSE_MSC_BUTTON2UP, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %56

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @MOUSE_BUTTON3DOWN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* @MOUSE_MSC_BUTTON3UP, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %40
  br label %57

57:                                               ; preds = %56, %30
  %58 = load %struct.wsp_softc*, %struct.wsp_softc** %6, align 8
  %59 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  store i32 %63, i32* %64, align 16
  %65 = load i32, i32* %11, align 4
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %67 = load i32, i32* %66, align 16
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 16
  %69 = load i32, i32* %7, align 4
  %70 = ashr i32 %69, 1
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = ashr i32 %72, 1
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 2
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = ashr i32 %76, 1
  %78 = sub nsw i32 %75, %77
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = ashr i32 %81, 1
  %83 = sub nsw i32 %80, %82
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 4
  store i32 %83, i32* %84, align 16
  %85 = load %struct.wsp_softc*, %struct.wsp_softc** %6, align 8
  %86 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %105

90:                                               ; preds = %57
  %91 = load i32, i32* %9, align 4
  %92 = ashr i32 %91, 1
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 5
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = ashr i32 %95, 1
  %97 = sub nsw i32 %94, %96
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 6
  store i32 %97, i32* %98, align 8
  %99 = load i32, i32* %10, align 4
  %100 = xor i32 %99, -1
  %101 = ashr i32 %100, 3
  %102 = load i32, i32* @MOUSE_SYS_EXTBUTTONS, align 4
  %103 = and i32 %101, %102
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 7
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %90, %57
  %106 = load %struct.wsp_softc*, %struct.wsp_softc** %6, align 8
  %107 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @USB_FIFO_RX, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %114 = load %struct.wsp_softc*, %struct.wsp_softc** %6, align 8
  %115 = getelementptr inbounds %struct.wsp_softc, %struct.wsp_softc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @usb_fifo_put_data_linear(i32 %112, i32* %113, i32 %117, i32 1)
  ret void
}

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @usb_fifo_put_data_linear(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
