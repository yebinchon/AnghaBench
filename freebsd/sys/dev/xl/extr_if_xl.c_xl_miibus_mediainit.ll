; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_miibus_mediainit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_miibus_mediainit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i32, i64, i32, i32, i32 }
%struct.mii_data = type { %struct.ifmedia }
%struct.ifmedia = type { i32 }

@XL_MEDIAOPT_AUI = common dso_local global i32 0, align 4
@XL_MEDIAOPT_10FL = common dso_local global i32 0, align 4
@XL_TYPE_905B = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"found 10baseFL\0A\00", align 1
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_10_FL = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@XL_CAPS_FULL_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"found AUI\0A\00", align 1
@IFM_10_5 = common dso_local global i32 0, align 4
@XL_MEDIAOPT_BNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"found BNC\0A\00", align 1
@IFM_10_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @xl_miibus_mediainit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_miibus_mediainit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xl_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifmedia*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i8* @device_get_softc(i32 %6)
  %8 = bitcast i8* %7 to %struct.xl_softc*
  store %struct.xl_softc* %8, %struct.xl_softc** %3, align 8
  %9 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %10 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @device_get_softc(i32 %11)
  %13 = bitcast i8* %12 to %struct.mii_data*
  store %struct.mii_data* %13, %struct.mii_data** %4, align 8
  %14 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %15 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %14, i32 0, i32 0
  store %struct.ifmedia* %15, %struct.ifmedia** %5, align 8
  %16 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %17 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @XL_MEDIAOPT_AUI, align 4
  %20 = load i32, i32* @XL_MEDIAOPT_10FL, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %87

24:                                               ; preds = %1
  %25 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %26 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XL_TYPE_905B, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %24
  %31 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %32 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @XL_MEDIAOPT_10FL, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %30
  %37 = load i64, i64* @bootverbose, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %41 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %36
  %45 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %46 = load i32, i32* @IFM_ETHER, align 4
  %47 = load i32, i32* @IFM_10_FL, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @ifmedia_add(%struct.ifmedia* %45, i32 %48, i32 0, i32* null)
  %50 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %51 = load i32, i32* @IFM_ETHER, align 4
  %52 = load i32, i32* @IFM_10_FL, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @IFM_HDX, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @ifmedia_add(%struct.ifmedia* %50, i32 %55, i32 0, i32* null)
  %57 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %58 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @XL_CAPS_FULL_DUPLEX, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %44
  %64 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %65 = load i32, i32* @IFM_ETHER, align 4
  %66 = load i32, i32* @IFM_10_FL, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @IFM_FDX, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @ifmedia_add(%struct.ifmedia* %64, i32 %69, i32 0, i32* null)
  br label %71

71:                                               ; preds = %63, %44
  br label %86

72:                                               ; preds = %30, %24
  %73 = load i64, i64* @bootverbose, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %77 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %72
  %81 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %82 = load i32, i32* @IFM_ETHER, align 4
  %83 = load i32, i32* @IFM_10_5, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @ifmedia_add(%struct.ifmedia* %81, i32 %84, i32 0, i32* null)
  br label %86

86:                                               ; preds = %80, %71
  br label %87

87:                                               ; preds = %86, %1
  %88 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %89 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @XL_MEDIAOPT_BNC, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %87
  %95 = load i64, i64* @bootverbose, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %99 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @device_printf(i32 %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %97, %94
  %103 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %104 = load i32, i32* @IFM_ETHER, align 4
  %105 = load i32, i32* @IFM_10_2, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @ifmedia_add(%struct.ifmedia* %103, i32 %106, i32 0, i32* null)
  br label %108

108:                                              ; preds = %102, %87
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ifmedia_add(%struct.ifmedia*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
