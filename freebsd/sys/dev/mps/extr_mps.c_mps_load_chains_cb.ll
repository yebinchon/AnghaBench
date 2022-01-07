; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_load_chains_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_load_chains_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.mps_softc = type { i64, i32, i64, %struct.mps_chain* }
%struct.mps_chain = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*, i32, i32)* @mps_load_chains_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps_load_chains_cb(i8* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mps_softc*, align 8
  %10 = alloca %struct.mps_chain*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.mps_softc*
  store %struct.mps_softc* %16, %struct.mps_softc** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %112

20:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %105, %20
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %108

25:                                               ; preds = %21
  store i64 0, i64* %11, align 8
  br label %26

26:                                               ; preds = %76, %25
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.mps_softc*, %struct.mps_softc** %9, align 8
  %29 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %31, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %26
  %40 = load %struct.mps_softc*, %struct.mps_softc** %9, align 8
  %41 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %40, i32 0, i32 3
  %42 = load %struct.mps_chain*, %struct.mps_chain** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds %struct.mps_chain, %struct.mps_chain* %42, i64 %45
  store %struct.mps_chain* %46, %struct.mps_chain** %10, align 8
  %47 = load %struct.mps_softc*, %struct.mps_softc** %9, align 8
  %48 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = inttoptr i64 %52 to i32*
  %54 = load %struct.mps_chain*, %struct.mps_chain** %10, align 8
  %55 = getelementptr inbounds %struct.mps_chain, %struct.mps_chain* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add nsw i64 %61, %62
  %64 = load %struct.mps_chain*, %struct.mps_chain** %10, align 8
  %65 = getelementptr inbounds %struct.mps_chain, %struct.mps_chain* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.mps_softc*, %struct.mps_softc** %9, align 8
  %67 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load %struct.mps_softc*, %struct.mps_softc** %9, align 8
  %74 = load %struct.mps_chain*, %struct.mps_chain** %10, align 8
  %75 = call i32 @mps_free_chain(%struct.mps_softc* %73, %struct.mps_chain* %74)
  br label %76

76:                                               ; preds = %39
  %77 = load %struct.mps_softc*, %struct.mps_softc** %9, align 8
  %78 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %11, align 8
  br label %26

82:                                               ; preds = %26
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %83, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %82
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = sub nsw i64 %97, %98
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %91, %82
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %21

108:                                              ; preds = %21
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.mps_softc*, %struct.mps_softc** %9, align 8
  %111 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %108, %19
  ret void
}

declare dso_local i32 @mps_free_chain(%struct.mps_softc*, %struct.mps_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
