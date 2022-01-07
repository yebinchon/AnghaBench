; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_init_board.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_init_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safe_softc = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SAFE_PE_DMACFG = common dso_local global i32 0, align 4
@SAFE_PE_DMACFG_PEMODE = common dso_local global i32 0, align 4
@SAFE_PE_DMACFG_FSENA = common dso_local global i32 0, align 4
@SAFE_PE_DMACFG_GPRPCI = common dso_local global i32 0, align 4
@SAFE_PE_DMACFG_SPRPCI = common dso_local global i32 0, align 4
@SAFE_PE_DMACFG_ESDESC = common dso_local global i32 0, align 4
@SAFE_PE_DMACFG_ESSA = common dso_local global i32 0, align 4
@SAFE_PE_DMACFG_ESPDESC = common dso_local global i32 0, align 4
@SAFE_DMA_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Reduce max DMA size to %u words for rev %u.%u WAR\0A\00", align 1
@SAFE_PE_PDRBASE = common dso_local global i32 0, align 4
@SAFE_PE_RDRBASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"PE ring entry not 32-bit aligned!\00", align 1
@SAFE_PE_RINGCFG = common dso_local global i32 0, align 4
@SAFE_PE_RINGCFG_OFFSET_S = common dso_local global i32 0, align 4
@SAFE_MAX_NQUEUE = common dso_local global i32 0, align 4
@SAFE_PE_RINGPOLL = common dso_local global i32 0, align 4
@SAFE_PE_GRNGBASE = common dso_local global i32 0, align 4
@SAFE_PE_SRNGBASE = common dso_local global i32 0, align 4
@SAFE_PE_PARTSIZE = common dso_local global i32 0, align 4
@SAFE_TOTAL_DPART = common dso_local global i32 0, align 4
@SAFE_TOTAL_SPART = common dso_local global i32 0, align 4
@SAFE_PE_PARTCFG = common dso_local global i32 0, align 4
@SAFE_MAX_DSIZE = common dso_local global i32 0, align 4
@SAFE_HI_CFG = common dso_local global i32 0, align 4
@SAFE_HI_CFG_LEVEL = common dso_local global i32 0, align 4
@SAFE_HI_DESC_CNT = common dso_local global i32 0, align 4
@SAFE_HI_MASK = common dso_local global i32 0, align 4
@SAFE_INT_PE_DDONE = common dso_local global i32 0, align 4
@SAFE_INT_PE_ERROR = common dso_local global i32 0, align 4
@SAFE_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safe_softc*)* @safe_init_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safe_init_board(%struct.safe_softc* %0) #0 {
  %2 = alloca %struct.safe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.safe_softc* %0, %struct.safe_softc** %2, align 8
  %5 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %6 = load i32, i32* @SAFE_PE_DMACFG, align 4
  %7 = call i32 @READ_REG(%struct.safe_softc* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @SAFE_PE_DMACFG_PEMODE, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @SAFE_PE_DMACFG_FSENA, align 4
  %13 = load i32, i32* @SAFE_PE_DMACFG_GPRPCI, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SAFE_PE_DMACFG_SPRPCI, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SAFE_PE_DMACFG_ESDESC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SAFE_PE_DMACFG_ESSA, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SAFE_PE_DMACFG_ESPDESC, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %26 = load i32, i32* @SAFE_PE_DMACFG, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @WRITE_REG(%struct.safe_softc* %25, i32 %26, i32 %27)
  %29 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %30 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @SAFE_REV(i32 1, i32 0)
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %1
  %35 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %36 = load i32, i32* @SAFE_DMA_CFG, align 4
  %37 = call i32 @WRITE_REG(%struct.safe_softc* %35, i32 %36, i32 256)
  %38 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %39 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %42 = load i32, i32* @SAFE_DMA_CFG, align 4
  %43 = call i32 @READ_REG(%struct.safe_softc* %41, i32 %42)
  %44 = ashr i32 %43, 2
  %45 = and i32 %44, 255
  %46 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %47 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @SAFE_REV_MAJ(i64 %48)
  %50 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %51 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @SAFE_REV_MIN(i64 %52)
  %54 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %34, %1
  %56 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %57 = load i32, i32* @SAFE_PE_PDRBASE, align 4
  %58 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %59 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @WRITE_REG(%struct.safe_softc* %56, i32 %57, i32 %61)
  %63 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %64 = load i32, i32* @SAFE_PE_RDRBASE, align 4
  %65 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %66 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @WRITE_REG(%struct.safe_softc* %63, i32 %64, i32 %68)
  %70 = call i32 @KASSERT(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  %71 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %72 = load i32, i32* @SAFE_PE_RINGCFG, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @SAFE_PE_RINGCFG_OFFSET_S, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* @SAFE_MAX_NQUEUE, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @WRITE_REG(%struct.safe_softc* %71, i32 %72, i32 %77)
  %79 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %80 = load i32, i32* @SAFE_PE_RINGPOLL, align 4
  %81 = call i32 @WRITE_REG(%struct.safe_softc* %79, i32 %80, i32 0)
  %82 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %83 = load i32, i32* @SAFE_PE_GRNGBASE, align 4
  %84 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %85 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @WRITE_REG(%struct.safe_softc* %82, i32 %83, i32 %87)
  %89 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %90 = load i32, i32* @SAFE_PE_SRNGBASE, align 4
  %91 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %92 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @WRITE_REG(%struct.safe_softc* %89, i32 %90, i32 %94)
  %96 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %97 = load i32, i32* @SAFE_PE_PARTSIZE, align 4
  %98 = load i32, i32* @SAFE_TOTAL_DPART, align 4
  %99 = shl i32 %98, 16
  %100 = load i32, i32* @SAFE_TOTAL_SPART, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @WRITE_REG(%struct.safe_softc* %96, i32 %97, i32 %101)
  %103 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %104 = load i32, i32* @SAFE_PE_PARTCFG, align 4
  %105 = load i32, i32* @SAFE_MAX_DSIZE, align 4
  %106 = call i32 @WRITE_REG(%struct.safe_softc* %103, i32 %104, i32 %105)
  %107 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %108 = load i32, i32* @SAFE_PE_DMACFG, align 4
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @SAFE_PE_DMACFG_PEMODE, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @WRITE_REG(%struct.safe_softc* %107, i32 %108, i32 %111)
  %113 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %114 = load i32, i32* @SAFE_HI_CFG, align 4
  %115 = load i32, i32* @SAFE_HI_CFG_LEVEL, align 4
  %116 = call i32 @WRITE_REG(%struct.safe_softc* %113, i32 %114, i32 %115)
  %117 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %118 = load i32, i32* @SAFE_HI_DESC_CNT, align 4
  %119 = call i32 @WRITE_REG(%struct.safe_softc* %117, i32 %118, i32 1)
  %120 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %121 = load i32, i32* @SAFE_HI_MASK, align 4
  %122 = load i32, i32* @SAFE_INT_PE_DDONE, align 4
  %123 = load i32, i32* @SAFE_INT_PE_ERROR, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @WRITE_REG(%struct.safe_softc* %120, i32 %121, i32 %124)
  ret void
}

declare dso_local i32 @READ_REG(%struct.safe_softc*, i32) #1

declare dso_local i32 @WRITE_REG(%struct.safe_softc*, i32, i32) #1

declare dso_local i64 @SAFE_REV(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @SAFE_REV_MAJ(i64) #1

declare dso_local i32 @SAFE_REV_MIN(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
