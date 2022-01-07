; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mv_write_ext_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mv_write_ext_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i32 }

@MGE_REG_SMI = common dso_local global i32 0, align 4
@MGE_SMI_MASK = common dso_local global i32 0, align 4
@MGE_SMI_WRITE = common dso_local global i32 0, align 4
@MGE_SMI_DATA_MASK = common dso_local global i32 0, align 4
@MGE_SMI_WRITE_RETRIES = common dso_local global i64 0, align 8
@MGE_SMI_BUSY = common dso_local global i32 0, align 4
@MGE_SMI_WRITE_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Timeout while writing to PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @mv_write_ext_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_write_ext_phy(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.mge_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.mge_softc* @device_get_softc(i32 %11)
  store %struct.mge_softc* %12, %struct.mge_softc** %10, align 8
  %13 = call i32 (...) @MGE_SMI_LOCK()
  %14 = load %struct.mge_softc*, %struct.mge_softc** %10, align 8
  %15 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MGE_REG_SMI, align 4
  %18 = load i32, i32* @MGE_SMI_MASK, align 4
  %19 = load i32, i32* @MGE_SMI_WRITE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 %20, 21
  %22 = or i32 %19, %21
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %22, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MGE_SMI_DATA_MASK, align 4
  %28 = and i32 %26, %27
  %29 = or i32 %25, %28
  %30 = and i32 %18, %29
  %31 = call i32 @MGE_WRITE(i32 %16, i32 %17, i32 %30)
  %32 = load i64, i64* @MGE_SMI_WRITE_RETRIES, align 8
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %48, %4
  %34 = load i64, i64* %9, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.mge_softc*, %struct.mge_softc** %10, align 8
  %39 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MGE_REG_SMI, align 4
  %42 = call i32 @MGE_READ(i32 %40, i32 %41)
  %43 = load i32, i32* @MGE_SMI_BUSY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %37, %33
  %47 = phi i1 [ false, %33 ], [ %45, %37 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i32, i32* @MGE_SMI_WRITE_DELAY, align 4
  %50 = call i32 @DELAY(i32 %49)
  br label %33

51:                                               ; preds = %46
  %52 = load i64, i64* %9, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %51
  %58 = call i32 (...) @MGE_SMI_UNLOCK()
  ret void
}

declare dso_local %struct.mge_softc* @device_get_softc(i32) #1

declare dso_local i32 @MGE_SMI_LOCK(...) #1

declare dso_local i32 @MGE_WRITE(i32, i32, i32) #1

declare dso_local i32 @MGE_READ(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @MGE_SMI_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
