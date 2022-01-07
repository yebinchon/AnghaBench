; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_mem_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_mem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exca_softc = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.resource = type { i32 }

@EXCA_MEM_WINS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EXCA_HAS_MEMREG_WIN = common dso_local global i32 0, align 4
@EXCA_MEMREG_WIN_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Does not support mapping above 4GB.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Does not support mapping above 16M.\00", align 1
@EXCA_MEM_PAGESIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"exca_mem_map window %d bus %x+%x card addr %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exca_mem_map(%struct.exca_softc* %0, i32 %1, %struct.resource* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.exca_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.exca_softc* %0, %struct.exca_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.resource* %2, %struct.resource** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %29, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @EXCA_MEM_WINS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %15 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 1, %22
  %24 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %25 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %32

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %9

32:                                               ; preds = %21, %9
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @EXCA_MEM_WINS, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @ENOSPC, align 4
  store i32 %37, i32* %4, align 4
  br label %209

38:                                               ; preds = %32
  %39 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %40 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EXCA_HAS_MEMREG_WIN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %38
  %46 = load %struct.resource*, %struct.resource** %7, align 8
  %47 = call i32 @rman_get_start(%struct.resource* %46)
  %48 = load i64, i64* @EXCA_MEMREG_WIN_SHIFT, align 8
  %49 = add nsw i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = ashr i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %55 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %4, align 4
  br label %209

59:                                               ; preds = %45
  br label %74

60:                                               ; preds = %38
  %61 = load %struct.resource*, %struct.resource** %7, align 8
  %62 = call i32 @rman_get_start(%struct.resource* %61)
  %63 = load i64, i64* @EXCA_MEMREG_WIN_SHIFT, align 8
  %64 = trunc i64 %63 to i32
  %65 = ashr i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %69 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %4, align 4
  br label %209

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %59
  %75 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %76 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load %struct.resource*, %struct.resource** %7, align 8
  %83 = call i32 @rman_get_bustag(%struct.resource* %82)
  %84 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %85 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 6
  store i32 %83, i32* %90, align 4
  %91 = load %struct.resource*, %struct.resource** %7, align 8
  %92 = call i32 @rman_get_bushandle(%struct.resource* %91)
  %93 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %94 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 5
  store i32 %92, i32* %99, align 8
  %100 = load %struct.resource*, %struct.resource** %7, align 8
  %101 = call i32 @rman_get_start(%struct.resource* %100)
  %102 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %103 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 %101, i32* %108, align 8
  %109 = load %struct.resource*, %struct.resource** %7, align 8
  %110 = call i32 @rman_get_end(%struct.resource* %109)
  %111 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %112 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %110, %118
  %120 = add nsw i32 %119, 1
  %121 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %122 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i32 %120, i32* %127, align 4
  %128 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %129 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %128, i32 0, i32 2
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @EXCA_MEM_PAGESIZE, align 4
  %137 = add nsw i32 %135, %136
  %138 = sub nsw i32 %137, 1
  %139 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %140 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  store i32 %138, i32* %145, align 8
  %146 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %147 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %146, i32 0, i32 2
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %155 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %154, i32 0, i32 2
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @EXCA_MEM_PAGESIZE, align 4
  %163 = srem i32 %161, %162
  %164 = sub nsw i32 %153, %163
  %165 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %166 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %165, i32 0, i32 2
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  store i32 %164, i32* %171, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %174 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %173, i32 0, i32 2
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 3
  store i32 %172, i32* %179, align 4
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %182 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %181, i32 0, i32 2
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %190 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %189, i32 0, i32 2
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %198 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %197, i32 0, i32 2
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @DPRINTF(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %180, i32 %188, i32 %196, i64 %204)
  %206 = load %struct.exca_softc*, %struct.exca_softc** %5, align 8
  %207 = load i32, i32* %8, align 4
  %208 = call i32 @exca_do_mem_map(%struct.exca_softc* %206, i32 %207)
  store i32 0, i32* %4, align 4
  br label %209

209:                                              ; preds = %74, %67, %53, %36
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @rman_get_end(%struct.resource*) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @exca_do_mem_map(%struct.exca_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
