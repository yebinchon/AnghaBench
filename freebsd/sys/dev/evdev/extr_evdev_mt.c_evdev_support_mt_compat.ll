; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev_mt.c_evdev_support_mt_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev_mt.c_evdev_support_mt_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i64 0, align 8
@evdev_mtstmap = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evdev_support_mt_compat(%struct.evdev_dev* %0) #0 {
  %2 = alloca %struct.evdev_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.evdev_dev* %0, %struct.evdev_dev** %2, align 8
  %4 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %5 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp eq %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %131

9:                                                ; preds = %1
  %10 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %11 = load i32, i32* @EV_KEY, align 4
  %12 = call i32 @evdev_support_event(%struct.evdev_dev* %10, i32 %11)
  %13 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %14 = load i32, i32* @BTN_TOUCH, align 4
  %15 = call i32 @evdev_support_key(%struct.evdev_dev* %13, i32 %14)
  %16 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %17 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* @INPUT_PROP_DIRECT, align 8
  %20 = call i64 @bit_test(i32 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %9
  %23 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %24 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %25 = call i64 @MAXIMAL_MT_SLOT(%struct.evdev_dev* %24)
  %26 = add nsw i64 %25, 1
  %27 = call i32 @evdev_support_nfingers(%struct.evdev_dev* %23, i64 %26)
  br label %28

28:                                               ; preds = %22, %9
  store i64 0, i64* %3, align 8
  br label %29

29:                                               ; preds = %128, %28
  %30 = load i64, i64* %3, align 8
  %31 = load i64**, i64*** @evdev_mtstmap, align 8
  %32 = call i64 @nitems(i64** %31)
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %131

34:                                               ; preds = %29
  %35 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %36 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64**, i64*** @evdev_mtstmap, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds i64*, i64** %38, i64 %39
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @bit_test(i32 %37, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %127

46:                                               ; preds = %34
  %47 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %48 = load i64**, i64*** @evdev_mtstmap, align 8
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds i64*, i64** %48, i64 %49
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %55 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64**, i64*** @evdev_mtstmap, align 8
  %58 = load i64, i64* %3, align 8
  %59 = getelementptr inbounds i64*, i64** %57, i64 %58
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %67 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64**, i64*** @evdev_mtstmap, align 8
  %70 = load i64, i64* %3, align 8
  %71 = getelementptr inbounds i64*, i64** %69, i64 %70
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %79 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i64**, i64*** @evdev_mtstmap, align 8
  %82 = load i64, i64* %3, align 8
  %83 = getelementptr inbounds i64*, i64** %81, i64 %82
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %91 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i64**, i64*** @evdev_mtstmap, align 8
  %94 = load i64, i64* %3, align 8
  %95 = getelementptr inbounds i64*, i64** %93, i64 %94
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %103 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i64**, i64*** @evdev_mtstmap, align 8
  %106 = load i64, i64* %3, align 8
  %107 = getelementptr inbounds i64*, i64** %105, i64 %106
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %115 = getelementptr inbounds %struct.evdev_dev, %struct.evdev_dev* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i64**, i64*** @evdev_mtstmap, align 8
  %118 = load i64, i64* %3, align 8
  %119 = getelementptr inbounds i64*, i64** %117, i64 %118
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @evdev_support_abs(%struct.evdev_dev* %47, i64 %53, i32 %65, i32 %77, i32 %89, i32 %101, i32 %113, i32 %125)
  br label %127

127:                                              ; preds = %46, %34
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %3, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %3, align 8
  br label %29

131:                                              ; preds = %8, %29
  ret void
}

declare dso_local i32 @evdev_support_event(%struct.evdev_dev*, i32) #1

declare dso_local i32 @evdev_support_key(%struct.evdev_dev*, i32) #1

declare dso_local i64 @bit_test(i32, i64) #1

declare dso_local i32 @evdev_support_nfingers(%struct.evdev_dev*, i64) #1

declare dso_local i64 @MAXIMAL_MT_SLOT(%struct.evdev_dev*) #1

declare dso_local i64 @nitems(i64**) #1

declare dso_local i32 @evdev_support_abs(%struct.evdev_dev*, i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
