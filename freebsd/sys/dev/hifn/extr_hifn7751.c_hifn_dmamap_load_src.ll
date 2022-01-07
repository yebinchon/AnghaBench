; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_dmamap_load_src.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_dmamap_load_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_softc = type { i32, i32, %struct.hifn_dma* }
%struct.hifn_dma = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.hifn_command = type { %struct.hifn_operand }
%struct.hifn_operand = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@HIFN_D_LAST = common dso_local global i32 0, align 4
@HIFN_D_VALID = common dso_local global i32 0, align 4
@HIFN_D_MASKDONEIRQ = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_softc*, %struct.hifn_command*)* @hifn_dmamap_load_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_dmamap_load_src(%struct.hifn_softc* %0, %struct.hifn_command* %1) #0 {
  %3 = alloca %struct.hifn_softc*, align 8
  %4 = alloca %struct.hifn_command*, align 8
  %5 = alloca %struct.hifn_dma*, align 8
  %6 = alloca %struct.hifn_operand*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hifn_softc* %0, %struct.hifn_softc** %3, align 8
  store %struct.hifn_command* %1, %struct.hifn_command** %4, align 8
  %10 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %11 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %10, i32 0, i32 2
  %12 = load %struct.hifn_dma*, %struct.hifn_dma** %11, align 8
  store %struct.hifn_dma* %12, %struct.hifn_dma** %5, align 8
  %13 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %14 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %13, i32 0, i32 0
  store %struct.hifn_operand* %14, %struct.hifn_operand** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %16 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %81, %2
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.hifn_operand*, %struct.hifn_operand** %6, align 8
  %21 = getelementptr inbounds %struct.hifn_operand, %struct.hifn_operand* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %84

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.hifn_operand*, %struct.hifn_operand** %6, align 8
  %27 = getelementptr inbounds %struct.hifn_operand, %struct.hifn_operand* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @HIFN_D_LAST, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %24
  %34 = load %struct.hifn_operand*, %struct.hifn_operand** %6, align 8
  %35 = getelementptr inbounds %struct.hifn_operand, %struct.hifn_operand* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @htole32(i32 %41)
  %43 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %44 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i8* %42, i8** %49, align 8
  %50 = load %struct.hifn_operand*, %struct.hifn_operand** %6, align 8
  %51 = getelementptr inbounds %struct.hifn_operand, %struct.hifn_operand* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @HIFN_D_VALID, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @HIFN_D_MASKDONEIRQ, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %61, %62
  %64 = call i8* @htole32(i32 %63)
  %65 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %66 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i8* %64, i8** %71, align 8
  %72 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %75 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @HIFN_SRCR_SYNC(%struct.hifn_softc* %72, i32 %73, i32 %76)
  %78 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @hifn_dmamap_srcwrap(%struct.hifn_softc* %78, i32 %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %33
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %18

84:                                               ; preds = %18
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %87 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.hifn_operand*, %struct.hifn_operand** %6, align 8
  %89 = getelementptr inbounds %struct.hifn_operand, %struct.hifn_operand* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %92 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @HIFN_SRCR_SYNC(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @hifn_dmamap_srcwrap(%struct.hifn_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
