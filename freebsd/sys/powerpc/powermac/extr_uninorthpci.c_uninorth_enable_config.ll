; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorthpci.c_uninorth_enable_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorthpci.c_uninorth_enable_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uninorth_softc = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uninorth_softc*, i32, i32, i32, i32)* @uninorth_enable_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uninorth_enable_config(%struct.uninorth_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uninorth_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uninorth_softc* %0, %struct.uninorth_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.uninorth_softc*, %struct.uninorth_softc** %7, align 8
  %14 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %13, i32 0, i32 4
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @mtx_assert(i32* %14, i32 %15)
  %17 = load %struct.uninorth_softc*, %struct.uninorth_softc** %7, align 8
  %18 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %87

23:                                               ; preds = %5
  %24 = load %struct.uninorth_softc*, %struct.uninorth_softc** %7, align 8
  %25 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %23
  %31 = load %struct.uninorth_softc*, %struct.uninorth_softc** %7, align 8
  %32 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 11
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %87

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* %10, align 4
  %43 = shl i32 %42, 8
  %44 = or i32 %41, %43
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 252
  %47 = or i32 %44, %46
  store i32 %47, i32* %12, align 4
  br label %61

48:                                               ; preds = %30, %23
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 %49, 16
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %51, 11
  %53 = or i32 %50, %52
  %54 = load i32, i32* %10, align 4
  %55 = shl i32 %54, 8
  %56 = or i32 %53, %55
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, 252
  %59 = or i32 %56, %58
  %60 = or i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %48, %39
  %62 = load %struct.uninorth_softc*, %struct.uninorth_softc** %7, align 8
  %63 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  %68 = ashr i32 %67, 8
  %69 = shl i32 %68, 28
  %70 = load i32, i32* %12, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %66, %61
  br label %73

73:                                               ; preds = %79, %72
  %74 = load %struct.uninorth_softc*, %struct.uninorth_softc** %7, align 8
  %75 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @out32rb(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73
  %80 = load %struct.uninorth_softc*, %struct.uninorth_softc** %7, align 8
  %81 = getelementptr inbounds %struct.uninorth_softc, %struct.uninorth_softc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @in32rb(i32 %82)
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %73, label %86

86:                                               ; preds = %79
  store i32 1, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %38, %22
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @out32rb(i32, i32) #1

declare dso_local i32 @in32rb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
