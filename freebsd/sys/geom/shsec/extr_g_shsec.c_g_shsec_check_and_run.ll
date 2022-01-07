; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/shsec/extr_g_shsec.c_g_shsec_check_and_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/shsec/extr_g_shsec.c_g_shsec_check_and_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_shsec_softc = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__**, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"shsec/%s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Device %s activated.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_shsec_softc*)* @g_shsec_check_and_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_shsec_check_and_run(%struct.g_shsec_softc* %0) #0 {
  %2 = alloca %struct.g_shsec_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.g_shsec_softc* %0, %struct.g_shsec_softc** %2, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %8 = call i64 @g_shsec_nvalid(%struct.g_shsec_softc* %7)
  %9 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %10 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %122

14:                                               ; preds = %1
  %15 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %16 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %19 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_7__* @g_new_providerf(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %23 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %22, i32 0, i32 2
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %23, align 8
  %24 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %25 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %3, align 8
  %33 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %34 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %35, i64 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* %3, align 8
  %44 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %45 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %6, align 8
  store i64 1, i64* %5, align 8
  br label %53

53:                                               ; preds = %100, %14
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %56 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %103

59:                                               ; preds = %53
  %60 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %61 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %60, i32 0, i32 3
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %62, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %4, align 8
  %70 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %71 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %4, align 8
  %81 = sub nsw i64 %80, %79
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* %3, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %59
  %86 = load i64, i64* %4, align 8
  store i64 %86, i64* %3, align 8
  br label %87

87:                                               ; preds = %85, %59
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %90 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %89, i32 0, i32 3
  %91 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %91, i64 %92
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @lcm(i64 %88, i64 %98)
  store i64 %99, i64* %6, align 8
  br label %100

100:                                              ; preds = %87
  %101 = load i64, i64* %5, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %5, align 8
  br label %53

103:                                              ; preds = %53
  %104 = load i64, i64* %6, align 8
  %105 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %106 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %105, i32 0, i32 2
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i64 %104, i64* %108, align 8
  %109 = load i64, i64* %3, align 8
  %110 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %111 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %110, i32 0, i32 2
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i64 %109, i64* %113, align 8
  %114 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %115 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %114, i32 0, i32 2
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = call i32 @g_error_provider(%struct.TYPE_7__* %116, i32 0)
  %118 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %2, align 8
  %119 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @G_SHSEC_DEBUG(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %103, %13
  ret void
}

declare dso_local i64 @g_shsec_nvalid(%struct.g_shsec_softc*) #1

declare dso_local %struct.TYPE_7__* @g_new_providerf(i32, i8*, i32) #1

declare dso_local i64 @lcm(i64, i64) #1

declare dso_local i32 @g_error_provider(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @G_SHSEC_DEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
