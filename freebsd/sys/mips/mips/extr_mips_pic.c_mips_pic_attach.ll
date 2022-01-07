; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_mips_pic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_mips_pic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_pic_softc = type { i32, i32, i32 }

@pic_sc = common dso_local global %struct.mips_pic_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not register PIC ISRCs\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not register PIC\0A\00", align 1
@mips_pic_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not set PIC as a root\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mips_pic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_pic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mips_pic_softc*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @pic_xref(i32 %6)
  store i64 %7, i64* %5, align 8
  %8 = load %struct.mips_pic_softc*, %struct.mips_pic_softc** @pic_sc, align 8
  %9 = icmp ne %struct.mips_pic_softc* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.mips_pic_softc* @device_get_softc(i32 %13)
  store %struct.mips_pic_softc* %14, %struct.mips_pic_softc** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.mips_pic_softc*, %struct.mips_pic_softc** %4, align 8
  %17 = getelementptr inbounds %struct.mips_pic_softc, %struct.mips_pic_softc* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.mips_pic_softc*, %struct.mips_pic_softc** %4, align 8
  store %struct.mips_pic_softc* %18, %struct.mips_pic_softc** @pic_sc, align 8
  %19 = load %struct.mips_pic_softc*, %struct.mips_pic_softc** %4, align 8
  %20 = getelementptr inbounds %struct.mips_pic_softc, %struct.mips_pic_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @nitems(i32 %21)
  %23 = load %struct.mips_pic_softc*, %struct.mips_pic_softc** %4, align 8
  %24 = getelementptr inbounds %struct.mips_pic_softc, %struct.mips_pic_softc* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mips_pic_softc*, %struct.mips_pic_softc** %4, align 8
  %26 = call i64 @mips_pic_register_isrcs(%struct.mips_pic_softc* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %12
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %53

31:                                               ; preds = %12
  %32 = load i32, i32* %3, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32* @intr_pic_register(i32 %32, i64 %33)
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %53

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  %41 = load i64, i64* %5, align 8
  %42 = load i32, i32* @mips_pic_intr, align 4
  %43 = load %struct.mips_pic_softc*, %struct.mips_pic_softc** %4, align 8
  %44 = call i64 @intr_pic_claim_root(i32 %40, i64 %41, i32 %42, %struct.mips_pic_softc* %43, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* %3, align 4
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @intr_pic_deregister(i32 %49, i64 %50)
  br label %53

52:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %55

53:                                               ; preds = %46, %36, %28
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %52, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @pic_xref(i32) #1

declare dso_local %struct.mips_pic_softc* @device_get_softc(i32) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i64 @mips_pic_register_isrcs(%struct.mips_pic_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @intr_pic_register(i32, i64) #1

declare dso_local i64 @intr_pic_claim_root(i32, i64, i32, %struct.mips_pic_softc*, i32) #1

declare dso_local i32 @intr_pic_deregister(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
