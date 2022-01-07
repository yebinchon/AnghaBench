; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_tx_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_tx_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @mwl_tx_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl_tx_proc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwl_softc*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.mwl_softc*
  store %struct.mwl_softc* %8, %struct.mwl_softc** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %10 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @STAILQ_EMPTY(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %2
  %17 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %18 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %19 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = call i64 @mwl_tx_processq(%struct.mwl_softc* %17, %struct.TYPE_2__* %21)
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %16, %2
  %28 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %29 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @STAILQ_EMPTY(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %27
  %36 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %37 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %38 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 1
  %41 = call i64 @mwl_tx_processq(%struct.mwl_softc* %36, %struct.TYPE_2__* %40)
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %35, %27
  %47 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %48 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @STAILQ_EMPTY(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %46
  %55 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %56 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %57 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 2
  %60 = call i64 @mwl_tx_processq(%struct.mwl_softc* %55, %struct.TYPE_2__* %59)
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %54, %46
  %66 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %67 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 3
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @STAILQ_EMPTY(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %65
  %74 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %75 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %76 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 3
  %79 = call i64 @mwl_tx_processq(%struct.mwl_softc* %74, %struct.TYPE_2__* %78)
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %73, %65
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %89 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %91 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %90, i32 0, i32 1
  %92 = call i32* @mbufq_first(i32* %91)
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %96 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @mwl_hal_txstart(i32 %97, i32 0)
  %99 = load %struct.mwl_softc*, %struct.mwl_softc** %5, align 8
  %100 = call i32 @mwl_start(%struct.mwl_softc* %99)
  br label %101

101:                                              ; preds = %94, %87
  br label %102

102:                                              ; preds = %101, %84
  ret void
}

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i64 @mwl_tx_processq(%struct.mwl_softc*, %struct.TYPE_2__*) #1

declare dso_local i32* @mbufq_first(i32*) #1

declare dso_local i32 @mwl_hal_txstart(i32, i32) #1

declare dso_local i32 @mwl_start(%struct.mwl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
