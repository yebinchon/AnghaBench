; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_find_syncrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_find_syncrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_syncrate = type { i32, i64, i32* }
%struct.ahc_softc = type { i32 }

@AHC_DT = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i64 0, align 8
@AHC_SYNCRATE_ULTRA2 = common dso_local global i64 0, align 8
@ahc_syncrates = common dso_local global %struct.ahc_syncrate* null, align 8
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@ST_SXFR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ahc_syncrate* @ahc_find_syncrate(%struct.ahc_softc* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ahc_syncrate*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %11 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AHC_DT, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %18 = xor i64 %17, -1
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %20, %18
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %16, %4
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %26 = and i64 %24, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @AHC_SYNCRATE_ULTRA2, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @AHC_SYNCRATE_ULTRA2, align 8
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %32, %28, %22
  %35 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** @ahc_syncrates, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %35, i64 %36
  store %struct.ahc_syncrate* %37, %struct.ahc_syncrate** %9, align 8
  br label %38

38:                                               ; preds = %89, %34
  %39 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %40 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %92

43:                                               ; preds = %38
  %44 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %45 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AHC_ULTRA2, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %52 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %92

56:                                               ; preds = %50, %43
  %57 = load i64*, i64** %6, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %60 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ule i64 %58, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %56
  %64 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %65 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** @ahc_syncrates, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %65, i64 %66
  %68 = icmp eq %struct.ahc_syncrate* %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %71 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %6, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %63
  %75 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %76 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ST_SXFR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %83 = xor i64 %82, -1
  %84 = load i64*, i64** %7, align 8
  %85 = load i64, i64* %84, align 8
  %86 = and i64 %85, %83
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %81, %74
  br label %92

88:                                               ; preds = %56
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %91 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %90, i32 1
  store %struct.ahc_syncrate* %91, %struct.ahc_syncrate** %9, align 8
  br label %38

92:                                               ; preds = %87, %55, %38
  %93 = load i64*, i64** %6, align 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %113, label %96

96:                                               ; preds = %92
  %97 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %98 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %113, label %101

101:                                              ; preds = %96
  %102 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %103 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AHC_ULTRA2, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %101
  %109 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %110 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108, %96, %92
  %114 = load i64*, i64** %6, align 8
  store i64 0, i64* %114, align 8
  store %struct.ahc_syncrate* null, %struct.ahc_syncrate** %9, align 8
  %115 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %116 = xor i64 %115, -1
  %117 = load i64*, i64** %7, align 8
  %118 = load i64, i64* %117, align 8
  %119 = and i64 %118, %116
  store i64 %119, i64* %117, align 8
  br label %120

120:                                              ; preds = %113, %108, %101
  %121 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  ret %struct.ahc_syncrate* %121
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
