; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_plx_softc = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"Correctable Error\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Uncorrectable Error\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Uncorrectable Error Message Drop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ntb_plx_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_plx_isr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ntb_plx_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.ntb_plx_softc* @device_get_softc(i8* %7)
  store %struct.ntb_plx_softc* %8, %struct.ntb_plx_softc** %4, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @ntb_db_event(i8* %9, i32 0)
  %11 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %55

16:                                               ; preds = %1
  %17 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %18 = call i32 @NTX_READ(%struct.ntb_plx_softc* %17, i32 4064)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %55

22:                                               ; preds = %16
  %23 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @NTX_WRITE(%struct.ntb_plx_softc* %23, i32 4064, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @device_printf(i8* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @device_printf(i8* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @ntb_plx_init(i8* %44)
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @ntb_link_event(i8* %46)
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @device_printf(i8* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %15, %21, %52, %48
  ret void
}

declare dso_local %struct.ntb_plx_softc* @device_get_softc(i8*) #1

declare dso_local i32 @ntb_db_event(i8*, i32) #1

declare dso_local i32 @NTX_READ(%struct.ntb_plx_softc*, i32) #1

declare dso_local i32 @NTX_WRITE(%struct.ntb_plx_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i8*, i8*) #1

declare dso_local i32 @ntb_plx_init(i8*) #1

declare dso_local i32 @ntb_link_event(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
