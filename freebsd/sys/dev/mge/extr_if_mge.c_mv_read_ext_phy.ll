; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mv_read_ext_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mv_read_ext_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i32 }

@MGE_REG_SMI = common dso_local global i32 0, align 4
@MGE_SMI_MASK = common dso_local global i32 0, align 4
@MGE_SMI_READ = common dso_local global i32 0, align 4
@MGE_SMI_READ_RETRIES = common dso_local global i64 0, align 8
@MGE_SMI_READVALID = common dso_local global i64 0, align 8
@MGE_SMI_READ_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Timeout while reading from PHY\0A\00", align 1
@MGE_SMI_DATA_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @mv_read_ext_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_read_ext_phy(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mge_softc*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.mge_softc* @device_get_softc(i32 %10)
  store %struct.mge_softc* %11, %struct.mge_softc** %8, align 8
  %12 = call i32 (...) @MGE_SMI_LOCK()
  %13 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %14 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MGE_REG_SMI, align 4
  %17 = load i32, i32* @MGE_SMI_MASK, align 4
  %18 = load i32, i32* @MGE_SMI_READ, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %19, 21
  %21 = or i32 %18, %20
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 16
  %24 = or i32 %21, %23
  %25 = and i32 %17, %24
  %26 = call i32 @MGE_WRITE(i32 %15, i32 %16, i32 %25)
  %27 = load i64, i64* @MGE_SMI_READ_RETRIES, align 8
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %44, %3
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %34 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MGE_REG_SMI, align 4
  %37 = call i64 @MGE_READ(i32 %35, i32 %36)
  %38 = load i64, i64* @MGE_SMI_READVALID, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %32, %28
  %43 = phi i1 [ false, %28 ], [ %41, %32 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i32, i32* @MGE_SMI_READ_DELAY, align 4
  %46 = call i32 @DELAY(i32 %45)
  br label %28

47:                                               ; preds = %42
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.mge_softc*, %struct.mge_softc** %8, align 8
  %55 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MGE_REG_SMI, align 4
  %58 = call i64 @MGE_READ(i32 %56, i32 %57)
  %59 = load i64, i64* @MGE_SMI_DATA_MASK, align 8
  %60 = and i64 %58, %59
  store i64 %60, i64* %9, align 8
  %61 = call i32 (...) @MGE_SMI_UNLOCK()
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  ret i32 %63
}

declare dso_local %struct.mge_softc* @device_get_softc(i32) #1

declare dso_local i32 @MGE_SMI_LOCK(...) #1

declare dso_local i32 @MGE_WRITE(i32, i32, i32) #1

declare dso_local i64 @MGE_READ(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @MGE_SMI_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
