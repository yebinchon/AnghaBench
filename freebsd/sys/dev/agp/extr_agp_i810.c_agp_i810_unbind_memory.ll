; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_unbind_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_unbind_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i32, i32, i32, i64 }
%struct.agp_i810_softc = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 (i32, i32, i32, i32)* }
%struct.TYPE_4__ = type { i32 }

@AGP_PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@CHIP_I810 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.agp_memory*)* @agp_i810_unbind_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_i810_unbind_memory(i32 %0, %struct.agp_memory* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca %struct.agp_i810_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.agp_memory* %1, %struct.agp_memory** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.agp_i810_softc* @device_get_softc(i32 %8)
  store %struct.agp_i810_softc* %9, %struct.agp_i810_softc** %6, align 8
  %10 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %11 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %70

14:                                               ; preds = %2
  %15 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %16 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %70

20:                                               ; preds = %14
  %21 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %6, align 8
  %22 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %26 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %6, align 8
  %31 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @mtx_unlock(i32* %32)
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %116

35:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %59, %35
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %39 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %36
  %43 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %6, align 8
  %44 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %52 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* @AGP_PAGE_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = call i32 %49(i32 %50, i32 %57, i32 0, i32 0)
  br label %59

59:                                               ; preds = %42
  %60 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %36

63:                                               ; preds = %36
  %64 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %65 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %6, align 8
  %67 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @mtx_unlock(i32* %68)
  store i32 0, i32* %3, align 4
  br label %116

70:                                               ; preds = %14, %2
  %71 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %72 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %78 = call i32 @agp_generic_unbind_memory(i32 %76, %struct.agp_memory* %77)
  store i32 %78, i32* %3, align 4
  br label %116

79:                                               ; preds = %70
  %80 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %6, align 8
  %81 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CHIP_I810, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %3, align 4
  br label %116

91:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %111, %91
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %95 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %92
  %99 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %6, align 8
  %100 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @AGP_PAGE_SHIFT, align 4
  %109 = ashr i32 %107, %108
  %110 = call i32 %105(i32 %106, i32 %109, i32 0, i32 0)
  br label %111

111:                                              ; preds = %98
  %112 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %92

115:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %89, %75, %63, %29
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @agp_generic_unbind_memory(i32, %struct.agp_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
