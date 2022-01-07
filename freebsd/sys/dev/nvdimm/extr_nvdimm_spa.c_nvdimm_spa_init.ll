; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.SPA_mapping = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64 }

@ACPI_NFIT_PROXIMITY_VALID = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"NVDIMM SPA%d base %#016jx len %#016jx %s fl %#jx\0A\00", align 1
@nvdimm_SPA_uuid_list = common dso_local global %struct.TYPE_7__* null, align 8
@M_NVDIMM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"spa%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvdimm_spa_init(%struct.SPA_mapping* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SPA_mapping*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.SPA_mapping* %0, %struct.SPA_mapping** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.SPA_mapping*, %struct.SPA_mapping** %5, align 8
  %12 = getelementptr inbounds %struct.SPA_mapping, %struct.SPA_mapping* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.SPA_mapping*, %struct.SPA_mapping** %5, align 8
  %17 = getelementptr inbounds %struct.SPA_mapping, %struct.SPA_mapping* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ACPI_NFIT_PROXIMITY_VALID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ -1, %28 ]
  %31 = load %struct.SPA_mapping*, %struct.SPA_mapping** %5, align 8
  %32 = getelementptr inbounds %struct.SPA_mapping, %struct.SPA_mapping* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.SPA_mapping*, %struct.SPA_mapping** %5, align 8
  %38 = getelementptr inbounds %struct.SPA_mapping, %struct.SPA_mapping* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  store i64 %36, i64* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.SPA_mapping*, %struct.SPA_mapping** %5, align 8
  %44 = getelementptr inbounds %struct.SPA_mapping, %struct.SPA_mapping* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  store i64 %42, i64* %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.SPA_mapping*, %struct.SPA_mapping** %5, align 8
  %50 = getelementptr inbounds %struct.SPA_mapping, %struct.SPA_mapping* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load i64, i64* @bootverbose, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %29
  %55 = load %struct.SPA_mapping*, %struct.SPA_mapping** %5, align 8
  %56 = getelementptr inbounds %struct.SPA_mapping, %struct.SPA_mapping* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.SPA_mapping*, %struct.SPA_mapping** %5, align 8
  %59 = getelementptr inbounds %struct.SPA_mapping, %struct.SPA_mapping* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.SPA_mapping*, %struct.SPA_mapping** %5, align 8
  %64 = getelementptr inbounds %struct.SPA_mapping, %struct.SPA_mapping* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nvdimm_SPA_uuid_list, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.SPA_mapping*, %struct.SPA_mapping** %5, align 8
  %75 = getelementptr inbounds %struct.SPA_mapping, %struct.SPA_mapping* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %62, i32 %67, i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %54, %29
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @nvdimm_spa_memattr(i32 %82)
  %84 = load %struct.SPA_mapping*, %struct.SPA_mapping** %5, align 8
  %85 = getelementptr inbounds %struct.SPA_mapping, %struct.SPA_mapping* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nvdimm_SPA_uuid_list, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %112

95:                                               ; preds = %79
  %96 = load i32, i32* @M_NVDIMM, align 4
  %97 = load %struct.SPA_mapping*, %struct.SPA_mapping** %5, align 8
  %98 = getelementptr inbounds %struct.SPA_mapping, %struct.SPA_mapping* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @asprintf(i8** %8, i32 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load %struct.SPA_mapping*, %struct.SPA_mapping** %5, align 8
  %102 = getelementptr inbounds %struct.SPA_mapping, %struct.SPA_mapping* %101, i32 0, i32 2
  %103 = load i8*, i8** %8, align 8
  %104 = load %struct.SPA_mapping*, %struct.SPA_mapping** %5, align 8
  %105 = getelementptr inbounds %struct.SPA_mapping, %struct.SPA_mapping* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @nvdimm_spa_dev_init(%struct.TYPE_6__* %102, i8* %103, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* @M_NVDIMM, align 4
  %110 = call i32 @free(i8* %108, i32 %109)
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %95, %94
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nvdimm_spa_memattr(i32) #1

declare dso_local i32 @asprintf(i8**, i32, i8*, i32) #1

declare dso_local i32 @nvdimm_spa_dev_init(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
