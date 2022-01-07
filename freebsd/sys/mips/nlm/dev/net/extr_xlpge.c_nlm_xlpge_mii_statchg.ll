; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_mii_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpge_mii_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpge_softc = type { i32, i32, i32, i32, i32, i32* }
%struct.mii_data = type { i32, i32 }

@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i64 0, align 8
@NLM_SGMII_SPEED_10 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"10Mbps\00", align 1
@IFM_100_TX = common dso_local global i64 0, align 8
@NLM_SGMII_SPEED_100 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"100Mbps\00", align 1
@NLM_SGMII_SPEED_1000 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"1Gbps\00", align 1
@IFM_GMASK = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@NLM_SGMII_DUPLEX_FULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@NLM_SGMII_DUPLEX_HALF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Port [%d, %d] setup with speed=%s duplex=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @nlm_xlpge_mii_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_xlpge_mii_statchg(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.nlm_xlpge_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @device_get_softc(i32* %7)
  %9 = bitcast i8* %8 to %struct.nlm_xlpge_softc*
  store %struct.nlm_xlpge_softc* %9, %struct.nlm_xlpge_softc** %3, align 8
  %10 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %96

15:                                               ; preds = %1
  %16 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %17 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = call i8* @device_get_softc(i32* %18)
  %20 = bitcast i8* %19 to %struct.mii_data*
  store %struct.mii_data* %20, %struct.mii_data** %4, align 8
  %21 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %22 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFM_ACTIVE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %96

27:                                               ; preds = %15
  %28 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %29 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IFM_SUBTYPE(i32 %30)
  %32 = load i64, i64* @IFM_10_T, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @NLM_SGMII_SPEED_10, align 4
  %36 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %37 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %54

38:                                               ; preds = %27
  %39 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %40 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IFM_SUBTYPE(i32 %41)
  %43 = load i64, i64* @IFM_100_TX, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @NLM_SGMII_SPEED_100, align 4
  %47 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %48 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %53

49:                                               ; preds = %38
  %50 = load i32, i32* @NLM_SGMII_SPEED_1000, align 4
  %51 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %52 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %34
  %55 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %56 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFM_GMASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @IFM_FDX, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load i32, i32* @NLM_SGMII_DUPLEX_FULL, align 4
  %64 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %65 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %70

66:                                               ; preds = %54
  %67 = load i32, i32* @NLM_SGMII_DUPLEX_HALF, align 4
  %68 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %69 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %72 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %75 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %73, i32 %76, i8* %77, i8* %78)
  %80 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %81 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %84 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %87 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %90 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nlm_xlpge_softc*, %struct.nlm_xlpge_softc** %3, align 8
  %93 = getelementptr inbounds %struct.nlm_xlpge_softc, %struct.nlm_xlpge_softc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @nlm_nae_setup_mac(i32 %82, i32 %85, i32 %88, i32 0, i32 1, i32 1, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %14, %70, %15
  ret void
}

declare dso_local i8* @device_get_softc(i32*) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @nlm_nae_setup_mac(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
