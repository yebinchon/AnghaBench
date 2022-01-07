; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, i32, i32, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"reinit NVS version 0x%x, NDIS version %u.%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"reinit NVS version 0x%x failed: %d\0A\00", align 1
@hn_nvs_version = common dso_local global i32* null, align 8
@HN_NDIS_VERSION_6_30 = common dso_local global i32 0, align 4
@HN_NVS_VERSION_4 = common dso_local global i32 0, align 4
@HN_NDIS_VERSION_6_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"NVS version 0x%x, NDIS version %u.%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"no NVS available\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@HN_NVS_VERSION_5 = common dso_local global i32 0, align 4
@HN_CAP_HASHVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*)* @hn_nvs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_nvs_init(%struct.hn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  %6 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %7 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @device_is_attached(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %1
  %12 = load i64, i64* @bootverbose, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %16 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %19 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %22 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @HN_NDIS_VERSION_MAJOR(i32 %23)
  %25 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %26 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @HN_NDIS_VERSION_MINOR(i32 %27)
  %29 = call i32 (i32, i8*, ...) @if_printf(i32 %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %14, %11
  %31 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %32 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %33 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @hn_nvs_doinit(%struct.hn_softc* %31, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %40 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %43 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i32, i8*, ...) @if_printf(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %128

48:                                               ; preds = %30
  br label %115

49:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %106, %49
  %51 = load i32, i32* %4, align 4
  %52 = load i32*, i32** @hn_nvs_version, align 8
  %53 = call i32 @nitems(i32* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %109

55:                                               ; preds = %50
  %56 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %57 = load i32*, i32** @hn_nvs_version, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @hn_nvs_doinit(%struct.hn_softc* %56, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %105, label %65

65:                                               ; preds = %55
  %66 = load i32*, i32** @hn_nvs_version, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %72 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @HN_NDIS_VERSION_6_30, align 4
  %74 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %75 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %77 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @HN_NVS_VERSION_4, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %65
  %82 = load i32, i32* @HN_NDIS_VERSION_6_1, align 4
  %83 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %84 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %65
  %86 = load i64, i64* @bootverbose, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %90 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %93 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %96 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @HN_NDIS_VERSION_MAJOR(i32 %97)
  %99 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %100 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @HN_NDIS_VERSION_MINOR(i32 %101)
  %103 = call i32 (i32, i8*, ...) @if_printf(i32 %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %88, %85
  br label %115

105:                                              ; preds = %55
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %50

109:                                              ; preds = %50
  %110 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %111 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @if_printf(i32 %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i32, i32* @ENXIO, align 4
  store i32 %114, i32* %2, align 4
  br label %128

115:                                              ; preds = %104, %48
  %116 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %117 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @HN_NVS_VERSION_5, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i32, i32* @HN_CAP_HASHVAL, align 4
  %123 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %124 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %115
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %109, %38
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @if_printf(i32, i8*, ...) #1

declare dso_local i32 @HN_NDIS_VERSION_MAJOR(i32) #1

declare dso_local i32 @HN_NDIS_VERSION_MINOR(i32) #1

declare dso_local i32 @hn_nvs_doinit(%struct.hn_softc*, i32) #1

declare dso_local i32 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
