; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_change_algo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_change_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_provider = type { %struct.g_geom* }
%struct.g_geom = type { %struct.g_sched_softc* }
%struct.g_sched_softc = type { i32, %struct.g_hash*, i8*, %struct.g_gsched* }
%struct.g_hash = type { i32 }
%struct.g_gsched = type { i32 (i8*)*, i64, i8* (%struct.g_geom*)* }

@ENOMEM = common dso_local global i32 0, align 4
@HASH_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gctl_req*, %struct.g_class*, %struct.g_provider*, %struct.g_gsched*)* @g_sched_change_algo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_sched_change_algo(%struct.gctl_req* %0, %struct.g_class* %1, %struct.g_provider* %2, %struct.g_gsched* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gctl_req*, align 8
  %7 = alloca %struct.g_class*, align 8
  %8 = alloca %struct.g_provider*, align 8
  %9 = alloca %struct.g_gsched*, align 8
  %10 = alloca %struct.g_sched_softc*, align 8
  %11 = alloca %struct.g_geom*, align 8
  %12 = alloca %struct.g_hash*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %6, align 8
  store %struct.g_class* %1, %struct.g_class** %7, align 8
  store %struct.g_provider* %2, %struct.g_provider** %8, align 8
  store %struct.g_gsched* %3, %struct.g_gsched** %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %17 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %16, i32 0, i32 0
  %18 = load %struct.g_geom*, %struct.g_geom** %17, align 8
  store %struct.g_geom* %18, %struct.g_geom** %11, align 8
  %19 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %20 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %19, i32 0, i32 0
  %21 = load %struct.g_sched_softc*, %struct.g_sched_softc** %20, align 8
  store %struct.g_sched_softc* %21, %struct.g_sched_softc** %10, align 8
  %22 = load %struct.g_gsched*, %struct.g_gsched** %9, align 8
  %23 = getelementptr inbounds %struct.g_gsched, %struct.g_gsched* %22, i32 0, i32 2
  %24 = load i8* (%struct.g_geom*)*, i8* (%struct.g_geom*)** %23, align 8
  %25 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %26 = call i8* %24(%struct.g_geom* %25)
  store i8* %26, i8** %13, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %5, align 4
  br label %101

31:                                               ; preds = %4
  %32 = load %struct.g_gsched*, %struct.g_gsched** %9, align 8
  %33 = load i32, i32* @HASH_WAITOK, align 4
  %34 = call %struct.g_hash* @g_sched_hash_init(%struct.g_gsched* %32, i32* %14, i32 %33)
  store %struct.g_hash* %34, %struct.g_hash** %12, align 8
  %35 = load %struct.g_gsched*, %struct.g_gsched** %9, align 8
  %36 = getelementptr inbounds %struct.g_gsched, %struct.g_gsched* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.g_hash*, %struct.g_hash** %12, align 8
  %41 = icmp ne %struct.g_hash* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %15, align 4
  br label %78

44:                                               ; preds = %39, %31
  %45 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %46 = call i32 @g_sched_lock(%struct.g_geom* %45)
  %47 = load %struct.g_sched_softc*, %struct.g_sched_softc** %10, align 8
  %48 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %47, i32 0, i32 3
  %49 = load %struct.g_gsched*, %struct.g_gsched** %48, align 8
  %50 = icmp ne %struct.g_gsched* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %53 = load %struct.g_sched_softc*, %struct.g_sched_softc** %10, align 8
  %54 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %53, i32 0, i32 3
  %55 = load %struct.g_gsched*, %struct.g_gsched** %54, align 8
  %56 = call i32 @g_sched_remove_locked(%struct.g_geom* %52, %struct.g_gsched* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %78

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %44
  %62 = load %struct.g_gsched*, %struct.g_gsched** %9, align 8
  %63 = call i32 @g_gsched_ref(%struct.g_gsched* %62)
  %64 = load %struct.g_gsched*, %struct.g_gsched** %9, align 8
  %65 = load %struct.g_sched_softc*, %struct.g_sched_softc** %10, align 8
  %66 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %65, i32 0, i32 3
  store %struct.g_gsched* %64, %struct.g_gsched** %66, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load %struct.g_sched_softc*, %struct.g_sched_softc** %10, align 8
  %69 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.g_hash*, %struct.g_hash** %12, align 8
  %71 = load %struct.g_sched_softc*, %struct.g_sched_softc** %10, align 8
  %72 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %71, i32 0, i32 1
  store %struct.g_hash* %70, %struct.g_hash** %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.g_sched_softc*, %struct.g_sched_softc** %10, align 8
  %75 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %77 = call i32 @g_sched_unlock(%struct.g_geom* %76)
  store i32 0, i32* %5, align 4
  br label %101

78:                                               ; preds = %59, %42
  %79 = load %struct.g_hash*, %struct.g_hash** %12, align 8
  %80 = icmp ne %struct.g_hash* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %83 = load %struct.g_hash*, %struct.g_hash** %12, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.g_gsched*, %struct.g_gsched** %9, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = call i32 @g_sched_hash_fini(%struct.g_geom* %82, %struct.g_hash* %83, i32 %84, %struct.g_gsched* %85, i8* %86)
  br label %88

88:                                               ; preds = %81, %78
  %89 = load i8*, i8** %13, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load %struct.g_gsched*, %struct.g_gsched** %9, align 8
  %93 = getelementptr inbounds %struct.g_gsched, %struct.g_gsched* %92, i32 0, i32 0
  %94 = load i32 (i8*)*, i32 (i8*)** %93, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = call i32 %94(i8* %95)
  br label %97

97:                                               ; preds = %91, %88
  %98 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %99 = call i32 @g_sched_unlock(%struct.g_geom* %98)
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %61, %29
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.g_hash* @g_sched_hash_init(%struct.g_gsched*, i32*, i32) #1

declare dso_local i32 @g_sched_lock(%struct.g_geom*) #1

declare dso_local i32 @g_sched_remove_locked(%struct.g_geom*, %struct.g_gsched*) #1

declare dso_local i32 @g_gsched_ref(%struct.g_gsched*) #1

declare dso_local i32 @g_sched_unlock(%struct.g_geom*) #1

declare dso_local i32 @g_sched_hash_fini(%struct.g_geom*, %struct.g_hash*, i32, %struct.g_gsched*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
