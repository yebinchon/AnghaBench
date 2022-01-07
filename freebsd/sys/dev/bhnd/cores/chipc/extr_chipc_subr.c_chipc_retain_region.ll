; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_subr.c_chipc_retain_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_subr.c_chipc_retain_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_softc = type { i32 }
%struct.chipc_region = type { i64, i32, i32, i64, i32*, i32, i32, i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_ALLOCATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unsupported flags\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"non-NULL resource has refcount\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"cannot activate unallocated resource\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chipc_retain_region(%struct.chipc_softc* %0, %struct.chipc_region* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.chipc_softc*, align 8
  %6 = alloca %struct.chipc_region*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.chipc_softc* %0, %struct.chipc_softc** %5, align 8
  store %struct.chipc_region* %1, %struct.chipc_region** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @RF_ACTIVE, align 4
  %11 = load i32, i32* @RF_ALLOCATED, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.chipc_softc*, %struct.chipc_softc** %5, align 8
  %20 = call i32 @CHIPC_LOCK(%struct.chipc_softc* %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @RF_ALLOCATED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %81

25:                                               ; preds = %3
  %26 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %27 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %25
  %31 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %32 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @KASSERT(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %38 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %41 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = icmp eq i32 %39, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load %struct.chipc_softc*, %struct.chipc_softc** %5, align 8
  %45 = call i32 @CHIPC_UNLOCK(%struct.chipc_softc* %44)
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  br label %131

47:                                               ; preds = %30
  %48 = load %struct.chipc_softc*, %struct.chipc_softc** %5, align 8
  %49 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SYS_RES_MEMORY, align 4
  %52 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %53 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %52, i32 0, i32 1
  %54 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %55 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %58 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %61 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @RF_SHAREABLE, align 4
  %64 = call i32* @bhnd_alloc_resource(i32 %50, i32 %51, i32* %53, i32 %56, i32 %59, i32 %62, i32 %63)
  %65 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %66 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %65, i32 0, i32 4
  store i32* %64, i32** %66, align 8
  %67 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %68 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %47
  %72 = load %struct.chipc_softc*, %struct.chipc_softc** %5, align 8
  %73 = call i32 @CHIPC_UNLOCK(%struct.chipc_softc* %72)
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %4, align 4
  br label %131

75:                                               ; preds = %47
  br label %76

76:                                               ; preds = %75, %25
  %77 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %78 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  br label %81

81:                                               ; preds = %76, %3
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @RF_ACTIVE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %128

86:                                               ; preds = %81
  %87 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %88 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @KASSERT(i32 %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %94 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %86
  %98 = load %struct.chipc_softc*, %struct.chipc_softc** %5, align 8
  %99 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SYS_RES_MEMORY, align 4
  %102 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %103 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %106 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @bhnd_activate_resource(i32 %100, i32 %101, i32 %104, i32* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %97
  %112 = load %struct.chipc_softc*, %struct.chipc_softc** %5, align 8
  %113 = call i32 @CHIPC_UNLOCK(%struct.chipc_softc* %112)
  %114 = load %struct.chipc_softc*, %struct.chipc_softc** %5, align 8
  %115 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @RF_ACTIVE, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %116, %118
  %120 = call i32 @chipc_release_region(%struct.chipc_softc* %114, %struct.chipc_region* %115, i32 %119)
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %4, align 4
  br label %131

122:                                              ; preds = %97
  br label %123

123:                                              ; preds = %122, %86
  %124 = load %struct.chipc_region*, %struct.chipc_region** %6, align 8
  %125 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %125, align 8
  br label %128

128:                                              ; preds = %123, %81
  %129 = load %struct.chipc_softc*, %struct.chipc_softc** %5, align 8
  %130 = call i32 @CHIPC_UNLOCK(%struct.chipc_softc* %129)
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %128, %111, %71, %43
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CHIPC_LOCK(%struct.chipc_softc*) #1

declare dso_local i32 @CHIPC_UNLOCK(%struct.chipc_softc*) #1

declare dso_local i32* @bhnd_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bhnd_activate_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @chipc_release_region(%struct.chipc_softc*, %struct.chipc_region*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
