; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_func_stats_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_func_stats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i64, %struct.dmae_cmd }
%struct.dmae_cmd = type { i32, i32, i32, i8*, i8*, i64, i8*, i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"BUG!\0A\00", align 1
@DMAE_SRC_PCI = common dso_local global i32 0, align 4
@DMAE_DST_GRC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DMAE_COMP_PCI = common dso_local global i32 0, align 4
@func_stats = common dso_local global i64* null, align 8
@DMAE_COMP_VAL = common dso_local global i32 0, align 4
@stats_comp = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_func_stats_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_func_stats_init(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.dmae_cmd*, align 8
  %4 = alloca i64*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %5 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %5, i32 0, i32 2
  store %struct.dmae_cmd* %6, %struct.dmae_cmd** %3, align 8
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = ptrtoint i64* %8 to i32
  %10 = call i64* @BXE_SP(%struct.bxe_softc* %7, i32 %9)
  store i64* %10, i64** %4, align 8
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %17 = call i32 @BLOGE(%struct.bxe_softc* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %69

18:                                               ; preds = %1
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %22 = call i32 @memset(%struct.dmae_cmd* %21, i32 0, i32 64)
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %24 = load i32, i32* @DMAE_SRC_PCI, align 4
  %25 = load i32, i32* @DMAE_DST_GRC, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = load i32, i32* @DMAE_COMP_PCI, align 4
  %28 = call i32 @bxe_dmae_opcode(%struct.bxe_softc* %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %30 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %32 = load i64*, i64** @func_stats, align 8
  %33 = call i32 @BXE_SP_MAPPING(%struct.bxe_softc* %31, i64* %32)
  %34 = call i8* @U64_LO(i32 %33)
  %35 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %38 = load i64*, i64** @func_stats, align 8
  %39 = call i32 @BXE_SP_MAPPING(%struct.bxe_softc* %37, i64* %38)
  %40 = call i8* @U64_HI(i32 %39)
  %41 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %42 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %44 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = ashr i32 %45, 2
  %47 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %48 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %50 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %52 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %54 = load i64*, i64** %4, align 8
  %55 = call i32 @BXE_SP_MAPPING(%struct.bxe_softc* %53, i64* %54)
  %56 = call i8* @U64_LO(i32 %55)
  %57 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %58 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %60 = load i64*, i64** %4, align 8
  %61 = call i32 @BXE_SP_MAPPING(%struct.bxe_softc* %59, i64* %60)
  %62 = call i8* @U64_HI(i32 %61)
  %63 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @DMAE_COMP_VAL, align 4
  %66 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %67 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i64*, i64** %4, align 8
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %18, %15
  ret void
}

declare dso_local i64* @BXE_SP(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @memset(%struct.dmae_cmd*, i32, i32) #1

declare dso_local i32 @bxe_dmae_opcode(%struct.bxe_softc*, i32, i32, i32, i32) #1

declare dso_local i8* @U64_LO(i32) #1

declare dso_local i32 @BXE_SP_MAPPING(%struct.bxe_softc*, i64*) #1

declare dso_local i8* @U64_HI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
