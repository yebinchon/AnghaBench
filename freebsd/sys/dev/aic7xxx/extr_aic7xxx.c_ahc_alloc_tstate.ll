; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_alloc_tstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_alloc_tstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_tmode_tstate = type { %struct.TYPE_2__*, i64, %struct.ahc_tmode_tstate* }
%struct.TYPE_2__ = type { %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate }
%struct.ahc_softc = type { i64, i32, %struct.ahc_tmode_tstate** }

@.str = private unnamed_addr constant [48 x i8] c"%s: ahc_alloc_tstate - Target already allocated\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@AHC_NUM_TARGETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ahc_tmode_tstate* (%struct.ahc_softc*, i32, i8)* @ahc_alloc_tstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ahc_tmode_tstate* @ahc_alloc_tstate(%struct.ahc_softc* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca %struct.ahc_tmode_tstate*, align 8
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.ahc_tmode_tstate*, align 8
  %9 = alloca %struct.ahc_tmode_tstate*, align 8
  %10 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %11 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %11, i32 0, i32 2
  %13 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %12, align 8
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %13, i64 %16
  %18 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %17, align 8
  store %struct.ahc_tmode_tstate* %18, %struct.ahc_tmode_tstate** %8, align 8
  %19 = load i8, i8* %7, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 66
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 8
  store i32 %24, i32* %6, align 4
  %25 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %25, i32 0, i32 2
  %27 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %26, align 8
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %29 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %27, i64 %32
  %34 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %33, align 8
  store %struct.ahc_tmode_tstate* %34, %struct.ahc_tmode_tstate** %8, align 8
  br label %35

35:                                               ; preds = %22, %3
  %36 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %37 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %36, i32 0, i32 2
  %38 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %38, i64 %40
  %42 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %41, align 8
  %43 = icmp ne %struct.ahc_tmode_tstate* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %35
  %45 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %46 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %45, i32 0, i32 2
  %47 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %47, i64 %49
  %51 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %50, align 8
  %52 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %8, align 8
  %53 = icmp ne %struct.ahc_tmode_tstate* %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %56 = call i32 @ahc_name(%struct.ahc_softc* %55)
  %57 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %44, %35
  %59 = load i32, i32* @M_DEVBUF, align 4
  %60 = load i32, i32* @M_NOWAIT, align 4
  %61 = call i64 @malloc(i32 24, i32 %59, i32 %60)
  %62 = inttoptr i64 %61 to %struct.ahc_tmode_tstate*
  store %struct.ahc_tmode_tstate* %62, %struct.ahc_tmode_tstate** %9, align 8
  %63 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %9, align 8
  %64 = icmp eq %struct.ahc_tmode_tstate* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store %struct.ahc_tmode_tstate* null, %struct.ahc_tmode_tstate** %4, align 8
  br label %116

66:                                               ; preds = %58
  %67 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %8, align 8
  %68 = icmp ne %struct.ahc_tmode_tstate* %67, null
  br i1 %68, label %69, label %104

69:                                               ; preds = %66
  %70 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %9, align 8
  %71 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %8, align 8
  %72 = call i32 @memcpy(%struct.ahc_tmode_tstate* %70, %struct.ahc_tmode_tstate* %71, i32 24)
  %73 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %9, align 8
  %74 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %73, i32 0, i32 2
  %75 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %74, align 8
  %76 = call i32 @memset(%struct.ahc_tmode_tstate* %75, i32 0, i32 8)
  %77 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %9, align 8
  %78 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %100, %69
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @AHC_NUM_TARGETS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %79
  %84 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %9, align 8
  %85 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = call i32 @memset(%struct.ahc_tmode_tstate* %90, i32 0, i32 24)
  %92 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %9, align 8
  %93 = getelementptr inbounds %struct.ahc_tmode_tstate, %struct.ahc_tmode_tstate* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i32 @memset(%struct.ahc_tmode_tstate* %98, i32 0, i32 24)
  br label %100

100:                                              ; preds = %83
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %79

103:                                              ; preds = %79
  br label %107

104:                                              ; preds = %66
  %105 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %9, align 8
  %106 = call i32 @memset(%struct.ahc_tmode_tstate* %105, i32 0, i32 24)
  br label %107

107:                                              ; preds = %104, %103
  %108 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %9, align 8
  %109 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %110 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %109, i32 0, i32 2
  %111 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %111, i64 %113
  store %struct.ahc_tmode_tstate* %108, %struct.ahc_tmode_tstate** %114, align 8
  %115 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %9, align 8
  store %struct.ahc_tmode_tstate* %115, %struct.ahc_tmode_tstate** %4, align 8
  br label %116

116:                                              ; preds = %107, %65
  %117 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %4, align 8
  ret %struct.ahc_tmode_tstate* %117
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @ahc_name(%struct.ahc_softc*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate*, i32) #1

declare dso_local i32 @memset(%struct.ahc_tmode_tstate*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
