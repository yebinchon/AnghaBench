; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_init_emulator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_init_emulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i8*, %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_19__*)* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_19__*, i8**, i32)*, i64, i32 (%struct.TYPE_19__*, i32, i32)*, i32 (%struct.TYPE_19__*, i8**)*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@GRAPHICS_MODE = common dso_local global i32 0, align 4
@PIXEL_MODE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SC_TE_WARM_INIT = common dso_local global i32 0, align 4
@sc_malloc = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@SC_TE_COLD_INIT = common dso_local global i32 0, align 4
@SC_NORM_ATTR = common dso_local global i32 0, align 4
@SC_NORM_REV_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sc_init_emulator(%struct.TYPE_19__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %6, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.TYPE_20__* @sc_term_match(i8* %17)
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %6, align 8
  br label %19

19:                                               ; preds = %16, %12
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = icmp eq %struct.TYPE_20__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %175

24:                                               ; preds = %19
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @strcmp(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GRAPHICS_MODE, align 4
  %39 = load i32, i32* @PIXEL_MODE, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = call %struct.TYPE_21__* @sc_render_match(%struct.TYPE_19__* %31, i32 %34, i32 %41)
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %7, align 8
  br label %43

43:                                               ; preds = %30, %24
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %45 = icmp eq %struct.TYPE_21__* %44, null
  br i1 %45, label %46, label %68

46:                                               ; preds = %43
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @GRAPHICS_MODE, align 4
  %59 = load i32, i32* @PIXEL_MODE, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = call %struct.TYPE_21__* @sc_render_match(%struct.TYPE_19__* %47, i32 %54, i32 %61)
  store %struct.TYPE_21__* %62, %struct.TYPE_21__** %7, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %64 = icmp eq %struct.TYPE_21__* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %46
  %66 = load i32, i32* @ENODEV, align 4
  store i32 %66, i32* %3, align 4
  br label %175

67:                                               ; preds = %46
  br label %68

68:                                               ; preds = %67, %43
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %71, align 8
  %73 = icmp eq %struct.TYPE_20__* %69, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %68
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_19__*, i8**, i32)*, i32 (%struct.TYPE_19__*, i8**, i32)** %76, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load i32, i32* @SC_TE_WARM_INIT, align 4
  %82 = call i32 %77(%struct.TYPE_19__* %78, i8** %80, i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 2
  store %struct.TYPE_21__* %83, %struct.TYPE_21__** %85, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %89, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %92 = call i32 %90(%struct.TYPE_19__* %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %94 = call i32 @sc_clear_screen(%struct.TYPE_19__* %93)
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %175

96:                                               ; preds = %68
  %97 = load i64, i64* @sc_malloc, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @M_DEVBUF, align 4
  %109 = load i32, i32* @M_NOWAIT, align 4
  %110 = call i8* @malloc(i64 %107, i32 %108, i32 %109)
  store i8* %110, i8** %8, align 8
  br label %112

111:                                              ; preds = %99, %96
  store i8* null, i8** %8, align 8
  br label %112

112:                                              ; preds = %111, %104
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i32 (%struct.TYPE_19__*, i8**, i32)*, i32 (%struct.TYPE_19__*, i8**, i32)** %114, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %117 = load i32, i32* @SC_TE_COLD_INIT, align 4
  %118 = call i32 %115(%struct.TYPE_19__* %116, i8** %8, i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %3, align 4
  br label %175

123:                                              ; preds = %112
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %125, align 8
  %127 = icmp ne %struct.TYPE_20__* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 3
  %133 = load i32 (%struct.TYPE_19__*, i8**)*, i32 (%struct.TYPE_19__*, i8**)** %132, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = call i32 %133(%struct.TYPE_19__* %134, i8** %136)
  br label %138

138:                                              ; preds = %128, %123
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* @M_DEVBUF, align 4
  %148 = call i32 @free(i8* %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %138
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 3
  store %struct.TYPE_20__* %150, %struct.TYPE_20__** %152, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 2
  store %struct.TYPE_21__* %156, %struct.TYPE_21__** %158, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %162, align 8
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %165 = call i32 %163(%struct.TYPE_19__* %164)
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 2
  %168 = load i32 (%struct.TYPE_19__*, i32, i32)*, i32 (%struct.TYPE_19__*, i32, i32)** %167, align 8
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %170 = load i32, i32* @SC_NORM_ATTR, align 4
  %171 = load i32, i32* @SC_NORM_REV_ATTR, align 4
  %172 = call i32 %168(%struct.TYPE_19__* %169, i32 %170, i32 %171)
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %174 = call i32 @sc_clear_screen(%struct.TYPE_19__* %173)
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %149, %121, %74, %65, %22
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_20__* @sc_term_match(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_21__* @sc_render_match(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @sc_clear_screen(%struct.TYPE_19__*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
