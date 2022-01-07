; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_add_provider_to_geom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_add_provider_to_geom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_virstor_softc = type { i64, %struct.g_geom*, %struct.g_virstor_component* }
%struct.g_geom = type { i32, i32 }
%struct.g_virstor_component = type { i64, i32, i32, i32, i32, %struct.g_virstor_softc*, %struct.g_consumer* }
%struct.g_consumer = type { i64, i64, %struct.g_virstor_component*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.g_provider = type { i32, i32 }
%struct.g_virstor_metadata = type { i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@LVL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Provider %s of %s has invalid sector size (%d)\00", align 1
@LVL_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s attached to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_virstor_softc*, %struct.g_provider*, %struct.g_virstor_metadata*)* @add_provider_to_geom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_provider_to_geom(%struct.g_virstor_softc* %0, %struct.g_provider* %1, %struct.g_virstor_metadata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_virstor_softc*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_virstor_metadata*, align 8
  %8 = alloca %struct.g_virstor_component*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_consumer*, align 8
  %11 = alloca %struct.g_geom*, align 8
  %12 = alloca i32, align 4
  store %struct.g_virstor_softc* %0, %struct.g_virstor_softc** %5, align 8
  store %struct.g_provider* %1, %struct.g_provider** %6, align 8
  store %struct.g_virstor_metadata* %2, %struct.g_virstor_metadata** %7, align 8
  %13 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %7, align 8
  %14 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %17 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %166

22:                                               ; preds = %3
  %23 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %24 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %23, i32 0, i32 2
  %25 = load %struct.g_virstor_component*, %struct.g_virstor_component** %24, align 8
  %26 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %7, align 8
  %27 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %25, i64 %28
  store %struct.g_virstor_component* %29, %struct.g_virstor_component** %8, align 8
  %30 = load %struct.g_virstor_component*, %struct.g_virstor_component** %8, align 8
  %31 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %30, i32 0, i32 6
  %32 = load %struct.g_consumer*, %struct.g_consumer** %31, align 8
  %33 = icmp ne %struct.g_consumer* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @EEXIST, align 4
  store i32 %35, i32* %4, align 4
  br label %166

36:                                               ; preds = %22
  %37 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %38 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %37, i32 0, i32 1
  %39 = load %struct.g_geom*, %struct.g_geom** %38, align 8
  store %struct.g_geom* %39, %struct.g_geom** %11, align 8
  %40 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %41 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %40, i32 0, i32 1
  %42 = call %struct.g_consumer* @LIST_FIRST(i32* %41)
  store %struct.g_consumer* %42, %struct.g_consumer** %10, align 8
  %43 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %44 = call %struct.g_consumer* @g_new_consumer(%struct.g_geom* %43)
  store %struct.g_consumer* %44, %struct.g_consumer** %9, align 8
  %45 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %46 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %47 = call i32 @g_attach(%struct.g_consumer* %45, %struct.g_provider* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %52 = call i32 @g_destroy_consumer(%struct.g_consumer* %51)
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %4, align 4
  br label %166

54:                                               ; preds = %36
  %55 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %56 = icmp ne %struct.g_consumer* %55, null
  br i1 %56, label %57, label %119

57:                                               ; preds = %54
  %58 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %59 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %64 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %57
  %68 = load i32, i32* @LVL_ERROR, align 4
  %69 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %70 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %73 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %72, i32 0, i32 1
  %74 = load %struct.g_geom*, %struct.g_geom** %73, align 8
  %75 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %78 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, i32, i32, ...) @LOG_MSG(i32 %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %76, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %4, align 4
  br label %166

82:                                               ; preds = %57
  %83 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %84 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %82
  %88 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %89 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %94 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %92, %87, %82
  %98 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %99 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %100 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %103 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %106 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @g_access(%struct.g_consumer* %98, i64 %101, i64 %104, i64 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %97
  %112 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %113 = call i32 @g_detach(%struct.g_consumer* %112)
  %114 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %115 = call i32 @g_destroy_consumer(%struct.g_consumer* %114)
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %4, align 4
  br label %166

117:                                              ; preds = %97
  br label %118

118:                                              ; preds = %117, %92
  br label %119

119:                                              ; preds = %118, %54
  %120 = load %struct.g_virstor_component*, %struct.g_virstor_component** %8, align 8
  %121 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %122 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %121, i32 0, i32 2
  store %struct.g_virstor_component* %120, %struct.g_virstor_component** %122, align 8
  %123 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %124 = load %struct.g_virstor_component*, %struct.g_virstor_component** %8, align 8
  %125 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %124, i32 0, i32 6
  store %struct.g_consumer* %123, %struct.g_consumer** %125, align 8
  %126 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %127 = load %struct.g_virstor_component*, %struct.g_virstor_component** %8, align 8
  %128 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %127, i32 0, i32 5
  store %struct.g_virstor_softc* %126, %struct.g_virstor_softc** %128, align 8
  %129 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %7, align 8
  %130 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.g_virstor_component*, %struct.g_virstor_component** %8, align 8
  %133 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %7, align 8
  %135 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.g_virstor_component*, %struct.g_virstor_component** %8, align 8
  %138 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  %139 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %7, align 8
  %140 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.g_virstor_component*, %struct.g_virstor_component** %8, align 8
  %143 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 8
  %144 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %7, align 8
  %145 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.g_virstor_component*, %struct.g_virstor_component** %8, align 8
  %148 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  %149 = load %struct.g_virstor_metadata*, %struct.g_virstor_metadata** %7, align 8
  %150 = getelementptr inbounds %struct.g_virstor_metadata, %struct.g_virstor_metadata* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.g_virstor_component*, %struct.g_virstor_component** %8, align 8
  %153 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* @LVL_DEBUG, align 4
  %155 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %156 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %159 = getelementptr inbounds %struct.g_virstor_softc, %struct.g_virstor_softc* %158, i32 0, i32 1
  %160 = load %struct.g_geom*, %struct.g_geom** %159, align 8
  %161 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i8*, i32, i32, ...) @LOG_MSG(i32 %154, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %157, i32 %162)
  %164 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %5, align 8
  %165 = call i32 @virstor_check_and_run(%struct.g_virstor_softc* %164)
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %119, %111, %67, %50, %34, %20
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local %struct.g_consumer* @g_new_consumer(%struct.g_geom*) #1

declare dso_local i32 @g_attach(%struct.g_consumer*, %struct.g_provider*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i32 @LOG_MSG(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i64, i64, i64) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @virstor_check_and_run(%struct.g_virstor_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
