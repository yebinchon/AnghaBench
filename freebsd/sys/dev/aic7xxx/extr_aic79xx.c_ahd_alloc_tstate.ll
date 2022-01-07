; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_alloc_tstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_alloc_tstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_tmode_tstate = type { %struct.TYPE_2__*, %struct.ahd_tmode_tstate* }
%struct.TYPE_2__ = type { %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate }
%struct.ahd_softc = type { i64, %struct.ahd_tmode_tstate** }

@.str = private unnamed_addr constant [48 x i8] c"%s: ahd_alloc_tstate - Target already allocated\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ahd_tmode_tstate* (%struct.ahd_softc*, i64, i8)* @ahd_alloc_tstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ahd_tmode_tstate* @ahd_alloc_tstate(%struct.ahd_softc* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca %struct.ahd_tmode_tstate*, align 8
  %5 = alloca %struct.ahd_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.ahd_tmode_tstate*, align 8
  %9 = alloca %struct.ahd_tmode_tstate*, align 8
  %10 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %11, i32 0, i32 1
  %13 = load %struct.ahd_tmode_tstate**, %struct.ahd_tmode_tstate*** %12, align 8
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %13, i64 %16
  %18 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %17, align 8
  store %struct.ahd_tmode_tstate* %18, %struct.ahd_tmode_tstate** %8, align 8
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %19, i32 0, i32 1
  %21 = load %struct.ahd_tmode_tstate**, %struct.ahd_tmode_tstate*** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %21, i64 %22
  %24 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %23, align 8
  %25 = icmp ne %struct.ahd_tmode_tstate* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %28 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %27, i32 0, i32 1
  %29 = load %struct.ahd_tmode_tstate**, %struct.ahd_tmode_tstate*** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %29, i64 %30
  %32 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %31, align 8
  %33 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %8, align 8
  %34 = icmp ne %struct.ahd_tmode_tstate* %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %37 = call i32 @ahd_name(%struct.ahd_softc* %36)
  %38 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %26, %3
  %40 = load i32, i32* @M_DEVBUF, align 4
  %41 = load i32, i32* @M_NOWAIT, align 4
  %42 = call %struct.ahd_tmode_tstate* @malloc(i32 16, i32 %40, i32 %41)
  store %struct.ahd_tmode_tstate* %42, %struct.ahd_tmode_tstate** %9, align 8
  %43 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  %44 = icmp eq %struct.ahd_tmode_tstate* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store %struct.ahd_tmode_tstate* null, %struct.ahd_tmode_tstate** %4, align 8
  br label %92

46:                                               ; preds = %39
  %47 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %8, align 8
  %48 = icmp ne %struct.ahd_tmode_tstate* %47, null
  br i1 %48, label %49, label %81

49:                                               ; preds = %46
  %50 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  %51 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %8, align 8
  %52 = call i32 @memcpy(%struct.ahd_tmode_tstate* %50, %struct.ahd_tmode_tstate* %51, i32 16)
  %53 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  %54 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %53, i32 0, i32 1
  %55 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %54, align 8
  %56 = call i32 @memset(%struct.ahd_tmode_tstate* %55, i32 0, i32 8)
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %77, %49
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 16
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  %62 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = call i32 @memset(%struct.ahd_tmode_tstate* %67, i32 0, i32 16)
  %69 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  %70 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @memset(%struct.ahd_tmode_tstate* %75, i32 0, i32 16)
  br label %77

77:                                               ; preds = %60
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %57

80:                                               ; preds = %57
  br label %84

81:                                               ; preds = %46
  %82 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  %83 = call i32 @memset(%struct.ahd_tmode_tstate* %82, i32 0, i32 16)
  br label %84

84:                                               ; preds = %81, %80
  %85 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  %86 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %87 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %86, i32 0, i32 1
  %88 = load %struct.ahd_tmode_tstate**, %struct.ahd_tmode_tstate*** %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %88, i64 %89
  store %struct.ahd_tmode_tstate* %85, %struct.ahd_tmode_tstate** %90, align 8
  %91 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %9, align 8
  store %struct.ahd_tmode_tstate* %91, %struct.ahd_tmode_tstate** %4, align 8
  br label %92

92:                                               ; preds = %84, %45
  %93 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %4, align 8
  ret %struct.ahd_tmode_tstate* %93
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local %struct.ahd_tmode_tstate* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate*, i32) #1

declare dso_local i32 @memset(%struct.ahd_tmode_tstate*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
