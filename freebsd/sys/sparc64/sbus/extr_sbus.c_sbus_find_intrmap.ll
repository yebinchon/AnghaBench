; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_sbus.c_sbus_find_intrmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_sbus.c_sbus_find_intrmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbus_softc = type { i32, i32 }

@SBUS_MAX_INO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"out of range INO %d requested\0A\00", align 1
@INTMAP_OBIO_MASK = common dso_local global i32 0, align 4
@SBR_SLOT0_INT_MAP = common dso_local global i64 0, align 8
@SBR_SLOT0_INT_CLR = common dso_local global i64 0, align 8
@SBR_SCSI_INT_MAP = common dso_local global i64 0, align 8
@SBR_RESERVED_INT_MAP = common dso_local global i64 0, align 8
@SBR_SCSI_INT_CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbus_softc*, i32, i64*, i64*)* @sbus_find_intrmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbus_find_intrmap(%struct.sbus_softc* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbus_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sbus_softc* %0, %struct.sbus_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SBUS_MAX_INO, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.sbus_softc*, %struct.sbus_softc** %6, align 8
  %18 = getelementptr inbounds %struct.sbus_softc, %struct.sbus_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %5, align 4
  br label %93

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @INTMAP_OBIO_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  %28 = load i64, i64* @SBR_SLOT0_INT_MAP, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @INTSLOT(i32 %29)
  %31 = mul nsw i32 %30, 8
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %28, %32
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* @SBR_SLOT0_INT_CLR, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @INTSLOT(i32 %35)
  %37 = mul nsw i32 %36, 8
  %38 = mul nsw i32 %37, 8
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %34, %39
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @INTPRI(i32 %41)
  %43 = mul nsw i32 %42, 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  store i64 %45, i64* %10, align 8
  br label %80

46:                                               ; preds = %22
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %47 = load i64, i64* @SBR_SCSI_INT_MAP, align 8
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %70, %46
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @SBR_RESERVED_INT_MAP, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load %struct.sbus_softc*, %struct.sbus_softc** %6, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @SYSIO_READ8(%struct.sbus_softc* %53, i64 %54)
  %56 = call i64 @INTVEC(i32 %55)
  %57 = load %struct.sbus_softc*, %struct.sbus_softc** %6, align 8
  %58 = getelementptr inbounds %struct.sbus_softc, %struct.sbus_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @INTMAP_VEC(i32 %59, i32 %60)
  %62 = icmp eq i64 %56, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %52
  %64 = load i64, i64* @SBR_SCSI_INT_CLR, align 8
  %65 = load i32, i32* %12, align 4
  %66 = mul nsw i32 %65, 8
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %64, %67
  store i64 %68, i64* %10, align 8
  br label %75

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %11, align 8
  %72 = add nsw i64 %71, 8
  store i64 %72, i64* %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %48

75:                                               ; preds = %63, %48
  %76 = load i64, i64* %10, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %93

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %27
  %81 = load i64*, i64** %8, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i64, i64* %11, align 8
  %85 = load i64*, i64** %8, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i64*, i64** %9, align 8
  %88 = icmp ne i64* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i64, i64* %10, align 8
  %91 = load i64*, i64** %9, align 8
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %89, %86
  store i32 1, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %78, %16
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @INTSLOT(i32) #1

declare dso_local i32 @INTPRI(i32) #1

declare dso_local i64 @INTVEC(i32) #1

declare dso_local i32 @SYSIO_READ8(%struct.sbus_softc*, i64) #1

declare dso_local i64 @INTMAP_VEC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
