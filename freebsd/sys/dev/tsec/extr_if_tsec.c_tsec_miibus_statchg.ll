; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32, %struct.mii_data* }
%struct.mii_data = type { i32, i32 }

@IFM_ACTIVE = common dso_local global i32 0, align 4
@TSEC_REG_MACCFG2 = common dso_local global i32 0, align 4
@TSEC_MACCFG2_IF = common dso_local global i32 0, align 4
@IFM_GMASK = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@TSEC_MACCFG2_FULLDUPLEX = common dso_local global i32 0, align 4
@TSEC_MACCFG2_GMII = common dso_local global i32 0, align 4
@TSEC_MACCFG2_MII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No speed selected but link active!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Unknown speed (%d), link %s!\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@TSEC_REG_ID2 = common dso_local global i32 0, align 4
@TSEC_REG_ECNTRL = common dso_local global i32 0, align 4
@TSEC_ECNTRL_R100M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsec_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsec_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.tsec_softc* @device_get_softc(i32 %9)
  store %struct.tsec_softc* %10, %struct.tsec_softc** %3, align 8
  %11 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %12 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %11, i32 0, i32 1
  %13 = load %struct.mii_data*, %struct.mii_data** %12, align 8
  store %struct.mii_data* %13, %struct.mii_data** %4, align 8
  %14 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %15 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IFM_ACTIVE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %8, align 4
  %22 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %23 = load i32, i32* @TSEC_REG_MACCFG2, align 4
  %24 = call i32 @TSEC_READ(%struct.tsec_softc* %22, i32 %23)
  %25 = load i32, i32* @TSEC_MACCFG2_IF, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %29 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFM_GMASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @IFM_FDX, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load i32, i32* @TSEC_MACCFG2_FULLDUPLEX, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %44

39:                                               ; preds = %1
  %40 = load i32, i32* @TSEC_MACCFG2_FULLDUPLEX, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %46 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @IFM_SUBTYPE(i32 %47)
  switch i32 %48, label %72 [
    i32 131, label %49
    i32 132, label %49
    i32 130, label %56
    i32 129, label %56
    i32 128, label %63
  ]

49:                                               ; preds = %44, %44
  %50 = load i32, i32* @TSEC_MACCFG2_GMII, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %55 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %85

56:                                               ; preds = %44, %44
  %57 = load i32, i32* @TSEC_MACCFG2_MII, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %62 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %85

63:                                               ; preds = %44
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %2, align 4
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %71 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  br label %118

72:                                               ; preds = %44
  %73 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %74 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load i32, i32* %2, align 4
  %76 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %77 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @IFM_SUBTYPE(i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %84 = call i32 (i32, i8*, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %79, i8* %83)
  br label %118

85:                                               ; preds = %56, %49
  %86 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %87 = load i32, i32* @TSEC_REG_MACCFG2, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @TSEC_WRITE(%struct.tsec_softc* %86, i32 %87, i32 %88)
  %90 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %91 = load i32, i32* @TSEC_REG_ID2, align 4
  %92 = call i32 @TSEC_READ(%struct.tsec_softc* %90, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, 65535
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %85
  %97 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %98 = load i32, i32* @TSEC_REG_ECNTRL, align 4
  %99 = call i32 @TSEC_READ(%struct.tsec_softc* %97, i32 %98)
  %100 = load i32, i32* @TSEC_ECNTRL_R100M, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @TSEC_MACCFG2_MII, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = load i32, i32* @TSEC_ECNTRL_R100M, align 4
  br label %110

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ]
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  %114 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %115 = load i32, i32* @TSEC_REG_ECNTRL, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @TSEC_WRITE(%struct.tsec_softc* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %69, %72, %110, %85
  ret void
}

declare dso_local %struct.tsec_softc* @device_get_softc(i32) #1

declare dso_local i32 @TSEC_READ(%struct.tsec_softc*, i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @TSEC_WRITE(%struct.tsec_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
