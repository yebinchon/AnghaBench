; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_upload_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_upload_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i64, i64, i32 }

@ETHER_MAX_LEN = common dso_local global i64 0, align 8
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbni_softc*, i64, i64, i64, i32)* @upload_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upload_data(%struct.sbni_softc* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.sbni_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sbni_softc* %0, %struct.sbni_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* %9, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %17 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %19 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %14, %5
  %21 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %22 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %20
  %27 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %28 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @ETHER_MAX_LEN, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @append_frame_to_pkt(%struct.sbni_softc* %35, i64 %36, i32 %37)
  store i32 %38, i32* %11, align 4
  br label %56

39:                                               ; preds = %26
  %40 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @skip_tail(%struct.sbni_softc* %40, i64 %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %47 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %49 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %51 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %54 = call i32 @if_inc_counter(i32 %52, i32 %53, i32 1)
  br label %55

55:                                               ; preds = %45, %39
  br label %56

56:                                               ; preds = %55, %34
  br label %62

57:                                               ; preds = %20
  %58 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @skip_tail(%struct.sbni_softc* %58, i64 %59, i32 %60)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %57, %56
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %70 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.sbni_softc*, %struct.sbni_softc** %6, align 8
  %72 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %75 = call i32 @if_inc_counter(i32 %73, i32 %74, i32 1)
  br label %76

76:                                               ; preds = %68, %65, %62
  %77 = load i32, i32* %11, align 4
  ret i32 %77
}

declare dso_local i32 @append_frame_to_pkt(%struct.sbni_softc*, i64, i32) #1

declare dso_local i32 @skip_tail(%struct.sbni_softc*, i64, i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
