; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_syscons_isa.c_sc_find_softc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_syscons_isa.c_sc_find_softc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.keyboard*, %struct.video_adapter* }
%struct.keyboard = type { i32 }
%struct.video_adapter = type { i32 }

@main_softc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@sc_devclass = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @sc_find_softc(%struct.video_adapter* %0, %struct.keyboard* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.video_adapter*, align 8
  %5 = alloca %struct.keyboard*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.video_adapter* %0, %struct.video_adapter** %4, align 8
  store %struct.keyboard* %1, %struct.keyboard** %5, align 8
  store %struct.TYPE_5__* @main_softc, %struct.TYPE_5__** %6, align 8
  %9 = load %struct.video_adapter*, %struct.video_adapter** %4, align 8
  %10 = icmp eq %struct.video_adapter* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.video_adapter*, %struct.video_adapter** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.video_adapter*, %struct.video_adapter** %14, align 8
  %16 = icmp eq %struct.video_adapter* %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11, %2
  %18 = load %struct.keyboard*, %struct.keyboard** %5, align 8
  %19 = icmp eq %struct.keyboard* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load %struct.keyboard*, %struct.keyboard** %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.keyboard*, %struct.keyboard** %23, align 8
  %25 = icmp eq %struct.keyboard* %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %17
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %3, align 8
  br label %68

28:                                               ; preds = %20, %11
  %29 = load i32, i32* @sc_devclass, align 4
  %30 = call i32 @devclass_get_maxunit(i32 %29)
  store i32 %30, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %64, %28
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %31
  %36 = load i32, i32* @sc_devclass, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @devclass_get_device(i32 %36, i32 %37)
  %39 = call %struct.TYPE_5__* @device_get_softc(i32 %38)
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %6, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = icmp eq %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %64

43:                                               ; preds = %35
  %44 = load %struct.video_adapter*, %struct.video_adapter** %4, align 8
  %45 = icmp eq %struct.video_adapter* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load %struct.video_adapter*, %struct.video_adapter** %4, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.video_adapter*, %struct.video_adapter** %49, align 8
  %51 = icmp eq %struct.video_adapter* %47, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46, %43
  %53 = load %struct.keyboard*, %struct.keyboard** %5, align 8
  %54 = icmp eq %struct.keyboard* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load %struct.keyboard*, %struct.keyboard** %5, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.keyboard*, %struct.keyboard** %58, align 8
  %60 = icmp eq %struct.keyboard* %56, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55, %52
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %3, align 8
  br label %68

63:                                               ; preds = %55, %46
  br label %64

64:                                               ; preds = %63, %42
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %31

67:                                               ; preds = %31
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %68

68:                                               ; preds = %67, %61, %26
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %69
}

declare dso_local i32 @devclass_get_maxunit(i32) #1

declare dso_local %struct.TYPE_5__* @device_get_softc(i32) #1

declare dso_local i32 @devclass_get_device(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
