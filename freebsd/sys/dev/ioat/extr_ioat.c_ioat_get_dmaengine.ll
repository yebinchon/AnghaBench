; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_get_dmaengine.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_get_dmaengine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_softc = type { i32, i32, i64, i64 }

@M_NOWAIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid flags: 0x%08x\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid wait | nowait\00", align 1
@ioat_list_mtx = common dso_local global i32 0, align 4
@ioat_channel_index = common dso_local global i64 0, align 8
@ioat_channel = common dso_local global %struct.ioat_softc** null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"getdma\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ioat_get_dmaengine(i64 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ioat_softc*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %7, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @KASSERT(i32 %14, i8* %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = or i32 %24, %25
  %27 = icmp ne i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @mtx_lock(i32* @ioat_list_mtx)
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @ioat_channel_index, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %2
  %35 = load %struct.ioat_softc**, %struct.ioat_softc*** @ioat_channel, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.ioat_softc*, %struct.ioat_softc** %35, i64 %36
  %38 = load %struct.ioat_softc*, %struct.ioat_softc** %37, align 8
  store %struct.ioat_softc* %38, %struct.ioat_softc** %6, align 8
  %39 = icmp eq %struct.ioat_softc* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %2
  %41 = call i32 @mtx_unlock(i32* @ioat_list_mtx)
  store i32* null, i32** %3, align 8
  br label %111

42:                                               ; preds = %34
  %43 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %44 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %43, i32 0, i32 1
  %45 = call i32 @mtx_lock(i32* %44)
  %46 = call i32 @mtx_unlock(i32* @ioat_list_mtx)
  %47 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %48 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %53 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %52, i32 0, i32 1
  %54 = call i32 @mtx_unlock(i32* %53)
  store i32* null, i32** %3, align 8
  br label %111

55:                                               ; preds = %42
  %56 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %57 = call i32 @ioat_get(%struct.ioat_softc* %56)
  %58 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %59 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %105

62:                                               ; preds = %55
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @M_NOWAIT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %69 = call i32 @ioat_put(%struct.ioat_softc* %68)
  %70 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %71 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %70, i32 0, i32 1
  %72 = call i32 @mtx_unlock(i32* %71)
  store i32* null, i32** %3, align 8
  br label %111

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %87, %73
  %75 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %76 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %81 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %79, %74
  %86 = phi i1 [ false, %74 ], [ %84, %79 ]
  br i1 %86, label %87, label %93

87:                                               ; preds = %85
  %88 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %89 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %88, i32 0, i32 3
  %90 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %91 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %90, i32 0, i32 1
  %92 = call i32 @msleep(i64* %89, i32* %91, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %74

93:                                               ; preds = %85
  %94 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %95 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %100 = call i32 @ioat_put(%struct.ioat_softc* %99)
  %101 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %102 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %101, i32 0, i32 1
  %103 = call i32 @mtx_unlock(i32* %102)
  store i32* null, i32** %3, align 8
  br label %111

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %55
  %106 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %107 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %106, i32 0, i32 1
  %108 = call i32 @mtx_unlock(i32* %107)
  %109 = load %struct.ioat_softc*, %struct.ioat_softc** %6, align 8
  %110 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %109, i32 0, i32 0
  store i32* %110, i32** %3, align 8
  br label %111

111:                                              ; preds = %105, %98, %67, %51, %40
  %112 = load i32*, i32** %3, align 8
  ret i32* %112
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ioat_get(%struct.ioat_softc*) #1

declare dso_local i32 @ioat_put(%struct.ioat_softc*) #1

declare dso_local i32 @msleep(i64*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
