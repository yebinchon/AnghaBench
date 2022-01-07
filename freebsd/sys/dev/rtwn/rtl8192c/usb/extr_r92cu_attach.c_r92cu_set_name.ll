; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/usb/extr_r92cu_attach.c_r92cu_set_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/usb/extr_r92cu_attach.c_r92cu_set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i8*, %struct.r92c_softc* }
%struct.r92c_softc = type { i32, i64 }

@R92C_CHIP_92C = common dso_local global i32 0, align 4
@R92C_BOARD_TYPE_HIGHPA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"RTL8188RU\00", align 1
@R92C_BOARD_TYPE_MINICARD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"RTL8188CU-VAU\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"RTL8188CUS\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"RTL8192CU\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, i32*)* @r92cu_set_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r92cu_set_name(%struct.rtwn_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.r92c_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %7 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %6, i32 0, i32 1
  %8 = load %struct.r92c_softc*, %struct.r92c_softc** %7, align 8
  store %struct.r92c_softc* %8, %struct.r92c_softc** %5, align 8
  %9 = load %struct.r92c_softc*, %struct.r92c_softc** %5, align 8
  %10 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @R92C_CHIP_92C, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %2
  %16 = load %struct.r92c_softc*, %struct.r92c_softc** %5, align 8
  %17 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @R92C_BOARD_TYPE_HIGHPA, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %23 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  br label %37

24:                                               ; preds = %15
  %25 = load %struct.r92c_softc*, %struct.r92c_softc** %5, align 8
  %26 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @R92C_BOARD_TYPE_MINICARD, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %32 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %32, align 8
  br label %36

33:                                               ; preds = %24
  %34 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %35 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %21
  br label %41

38:                                               ; preds = %2
  %39 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %40 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %40, align 8
  br label %41

41:                                               ; preds = %38, %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
