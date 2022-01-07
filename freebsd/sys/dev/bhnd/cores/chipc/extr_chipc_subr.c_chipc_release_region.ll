; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_subr.c_chipc_release_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_subr.c_chipc_release_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_softc = type { i32 }
%struct.chipc_region = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"release on NULL region resource\00", align 1
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"RF_ACTIVE over-released\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"RF_ALLOCATED released with RF_ACTIVE held\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ALLOCATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"overrelease of refs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chipc_release_region(%struct.chipc_softc* %0, %struct.chipc_region* %1, i32 %2) #0 {
  %4 = alloca %struct.chipc_softc*, align 8
  %5 = alloca %struct.chipc_region*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.chipc_softc* %0, %struct.chipc_softc** %4, align 8
  store %struct.chipc_region* %1, %struct.chipc_region** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %9 = call i32 @CHIPC_LOCK(%struct.chipc_softc* %8)
  store i32 0, i32* %7, align 4
  %10 = load %struct.chipc_region*, %struct.chipc_region** %5, align 8
  %11 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %3
  %21 = load %struct.chipc_region*, %struct.chipc_region** %5, align 8
  %22 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.chipc_region*, %struct.chipc_region** %5, align 8
  %28 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.chipc_region*, %struct.chipc_region** %5, align 8
  %31 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.chipc_region*, %struct.chipc_region** %5, align 8
  %37 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %56

40:                                               ; preds = %20
  %41 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %42 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SYS_RES_MEMORY, align 4
  %45 = load %struct.chipc_region*, %struct.chipc_region** %5, align 8
  %46 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.chipc_region*, %struct.chipc_region** %5, align 8
  %49 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @bhnd_deactivate_resource(i32 %43, i32 %44, i32 %47, i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %101

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %20
  %57 = load %struct.chipc_region*, %struct.chipc_region** %5, align 8
  %58 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %56, %3
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @RF_ALLOCATED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %100

66:                                               ; preds = %61
  %67 = load %struct.chipc_region*, %struct.chipc_region** %5, align 8
  %68 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @KASSERT(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.chipc_region*, %struct.chipc_region** %5, align 8
  %74 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %95

77:                                               ; preds = %66
  %78 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %79 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SYS_RES_MEMORY, align 4
  %82 = load %struct.chipc_region*, %struct.chipc_region** %5, align 8
  %83 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.chipc_region*, %struct.chipc_region** %5, align 8
  %86 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @bhnd_release_resource(i32 %80, i32 %81, i32 %84, i32* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  br label %101

92:                                               ; preds = %77
  %93 = load %struct.chipc_region*, %struct.chipc_region** %5, align 8
  %94 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %93, i32 0, i32 2
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %92, %66
  %96 = load %struct.chipc_region*, %struct.chipc_region** %5, align 8
  %97 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95, %61
  br label %101

101:                                              ; preds = %100, %91, %54
  %102 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %103 = call i32 @CHIPC_UNLOCK(%struct.chipc_softc* %102)
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @CHIPC_LOCK(%struct.chipc_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_deactivate_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bhnd_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @CHIPC_UNLOCK(%struct.chipc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
