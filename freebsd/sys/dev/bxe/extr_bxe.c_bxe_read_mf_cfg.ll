; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_read_mf_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_read_mf_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.bxe_softc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@VN_0 = common dso_local global i32 0, align 4
@E1H_FUNC_MAX = common dso_local global i32 0, align 4
@func_mf_config = common dso_local global %struct.TYPE_6__* null, align 8
@FUNC_MF_CFG_FUNC_DISABLED = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"mf_cfg function disabled\0A\00", align 1
@BXE_MF_FUNC_DIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"mf_cfg function enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_read_mf_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_read_mf_cfg(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %7 = call i64 @CHIP_IS_MODE_4_PORT(%struct.bxe_softc* %6)
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 2, i32 1
  store i32 %10, i32* %3, align 4
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = call i64 @BXE_NOMCP(%struct.bxe_softc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %89

15:                                               ; preds = %1
  %16 = load i32, i32* @VN_0, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %54, %15
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %20 = call i32 @SC_MAX_VN_NUM(%struct.bxe_softc* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 2, %24
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %27 = call i32 @SC_PORT(%struct.bxe_softc* %26)
  %28 = add nsw i32 %25, %27
  %29 = mul nsw i32 %23, %28
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %31 = call i32 @SC_PATH(%struct.bxe_softc* %30)
  %32 = add nsw i32 %29, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @E1H_FUNC_MAX, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %57

37:                                               ; preds = %22
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @func_mf_config, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MFCFG_RD(%struct.bxe_softc* %38, i32 %44)
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %47 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %45, i32* %53, align 4
  br label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %17

57:                                               ; preds = %36, %17
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %59 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %64 = call i64 @SC_VN(%struct.bxe_softc* %63)
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FUNC_MF_CFG_FUNC_DISABLED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %57
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %72 = load i32, i32* @DBG_LOAD, align 4
  %73 = call i32 @BLOGD(%struct.bxe_softc* %71, i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @BXE_MF_FUNC_DIS, align 4
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %76 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %89

79:                                               ; preds = %57
  %80 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %81 = load i32, i32* @DBG_LOAD, align 4
  %82 = call i32 @BLOGD(%struct.bxe_softc* %80, i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @BXE_MF_FUNC_DIS, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %86 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %14, %79, %70
  ret void
}

declare dso_local i64 @CHIP_IS_MODE_4_PORT(%struct.bxe_softc*) #1

declare dso_local i64 @BXE_NOMCP(%struct.bxe_softc*) #1

declare dso_local i32 @SC_MAX_VN_NUM(%struct.bxe_softc*) #1

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @SC_PATH(%struct.bxe_softc*) #1

declare dso_local i32 @MFCFG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i64 @SC_VN(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
