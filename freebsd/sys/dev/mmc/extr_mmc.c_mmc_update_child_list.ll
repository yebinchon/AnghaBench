; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_update_child_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_update_child_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32, i32** }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_softc*)* @mmc_update_child_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_update_child_list(%struct.mmc_softc* %0) #0 {
  %2 = alloca %struct.mmc_softc*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mmc_softc* %0, %struct.mmc_softc** %2, align 8
  %6 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %11, i32 0, i32 1
  %13 = load i32**, i32*** %12, align 8
  %14 = load i32, i32* @M_DEVBUF, align 4
  %15 = call i32 @free(i32** %13, i32 %14)
  br label %68

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %50, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %36, %23
  %25 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %26 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32*, i32** %27, i64 %30
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %3, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %37

36:                                               ; preds = %24
  br label %24

37:                                               ; preds = %35
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %44 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  store i32* %42, i32** %48, align 8
  br label %49

49:                                               ; preds = %41, %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %17

53:                                               ; preds = %17
  %54 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %55 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %58 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = mul i64 8, %60
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @M_DEVBUF, align 4
  %64 = load i32, i32* @M_WAITOK, align 4
  %65 = call i32** @realloc(i32** %56, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %67 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %66, i32 0, i32 1
  store i32** %65, i32*** %67, align 8
  br label %68

68:                                               ; preds = %53, %10
  ret void
}

declare dso_local i32 @free(i32**, i32) #1

declare dso_local i32** @realloc(i32**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
