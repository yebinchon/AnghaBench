; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_free_tstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_free_tstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, %struct.ahc_tmode_tstate** }
%struct.ahc_tmode_tstate = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, i32, i8, i32)* @ahc_free_tstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_free_tstate(%struct.ahc_softc* %0, i32 %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.ahc_tmode_tstate*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  %10 = load i8, i8* %7, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 66
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %16 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %13, %4
  %20 = load i8, i8* %7, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 65
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23, %13
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %62

34:                                               ; preds = %29, %23, %19
  %35 = load i8, i8* %7, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 66
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 8
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %43 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %42, i32 0, i32 2
  %44 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %44, i64 %46
  %48 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %47, align 8
  store %struct.ahc_tmode_tstate* %48, %struct.ahc_tmode_tstate** %9, align 8
  %49 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %9, align 8
  %50 = icmp ne %struct.ahc_tmode_tstate* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %9, align 8
  %53 = load i32, i32* @M_DEVBUF, align 4
  %54 = call i32 @free(%struct.ahc_tmode_tstate* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %41
  %56 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %57 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %56, i32 0, i32 2
  %58 = load %struct.ahc_tmode_tstate**, %struct.ahc_tmode_tstate*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %58, i64 %60
  store %struct.ahc_tmode_tstate* null, %struct.ahc_tmode_tstate** %61, align 8
  br label %62

62:                                               ; preds = %55, %33
  ret void
}

declare dso_local i32 @free(%struct.ahc_tmode_tstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
