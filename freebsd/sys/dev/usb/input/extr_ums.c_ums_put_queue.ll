; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_put_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_put_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ums_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@MOUSE_MSC_BUTTONS = common dso_local global i32 0, align 4
@MOUSE_SYS_EXTBUTTONS = common dso_local global i32 0, align 4
@USB_FIFO_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ums_softc*, i32, i32, i32, i32, i32)* @ums_put_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ums_put_queue(%struct.ums_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ums_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i32], align 16
  store %struct.ums_softc* %0, %struct.ums_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 254
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i32 254, i32* %8, align 4
  br label %17

17:                                               ; preds = %16, %6
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, -256
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 -256, i32* %8, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 254
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 254, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, -256
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -256, i32* %9, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %30, 126
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 126, i32* %10, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, -128
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 -128, i32* %10, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %11, align 4
  %39 = icmp sgt i32 %38, 126
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 126, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, -128
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 -128, i32* %11, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load %struct.ums_softc*, %struct.ums_softc** %7, align 8
  %47 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  store i32 %51, i32* %52, align 16
  %53 = load i32, i32* %12, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* @MOUSE_MSC_BUTTONS, align 4
  %56 = and i32 %54, %55
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %58 = load i32, i32* %57, align 16
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 16
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %60, 1
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 1
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 1
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 2
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = ashr i32 %67, 1
  %69 = sub nsw i32 %66, %68
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 3
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = ashr i32 %72, 1
  %74 = sub nsw i32 %71, %73
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 4
  store i32 %74, i32* %75, align 16
  %76 = load %struct.ums_softc*, %struct.ums_softc** %7, align 8
  %77 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %96

81:                                               ; preds = %45
  %82 = load i32, i32* %10, align 4
  %83 = ashr i32 %82, 1
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 5
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = ashr i32 %86, 1
  %88 = sub nsw i32 %85, %87
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 6
  store i32 %88, i32* %89, align 8
  %90 = load i32, i32* %12, align 4
  %91 = xor i32 %90, -1
  %92 = ashr i32 %91, 3
  %93 = load i32, i32* @MOUSE_SYS_EXTBUTTONS, align 4
  %94 = and i32 %92, %93
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 7
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %81, %45
  %97 = load %struct.ums_softc*, %struct.ums_softc** %7, align 8
  %98 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @USB_FIFO_RX, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %105 = load %struct.ums_softc*, %struct.ums_softc** %7, align 8
  %106 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @usb_fifo_put_data_linear(i32 %103, i32* %104, i32 %108, i32 1)
  ret void
}

declare dso_local i32 @usb_fifo_put_data_linear(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
