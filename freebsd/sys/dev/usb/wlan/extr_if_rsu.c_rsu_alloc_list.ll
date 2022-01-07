; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_alloc_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_alloc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsu_softc = type { i32 }
%struct.rsu_data = type { i32*, i32*, i32*, %struct.rsu_softc* }

@M_USBDEV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not allocate buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsu_softc*, %struct.rsu_data*, i32, i32)* @rsu_alloc_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsu_alloc_list(%struct.rsu_softc* %0, %struct.rsu_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsu_softc*, align 8
  %7 = alloca %struct.rsu_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rsu_data*, align 8
  store %struct.rsu_softc* %0, %struct.rsu_softc** %6, align 8
  store %struct.rsu_data* %1, %struct.rsu_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %46, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load %struct.rsu_data*, %struct.rsu_data** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.rsu_data, %struct.rsu_data* %18, i64 %20
  store %struct.rsu_data* %21, %struct.rsu_data** %12, align 8
  %22 = load %struct.rsu_softc*, %struct.rsu_softc** %6, align 8
  %23 = load %struct.rsu_data*, %struct.rsu_data** %12, align 8
  %24 = getelementptr inbounds %struct.rsu_data, %struct.rsu_data* %23, i32 0, i32 3
  store %struct.rsu_softc* %22, %struct.rsu_softc** %24, align 8
  %25 = load %struct.rsu_data*, %struct.rsu_data** %12, align 8
  %26 = getelementptr inbounds %struct.rsu_data, %struct.rsu_data* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @M_USBDEV, align 4
  %29 = load i32, i32* @M_NOWAIT, align 4
  %30 = call i32* @malloc(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.rsu_data*, %struct.rsu_data** %12, align 8
  %32 = getelementptr inbounds %struct.rsu_data, %struct.rsu_data* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.rsu_data*, %struct.rsu_data** %12, align 8
  %34 = getelementptr inbounds %struct.rsu_data, %struct.rsu_data* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %17
  %38 = load %struct.rsu_softc*, %struct.rsu_softc** %6, align 8
  %39 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %11, align 4
  br label %50

43:                                               ; preds = %17
  %44 = load %struct.rsu_data*, %struct.rsu_data** %12, align 8
  %45 = getelementptr inbounds %struct.rsu_data, %struct.rsu_data* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %13

49:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %56

50:                                               ; preds = %37
  %51 = load %struct.rsu_softc*, %struct.rsu_softc** %6, align 8
  %52 = load %struct.rsu_data*, %struct.rsu_data** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @rsu_free_list(%struct.rsu_softc* %51, %struct.rsu_data* %52, i32 %53)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %50, %49
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rsu_free_list(%struct.rsu_softc*, %struct.rsu_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
