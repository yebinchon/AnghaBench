; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_add_to_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_atp.c_atp_add_to_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atp_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@MOUSE_MSC_BUTTONS = common dso_local global i32 0, align 4
@MOUSE_BUTTON1DOWN = common dso_local global i32 0, align 4
@MOUSE_MSC_BUTTON1UP = common dso_local global i32 0, align 4
@MOUSE_BUTTON2DOWN = common dso_local global i32 0, align 4
@MOUSE_MSC_BUTTON2UP = common dso_local global i32 0, align 4
@MOUSE_BUTTON3DOWN = common dso_local global i32 0, align 4
@MOUSE_MSC_BUTTON3UP = common dso_local global i32 0, align 4
@ATP_LLEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dx=%d, dy=%d, buttons=%x\0A\00", align 1
@MOUSE_SYS_EXTBUTTONS = common dso_local global i32 0, align 4
@USB_FIFO_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atp_softc*, i32, i32, i32, i32)* @atp_add_to_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atp_add_to_queue(%struct.atp_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.atp_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  store %struct.atp_softc* %0, %struct.atp_softc** %6, align 8
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
  %58 = load i32, i32* @ATP_LLEVEL_INFO, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @DPRINTFN(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  %63 = load %struct.atp_softc*, %struct.atp_softc** %6, align 8
  %64 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  store i32 %68, i32* %69, align 16
  %70 = load i32, i32* %11, align 4
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 16
  %74 = load i32, i32* %7, align 4
  %75 = ashr i32 %74, 1
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %8, align 4
  %78 = ashr i32 %77, 1
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 2
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = ashr i32 %81, 1
  %83 = sub nsw i32 %80, %82
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = ashr i32 %86, 1
  %88 = sub nsw i32 %85, %87
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 4
  store i32 %88, i32* %89, align 16
  %90 = load %struct.atp_softc*, %struct.atp_softc** %6, align 8
  %91 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %110

95:                                               ; preds = %57
  %96 = load i32, i32* %9, align 4
  %97 = ashr i32 %96, 1
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 5
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = ashr i32 %100, 1
  %102 = sub nsw i32 %99, %101
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 6
  store i32 %102, i32* %103, align 8
  %104 = load i32, i32* %10, align 4
  %105 = xor i32 %104, -1
  %106 = ashr i32 %105, 3
  %107 = load i32, i32* @MOUSE_SYS_EXTBUTTONS, align 4
  %108 = and i32 %106, %107
  %109 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 7
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %95, %57
  %111 = load %struct.atp_softc*, %struct.atp_softc** %6, align 8
  %112 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @USB_FIFO_RX, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %119 = load %struct.atp_softc*, %struct.atp_softc** %6, align 8
  %120 = getelementptr inbounds %struct.atp_softc, %struct.atp_softc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @usb_fifo_put_data_linear(i32 %117, i32* %118, i32 %122, i32 1)
  ret void
}

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @usb_fifo_put_data_linear(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
