; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_attach.c_rtwn_usb_alloc_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_attach.c_rtwn_usb_alloc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.rtwn_data = type { i32*, i32*, i32* }

@M_USBDEV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not allocate buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*, %struct.rtwn_data*, i32, i32)* @rtwn_usb_alloc_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_usb_alloc_list(%struct.rtwn_softc* %0, %struct.rtwn_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtwn_softc*, align 8
  %7 = alloca %struct.rtwn_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtwn_data*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %6, align 8
  store %struct.rtwn_data* %1, %struct.rtwn_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %43, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load %struct.rtwn_data*, %struct.rtwn_data** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %18, i64 %20
  store %struct.rtwn_data* %21, %struct.rtwn_data** %12, align 8
  %22 = load %struct.rtwn_data*, %struct.rtwn_data** %12, align 8
  %23 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @M_USBDEV, align 4
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = call i32* @malloc(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.rtwn_data*, %struct.rtwn_data** %12, align 8
  %29 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.rtwn_data*, %struct.rtwn_data** %12, align 8
  %31 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %17
  %35 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %36 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %11, align 4
  br label %47

40:                                               ; preds = %17
  %41 = load %struct.rtwn_data*, %struct.rtwn_data** %12, align 8
  %42 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %13

46:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %53

47:                                               ; preds = %34
  %48 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %49 = load %struct.rtwn_data*, %struct.rtwn_data** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @rtwn_usb_free_list(%struct.rtwn_softc* %48, %struct.rtwn_data* %49, i32 %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %46
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rtwn_usb_free_list(%struct.rtwn_softc*, %struct.rtwn_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
