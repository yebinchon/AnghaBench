; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_alloc_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_alloc_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_softc = type { i64, i64, i64, i64, i64, i64, i64, i64, %struct.hifn_dma* }
%struct.hifn_dma = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@HIFN_D_CMD_RSIZE = common dso_local global i64 0, align 8
@HIFN_D_VALID = common dso_local global i32 0, align 4
@HIFN_D_JUMP = common dso_local global i32 0, align 4
@HIFN_D_MASKDONEIRQ = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@HIFN_D_SRC_RSIZE = common dso_local global i64 0, align 8
@HIFN_D_DST_RSIZE = common dso_local global i64 0, align 8
@HIFN_D_RES_RSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hifn_softc*, i32*, i32*, i32*, i32*)* @hifn_alloc_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_alloc_slot(%struct.hifn_softc* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.hifn_softc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.hifn_dma*, align 8
  store %struct.hifn_softc* %0, %struct.hifn_softc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %13 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %12, i32 0, i32 8
  %14 = load %struct.hifn_dma*, %struct.hifn_dma** %13, align 8
  store %struct.hifn_dma* %14, %struct.hifn_dma** %11, align 8
  %15 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %16 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HIFN_D_CMD_RSIZE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %5
  %21 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %22 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @HIFN_D_VALID, align 4
  %24 = load i32, i32* @HIFN_D_JUMP, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @HIFN_D_MASKDONEIRQ, align 4
  %27 = or i32 %25, %26
  %28 = call i8* @htole32(i32 %27)
  %29 = load %struct.hifn_dma*, %struct.hifn_dma** %11, align 8
  %30 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %29, i32 0, i32 3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i64, i64* @HIFN_D_CMD_RSIZE, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i8* %28, i8** %34, align 8
  %35 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %36 = load i64, i64* @HIFN_D_CMD_RSIZE, align 8
  %37 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %38 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @HIFN_CMDR_SYNC(%struct.hifn_softc* %35, i64 %36, i32 %39)
  br label %41

41:                                               ; preds = %20, %5
  %42 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %43 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = trunc i64 %44 to i32
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %49 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %52 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %54 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HIFN_D_SRC_RSIZE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %41
  %59 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %60 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @HIFN_D_VALID, align 4
  %62 = load i32, i32* @HIFN_D_JUMP, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @HIFN_D_MASKDONEIRQ, align 4
  %65 = or i32 %63, %64
  %66 = call i8* @htole32(i32 %65)
  %67 = load %struct.hifn_dma*, %struct.hifn_dma** %11, align 8
  %68 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i64, i64* @HIFN_D_SRC_RSIZE, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i8* %66, i8** %72, align 8
  %73 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %74 = load i64, i64* @HIFN_D_SRC_RSIZE, align 8
  %75 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %76 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @HIFN_SRCR_SYNC(%struct.hifn_softc* %73, i64 %74, i32 %77)
  br label %79

79:                                               ; preds = %58, %41
  %80 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %81 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = trunc i64 %82 to i32
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  %86 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %87 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %90 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %92 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @HIFN_D_DST_RSIZE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %79
  %97 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %98 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %97, i32 0, i32 4
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* @HIFN_D_VALID, align 4
  %100 = load i32, i32* @HIFN_D_JUMP, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @HIFN_D_MASKDONEIRQ, align 4
  %103 = or i32 %101, %102
  %104 = call i8* @htole32(i32 %103)
  %105 = load %struct.hifn_dma*, %struct.hifn_dma** %11, align 8
  %106 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load i64, i64* @HIFN_D_DST_RSIZE, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i8* %104, i8** %110, align 8
  %111 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %112 = load i64, i64* @HIFN_D_DST_RSIZE, align 8
  %113 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %114 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @HIFN_DSTR_SYNC(%struct.hifn_softc* %111, i64 %112, i32 %115)
  br label %117

117:                                              ; preds = %96, %79
  %118 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %119 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %119, align 8
  %122 = trunc i64 %120 to i32
  %123 = load i32*, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  %124 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %125 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %128 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %127, i32 0, i32 5
  store i64 %126, i64* %128, align 8
  %129 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %130 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @HIFN_D_RES_RSIZE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %155

134:                                              ; preds = %117
  %135 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %136 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %135, i32 0, i32 6
  store i64 0, i64* %136, align 8
  %137 = load i32, i32* @HIFN_D_VALID, align 4
  %138 = load i32, i32* @HIFN_D_JUMP, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @HIFN_D_MASKDONEIRQ, align 4
  %141 = or i32 %139, %140
  %142 = call i8* @htole32(i32 %141)
  %143 = load %struct.hifn_dma*, %struct.hifn_dma** %11, align 8
  %144 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = load i64, i64* @HIFN_D_RES_RSIZE, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i8* %142, i8** %148, align 8
  %149 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %150 = load i64, i64* @HIFN_D_RES_RSIZE, align 8
  %151 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %152 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @HIFN_RESR_SYNC(%struct.hifn_softc* %149, i64 %150, i32 %153)
  br label %155

155:                                              ; preds = %134, %117
  %156 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %157 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %157, align 8
  %160 = trunc i64 %158 to i32
  %161 = load i32*, i32** %10, align 8
  store i32 %160, i32* %161, align 4
  %162 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %163 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %162, i32 0, i32 6
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.hifn_softc*, %struct.hifn_softc** %6, align 8
  %166 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %165, i32 0, i32 7
  store i64 %164, i64* %166, align 8
  ret void
}

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @HIFN_CMDR_SYNC(%struct.hifn_softc*, i64, i32) #1

declare dso_local i32 @HIFN_SRCR_SYNC(%struct.hifn_softc*, i64, i32) #1

declare dso_local i32 @HIFN_DSTR_SYNC(%struct.hifn_softc*, i64, i32) #1

declare dso_local i32 @HIFN_RESR_SYNC(%struct.hifn_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
