; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_fifo_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ums.c_ums_fifo_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.ums_softc = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@UMS_BUF_SIZE = common dso_local global i32 0, align 4
@UMS_IFQ_MAXLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32)* @ums_fifo_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ums_fifo_open(%struct.usb_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ums_softc*, align 8
  store %struct.usb_fifo* %0, %struct.usb_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %8 = call %struct.ums_softc* @usb_fifo_softc(%struct.usb_fifo* %7)
  store %struct.ums_softc* %8, %struct.ums_softc** %6, align 8
  %9 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ums_softc*, %struct.ums_softc** %6, align 8
  %11 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EBUSY, align 4
  store i32 %17, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.ums_softc*, %struct.ums_softc** %6, align 8
  %20 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.ums_softc*, %struct.ums_softc** %6, align 8
  %25 = call i32 @ums_reset(%struct.ums_softc* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @FREAD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %33 = load i32, i32* @UMS_BUF_SIZE, align 4
  %34 = load i32, i32* @UMS_IFQ_MAXLEN, align 4
  %35 = call i64 @usb_fifo_alloc_buffer(%struct.usb_fifo* %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %3, align 4
  br label %50

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @FREAD, align 4
  %43 = load i32, i32* @FWRITE, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = load %struct.ums_softc*, %struct.ums_softc** %6, align 8
  %47 = getelementptr inbounds %struct.ums_softc, %struct.ums_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %40, %37, %16
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.ums_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @ums_reset(%struct.ums_softc*) #1

declare dso_local i64 @usb_fifo_alloc_buffer(%struct.usb_fifo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
