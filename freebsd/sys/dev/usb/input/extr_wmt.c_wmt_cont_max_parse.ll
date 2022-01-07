; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wmt.c_wmt_cont_max_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wmt.c_wmt_cont_max_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmt_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@MAX_MT_SLOTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Hardware reported %d contacts while only %d is supported\0A\00", align 1
@WMT_SLOT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"%d feature report contacts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wmt_softc*, i8*, i64)* @wmt_cont_max_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmt_cont_max_parse(%struct.wmt_softc* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.wmt_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.wmt_softc* %0, %struct.wmt_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i32*
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i64, i64* %6, align 8
  %12 = sub nsw i64 %11, 1
  %13 = load %struct.wmt_softc*, %struct.wmt_softc** %4, align 8
  %14 = getelementptr inbounds %struct.wmt_softc, %struct.wmt_softc* %13, i32 0, i32 2
  %15 = call i64 @hid_get_data_unsigned(i32* %10, i64 %12, i32* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @MAX_MT_SLOTS, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i64, i64* @MAX_MT_SLOTS, align 8
  %23 = call i32 @DPRINTF(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %22)
  %24 = load i64, i64* @MAX_MT_SLOTS, align 8
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %19, %3
  %26 = load i64, i64* %7, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.wmt_softc*, %struct.wmt_softc** %4, align 8
  %31 = getelementptr inbounds %struct.wmt_softc, %struct.wmt_softc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* @WMT_SLOT, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = icmp ne i64 %29, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %28
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %40, 1
  %42 = load %struct.wmt_softc*, %struct.wmt_softc** %4, align 8
  %43 = getelementptr inbounds %struct.wmt_softc, %struct.wmt_softc* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* @WMT_SLOT, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %41, i64* %47, align 8
  %48 = load %struct.wmt_softc*, %struct.wmt_softc** %4, align 8
  %49 = getelementptr inbounds %struct.wmt_softc, %struct.wmt_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  br label %53

53:                                               ; preds = %39, %28, %25
  ret void
}

declare dso_local i64 @hid_get_data_unsigned(i32*, i64, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
