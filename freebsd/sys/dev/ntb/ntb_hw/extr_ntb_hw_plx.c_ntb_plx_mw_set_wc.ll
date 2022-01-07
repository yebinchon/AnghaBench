; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_mw_set_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_mw_set_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_plx_softc = type { i32, i32, i64, i32, %struct.ntb_plx_mw_info* }
%struct.ntb_plx_mw_info = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"user shouldn't get non-shared b2b mw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ntb_plx_mw_set_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_plx_mw_set_wc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ntb_plx_softc*, align 8
  %9 = alloca %struct.ntb_plx_mw_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.ntb_plx_softc* @device_get_softc(i32 %15)
  store %struct.ntb_plx_softc* %16, %struct.ntb_plx_softc** %8, align 8
  %17 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ntb_plx_user_mw_to_idx(%struct.ntb_plx_softc* %17, i32 %18, i32* %13)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %22 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp uge i32 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %107

27:                                               ; preds = %3
  %28 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %29 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %28, i32 0, i32 4
  %30 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %30, i64 %32
  store %struct.ntb_plx_mw_info* %33, %struct.ntb_plx_mw_info** %9, align 8
  %34 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %9, align 8
  %35 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %107

45:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %48 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %53 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %59 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %51, %45
  %63 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %9, align 8
  %64 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %8, align 8
  %69 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  br label %72

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ %70, %67 ], [ 0, %71 ]
  store i32 %73, i32* %14, align 4
  %74 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %9, align 8
  %75 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub i32 %76, %77
  %79 = load i32, i32* %14, align 4
  %80 = lshr i32 %78, %79
  store i32 %80, i32* %11, align 4
  %81 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %9, align 8
  %82 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %84, %85
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %13, align 4
  %89 = mul i32 %87, %88
  %90 = add i32 %86, %89
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @pmap_change_attr(i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %72
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %9, align 8
  %99 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32 %97, i32* %104, align 4
  br label %105

105:                                              ; preds = %96, %72
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %44, %25
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.ntb_plx_softc* @device_get_softc(i32) #1

declare dso_local i32 @ntb_plx_user_mw_to_idx(%struct.ntb_plx_softc*, i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_change_attr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
