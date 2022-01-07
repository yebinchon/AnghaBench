; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_bind_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_bind_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i32, i32, i32, i32, i64 }
%struct.agp_i810_softc = type { i32*, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 (i32, i32, i64, i32)* }
%struct.TYPE_4__ = type { i32 }

@AGP_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"binding memory at bad offset %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@CHIP_I810 = common dso_local global i64 0, align 8
@AGP_I810_GTT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.agp_memory*, i32)* @agp_i810_bind_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_i810_bind_memory(i32 %0, %struct.agp_memory* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.agp_memory*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.agp_i810_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.agp_memory* %1, %struct.agp_memory** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %18 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %16, %19
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @AGP_GET_APERTURE(i32 %21)
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15, %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %4, align 4
  br label %149

29:                                               ; preds = %15
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.agp_i810_softc* @device_get_softc(i32 %30)
  store %struct.agp_i810_softc* %31, %struct.agp_i810_softc** %8, align 8
  %32 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %33 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %99

36:                                               ; preds = %29
  %37 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %38 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %99

42:                                               ; preds = %36
  %43 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %44 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @mtx_lock(i32* %45)
  %47 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %48 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %53 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @mtx_unlock(i32* %54)
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %4, align 4
  br label %149

57:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %85, %57
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %61 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %58
  %65 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %66 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32 (i32, i32, i64, i32)*, i32 (i32, i32, i64, i32)** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* @AGP_PAGE_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %79 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = call i32 %71(i32 %72, i32 %77, i64 %83, i32 0)
  br label %85

85:                                               ; preds = %64
  %86 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %58

89:                                               ; preds = %58
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %92 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %94 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %96 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = call i32 @mtx_unlock(i32* %97)
  store i32 0, i32* %4, align 4
  br label %149

99:                                               ; preds = %36, %29
  %100 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %101 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @agp_generic_bind_memory(i32 %105, %struct.agp_memory* %106, i32 %107)
  store i32 %108, i32* %4, align 4
  br label %149

109:                                              ; preds = %99
  %110 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %111 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @CHIP_I810, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* @EINVAL, align 4
  store i32 %120, i32* %4, align 4
  br label %149

121:                                              ; preds = %109
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %144, %121
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %125 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %148

128:                                              ; preds = %122
  %129 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %130 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load i64, i64* @AGP_I810_GTT, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @AGP_PAGE_SHIFT, align 4
  %137 = ashr i32 %135, %136
  %138 = mul nsw i32 %137, 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %134, %139
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, 3
  %143 = call i32 @bus_write_4(i32 %133, i64 %140, i32 %142)
  br label %144

144:                                              ; preds = %128
  %145 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %9, align 4
  br label %122

148:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %119, %104, %89, %51, %24
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @AGP_GET_APERTURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @agp_generic_bind_memory(i32, %struct.agp_memory*, i32) #1

declare dso_local i32 @bus_write_4(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
