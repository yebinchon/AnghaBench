; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bfe_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bfe_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quicc_device = type { i32 (i32)*, i32 }
%struct.quicc_softc = type { i32, %struct.quicc_device*, i32 }

@QUICC_REG_SIPNR_L = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Stray interrupt %08x\0A\00", align 1
@FILTER_STRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @quicc_bfe_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quicc_bfe_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.quicc_device*, align 8
  %5 = alloca %struct.quicc_softc*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.quicc_softc*
  store %struct.quicc_softc* %8, %struct.quicc_softc** %5, align 8
  %9 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %10 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @QUICC_REG_SIPNR_L, align 4
  %13 = call i32 @quicc_read4(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 15728640
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %19 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %18, i32 0, i32 1
  %20 = load %struct.quicc_device*, %struct.quicc_device** %19, align 8
  store %struct.quicc_device* %20, %struct.quicc_device** %4, align 8
  br label %22

21:                                               ; preds = %1
  store %struct.quicc_device* null, %struct.quicc_device** %4, align 8
  br label %22

22:                                               ; preds = %21, %17
  %23 = load %struct.quicc_device*, %struct.quicc_device** %4, align 8
  %24 = icmp eq %struct.quicc_device* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load %struct.quicc_device*, %struct.quicc_device** %4, align 8
  %27 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = icmp eq i32 (i32)* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25, %22
  %31 = load %struct.quicc_softc*, %struct.quicc_softc** %5, align 8
  %32 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %36, i32* %2, align 4
  br label %45

37:                                               ; preds = %25
  %38 = load %struct.quicc_device*, %struct.quicc_device** %4, align 8
  %39 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %38, i32 0, i32 0
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load %struct.quicc_device*, %struct.quicc_device** %4, align 8
  %42 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %40(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %37, %30
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @quicc_read4(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
