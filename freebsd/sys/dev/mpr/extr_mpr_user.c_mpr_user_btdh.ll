; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_user_btdh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_user_btdh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MPR_XINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Target ID is out of range for Bus/Target to DevHandle mapping.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_softc*, %struct.TYPE_5__*)* @mpr_user_btdh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpr_user_btdh(%struct.mpr_softc* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpr_softc*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 65535
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 65535
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 65535
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64, i64* @TRUE, align 8
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %30, %27, %24, %2
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 65535
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 65535
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 65535
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %41, %38, %35, %32
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %3, align 4
  br label %97

51:                                               ; preds = %46, %43
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %3, align 4
  br label %97

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %62 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %67 = load i32, i32* @MPR_XINFO, align 4
  %68 = call i32 @mpr_dprint(%struct.mpr_softc* %66, i32 %67, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %3, align 4
  br label %97

70:                                               ; preds = %59
  %71 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %72 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %70
  br label %96

86:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  %87 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @mpr_mapping_get_tid_from_handle(%struct.mpr_softc* %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %86, %85
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %65, %57, %49
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @mpr_dprint(%struct.mpr_softc*, i32, i8*) #1

declare dso_local i32 @mpr_mapping_get_tid_from_handle(%struct.mpr_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
