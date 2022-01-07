; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_set_initial_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_set_initial_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i64, i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sbni_flags = type { i64, i32, i32, i64, i64 }

@DEF_RXL_DELTA = common dso_local global i64 0, align 8
@DEF_RXL = common dso_local global i64 0, align 8
@DEFAULT_RATE = common dso_local global i32 0, align 4
@rxl_tab = common dso_local global i32* null, align 8
@DEFAULT_FRAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbni_softc*, %struct.sbni_flags*)* @set_initial_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_initial_values(%struct.sbni_softc* %0, %struct.sbni_flags* byval(%struct.sbni_flags) align 8 %1) #0 {
  %3 = alloca %struct.sbni_softc*, align 8
  store %struct.sbni_softc* %0, %struct.sbni_softc** %3, align 8
  %4 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %1, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %9 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %1, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %13 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  br label %21

14:                                               ; preds = %2
  %15 = load i64, i64* @DEF_RXL_DELTA, align 8
  %16 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %17 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %16, i32 0, i32 4
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* @DEF_RXL, align 8
  %19 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %20 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %14, %7
  %22 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %1, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %1, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @DEFAULT_RATE, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ]
  %32 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %33 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32*, i32** @rxl_tab, align 8
  %36 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %37 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %42 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @DEFAULT_FRAME_LEN, align 4
  %45 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %46 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = call i32 @htons(i32 255)
  %48 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %49 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  store i32 %47, i32* %51, align 4
  %52 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %1, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %30
  %56 = getelementptr inbounds %struct.sbni_flags, %struct.sbni_flags* %1, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, 16777216
  %59 = call i32 @htonl(i32 %58)
  %60 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %61 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 2
  %64 = inttoptr i64 %63 to i32*
  store i32 %59, i32* %64, align 4
  br label %76

65:                                               ; preds = %30
  %66 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %67 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 2
  %70 = inttoptr i64 %69 to i32*
  store i32 1, i32* %70, align 4
  %71 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %72 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 3
  %75 = call i32 @read_random(i64 %74, i32 3)
  br label %76

76:                                               ; preds = %65, %55
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @read_random(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
