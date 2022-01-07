; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scmouse.c_sc_remove_mouse_image.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scmouse.c_sc_remove_mouse_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i32, i32, i32)* }

@FALSE = common dso_local global i32 0, align 4
@MOUSE_VISIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc_remove_mouse_image(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = call i64 @ISGRAPHSC(%struct.TYPE_8__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %97

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @SC_VIDEO_LOCK(i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 9
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_8__*, i32, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32, i32)** %18, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = call i32 %19(%struct.TYPE_8__* %20, i32 %23, i32 %26, i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @mark_for_update(%struct.TYPE_8__* %32, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @mark_for_update(%struct.TYPE_8__* %35, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @howmany(i32 9, i32 %40)
  %42 = add nsw i32 1, %41
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @imax(i32 %43, i32 2)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = srem i32 %49, %52
  %54 = sub nsw i32 %48, %53
  %55 = call i32 @imin(i32 %45, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @howmany(i32 15, i32 %58)
  %60 = add nsw i32 1, %59
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @imax(i32 %61, i32 2)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %67, %70
  %72 = sub nsw i32 %66, %71
  %73 = call i32 @imin(i32 %63, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %76, 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  %82 = add nsw i32 %75, %81
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %82, %83
  %85 = sub nsw i32 %84, 1
  %86 = call i32 @mark_for_update(%struct.TYPE_8__* %74, i32 %85)
  %87 = load i32, i32* @MOUSE_VISIBLE, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @SC_VIDEO_UNLOCK(i32 %95)
  br label %97

97:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @ISGRAPHSC(%struct.TYPE_8__*) #1

declare dso_local i32 @SC_VIDEO_LOCK(i32) #1

declare dso_local i32 @mark_for_update(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @SC_VIDEO_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
