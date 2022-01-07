; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mv_read_ge_smi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mv_read_ge_smi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"NULL softc ptr!\00", align 1
@MGE_SMI_WRITE_RETRIES = common dso_local global i64 0, align 8
@MGE_REG_SMI = common dso_local global i32 0, align 4
@MGE_SMI_BUSY = common dso_local global i64 0, align 8
@MGE_SMI_WRITE_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"SMI write timeout.\0A\00", align 1
@MGE_SMI_MASK = common dso_local global i32 0, align 4
@MGE_SMI_READ = common dso_local global i32 0, align 4
@MGE_SMI_READVALID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"SMI write validation timeout.\0A\00", align 1
@MGE_SMI_DELAY = common dso_local global i32 0, align 4
@MGE_SMI_DATA_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32)* @mv_read_ge_smi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mv_read_ge_smi(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mge_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.mge_softc* @device_get_softc(i32 %10)
  store %struct.mge_softc* %11, %struct.mge_softc** %9, align 8
  %12 = load %struct.mge_softc*, %struct.mge_softc** %9, align 8
  %13 = icmp ne %struct.mge_softc* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* @MGE_SMI_WRITE_RETRIES, align 8
  store i64 %16, i64* %7, align 8
  %17 = call i32 (...) @MGE_SMI_LOCK()
  br label %18

18:                                               ; preds = %31, %3
  %19 = load i64, i64* %7, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.mge_softc*, %struct.mge_softc** %9, align 8
  %24 = load i32, i32* @MGE_REG_SMI, align 4
  %25 = call i64 @MGE_READ(%struct.mge_softc* %23, i32 %24)
  %26 = load i64, i64* @MGE_SMI_BUSY, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %22, %18
  %30 = phi i1 [ false, %18 ], [ %28, %22 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i32, i32* @MGE_SMI_WRITE_DELAY, align 4
  %33 = call i32 @MGE_DELAY(i32 %32)
  br label %18

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i64 4294967295, i64* %8, align 8
  br label %85

40:                                               ; preds = %34
  %41 = load %struct.mge_softc*, %struct.mge_softc** %9, align 8
  %42 = load i32, i32* @MGE_REG_SMI, align 4
  %43 = load i32, i32* @MGE_SMI_MASK, align 4
  %44 = load i32, i32* @MGE_SMI_READ, align 4
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 %45, 21
  %47 = or i32 %44, %46
  %48 = load i32, i32* %5, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %47, %49
  %51 = and i32 %43, %50
  %52 = call i32 @MGE_WRITE(%struct.mge_softc* %41, i32 %42, i32 %51)
  %53 = load i64, i64* @MGE_SMI_WRITE_RETRIES, align 8
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %68, %40
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.mge_softc*, %struct.mge_softc** %9, align 8
  %60 = load i32, i32* @MGE_REG_SMI, align 4
  %61 = call i64 @MGE_READ(%struct.mge_softc* %59, i32 %60)
  %62 = load i64, i64* @MGE_SMI_READVALID, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %58, %54
  %67 = phi i1 [ false, %54 ], [ %65, %58 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i32, i32* @MGE_SMI_WRITE_DELAY, align 4
  %70 = call i32 @MGE_DELAY(i32 %69)
  br label %54

71:                                               ; preds = %66
  %72 = load i64, i64* %7, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i64 4294967295, i64* %8, align 8
  br label %85

77:                                               ; preds = %71
  %78 = load i32, i32* @MGE_SMI_DELAY, align 4
  %79 = call i32 @MGE_DELAY(i32 %78)
  %80 = load %struct.mge_softc*, %struct.mge_softc** %9, align 8
  %81 = load i32, i32* @MGE_REG_SMI, align 4
  %82 = call i64 @MGE_READ(%struct.mge_softc* %80, i32 %81)
  %83 = load i64, i64* @MGE_SMI_DATA_MASK, align 8
  %84 = and i64 %82, %83
  store i64 %84, i64* %8, align 8
  br label %85

85:                                               ; preds = %77, %74, %37
  %86 = call i32 (...) @MGE_SMI_UNLOCK()
  %87 = load i64, i64* %8, align 8
  ret i64 %87
}

declare dso_local %struct.mge_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MGE_SMI_LOCK(...) #1

declare dso_local i64 @MGE_READ(%struct.mge_softc*, i32) #1

declare dso_local i32 @MGE_DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @MGE_WRITE(%struct.mge_softc*, i32, i32) #1

declare dso_local i32 @MGE_SMI_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
