; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_kmouse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_kmouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { i32 }

@enable_kmouse.rate = internal global [9 x i32] [i32 20, i32 60, i32 40, i32 20, i32 20, i32 60, i32 40, i32 20, i32 20], align 16
@FALSE = common dso_local global i32 0, align 4
@PSMD_RES_LOW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psm_softc*, i32)* @enable_kmouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_kmouse(%struct.psm_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.psm_softc* %0, %struct.psm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %12 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @get_aux_id(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @set_mouse_sampling_rate(i32 %16, i32 10)
  %18 = icmp ne i32 %17, 10
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %92

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @get_aux_id(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %21
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %92

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PSMD_RES_LOW, align 4
  %35 = call i32 @set_mouse_resolution(i32 %33, i32 %34)
  %36 = load i32, i32* @PSMD_RES_LOW, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %3, align 4
  br label %92

40:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %60, %40
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @nitems(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @enable_kmouse.rate, i64 0, i64 0))
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [9 x i32], [9 x i32]* @enable_kmouse.rate, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @set_mouse_sampling_rate(i32 %46, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [9 x i32], [9 x i32]* @enable_kmouse.rate, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %51, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %3, align 4
  br label %92

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %41

63:                                               ; preds = %41
  %64 = load i32, i32* %6, align 4
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %66 = call i32 @get_mouse_status(i32 %64, i32* %65, i32 0, i32 3)
  %67 = icmp slt i32 %66, 3
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %3, align 4
  br label %92

70:                                               ; preds = %63
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PSMD_RES_LOW, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %84, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [9 x i32], [9 x i32]* @enable_kmouse.rate, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %77, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %75, %70
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %3, align 4
  br label %92

86:                                               ; preds = %75
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @disable_aux_dev(i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @empty_aux_buffer(i32 %89, i32 5)
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %86, %84, %68, %57, %38, %30, %19
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @get_aux_id(i32) #1

declare dso_local i32 @set_mouse_sampling_rate(i32, i32) #1

declare dso_local i32 @set_mouse_resolution(i32, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @get_mouse_status(i32, i32*, i32, i32) #1

declare dso_local i32 @disable_aux_dev(i32) #1

declare dso_local i32 @empty_aux_buffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
