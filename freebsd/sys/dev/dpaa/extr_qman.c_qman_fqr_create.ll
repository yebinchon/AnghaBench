; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_qman.c_qman_fqr_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_qman.c_qman_fqr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_softc = type { i8**, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i8*, i8*, i32, i32, i64, i64, i8*, i32*, i32 }
%struct.TYPE_10__ = type { i8*, i64, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@qman_sc = common dso_local global %struct.qman_softc* null, align 8
@cpuid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not setup QMan portal\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"could not create Frame Queue Range\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @qman_fqr_create(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9, i64 %10, i8* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.qman_softc*, align 8
  %27 = alloca %struct.TYPE_11__, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  store i8* %0, i8** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i8* %4, i8** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32* %9, i32** %23, align 8
  store i64 %10, i64* %24, align 8
  store i8* %11, i8** %25, align 8
  %31 = load %struct.qman_softc*, %struct.qman_softc** @qman_sc, align 8
  store %struct.qman_softc* %31, %struct.qman_softc** %26, align 8
  %32 = call i32 (...) @sched_pin()
  %33 = load i32, i32* @cpuid, align 4
  %34 = call i8* @PCPU_GET(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %28, align 4
  %36 = load %struct.qman_softc*, %struct.qman_softc** %26, align 8
  %37 = call i32* @qman_portal_setup(%struct.qman_softc* %36)
  store i32* %37, i32** %30, align 8
  %38 = load i32*, i32** %30, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %12
  %41 = load %struct.qman_softc*, %struct.qman_softc** %26, align 8
  %42 = getelementptr inbounds %struct.qman_softc, %struct.qman_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %126

45:                                               ; preds = %12
  %46 = load %struct.qman_softc*, %struct.qman_softc** %26, align 8
  %47 = getelementptr inbounds %struct.qman_softc, %struct.qman_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 15
  store i32 %48, i32* %49, align 8
  %50 = load i32*, i32** %30, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 14
  store i32* %50, i32** %51, align 8
  %52 = load i32, i32* %19, align 4
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* %20, align 4
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %21, align 4
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  %58 = load i8*, i8** @FALSE, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 13
  store i8* %58, i8** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 12
  store i64 0, i64* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 11
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* %15, align 4
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 10
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %16, align 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 9
  store i32 %64, i32* %65, align 8
  %66 = load i8*, i8** @FALSE, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 8
  store i8* %66, i8** %67, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 7
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* %17, align 4
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %45
  %75 = load i8*, i8** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  br label %84

79:                                               ; preds = %45
  %80 = load i8*, i8** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i8* %80, i8** %83, align 8
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %22, align 4
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 4
  store i32 %85, i32* %86, align 8
  %87 = load i32, i32* %22, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i32*, i32** %23, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  %93 = load i64, i64* %24, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i8*, i8** %25, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %106

99:                                               ; preds = %84
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  store i32* null, i32** %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i8* null, i8** %105, align 8
  br label %106

106:                                              ; preds = %99, %89
  %107 = call i32* @QM_FQR_Create(%struct.TYPE_11__* %27)
  store i32* %107, i32** %29, align 8
  %108 = load i32*, i32** %29, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.qman_softc*, %struct.qman_softc** %26, align 8
  %112 = getelementptr inbounds %struct.qman_softc, %struct.qman_softc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @device_printf(i32 %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %126

115:                                              ; preds = %106
  %116 = load i32, i32* @cpuid, align 4
  %117 = call i8* @PCPU_GET(i32 %116)
  %118 = load %struct.qman_softc*, %struct.qman_softc** %26, align 8
  %119 = getelementptr inbounds %struct.qman_softc, %struct.qman_softc* %118, i32 0, i32 0
  %120 = load i8**, i8*** %119, align 8
  %121 = load i32*, i32** %29, align 8
  %122 = call i64 @QM_FQR_GetFqid(i32* %121)
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  store i8* %117, i8** %123, align 8
  %124 = call i32 (...) @sched_unpin()
  %125 = load i32*, i32** %29, align 8
  store i32* %125, i32** %13, align 8
  br label %128

126:                                              ; preds = %110, %40
  %127 = call i32 (...) @sched_unpin()
  store i32* null, i32** %13, align 8
  br label %128

128:                                              ; preds = %126, %115
  %129 = load i32*, i32** %13, align 8
  ret i32* %129
}

declare dso_local i32 @sched_pin(...) #1

declare dso_local i8* @PCPU_GET(i32) #1

declare dso_local i32* @qman_portal_setup(%struct.qman_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @QM_FQR_Create(%struct.TYPE_11__*) #1

declare dso_local i64 @QM_FQR_GetFqid(i32*) #1

declare dso_local i32 @sched_unpin(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
