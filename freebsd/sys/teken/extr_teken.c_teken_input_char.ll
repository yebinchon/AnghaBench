; ModuleID = '/home/carl/AnghaBench/freebsd/sys/teken/extr_teken.c_teken_input_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/teken/extr_teken.c_teken_input_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, i32 (%struct.TYPE_22__*, i32)* }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i64 }

@TS_INSTRING = common dso_local global i32 0, align 4
@TS_CONS25 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32)* @teken_input_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @teken_input_char(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TS_INSTRING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %27 [
    i32 27, label %13
    i32 7, label %20
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @TS_INSTRING, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %28

20:                                               ; preds = %11
  %21 = load i32, i32* @TS_INSTRING, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %223

27:                                               ; preds = %11
  br label %223

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %86 [
    i32 0, label %31
    i32 7, label %32
    i32 8, label %35
    i32 10, label %38
    i32 11, label %38
    i32 12, label %41
    i32 14, label %44
    i32 15, label %62
    i32 13, label %80
    i32 9, label %83
  ]

31:                                               ; preds = %29
  br label %93

32:                                               ; preds = %29
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %34 = call i32 @teken_subr_bell(%struct.TYPE_22__* %33)
  br label %93

35:                                               ; preds = %29
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %37 = call i32 @teken_subr_backspace(%struct.TYPE_22__* %36)
  br label %93

38:                                               ; preds = %29, %29
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %40 = call i32 @teken_subr_newline(%struct.TYPE_22__* %39)
  br label %93

41:                                               ; preds = %29
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %43 = call i32 @teken_subr_newpage(%struct.TYPE_22__* %42)
  br label %93

44:                                               ; preds = %29
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TS_CONS25, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 7
  %54 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %53, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 %54(%struct.TYPE_22__* %55, i32 %56)
  br label %61

58:                                               ; preds = %44
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %51
  br label %93

62:                                               ; preds = %29
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @TS_CONS25, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 7
  %72 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %71, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 %72(%struct.TYPE_22__* %73, i32 %74)
  br label %79

76:                                               ; preds = %62
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %69
  br label %93

80:                                               ; preds = %29
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %82 = call i32 @teken_subr_carriage_return(%struct.TYPE_22__* %81)
  br label %93

83:                                               ; preds = %29
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %85 = call i32 @teken_subr_horizontal_tab(%struct.TYPE_22__* %84)
  br label %93

86:                                               ; preds = %29
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 7
  %89 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %88, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 %89(%struct.TYPE_22__* %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %83, %80, %79, %61, %41, %38, %35, %32, %31
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sge i64 %97, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @teken_assert(i32 %103)
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %108, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @teken_assert(i32 %114)
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %119, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @teken_assert(i32 %125)
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %130, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @teken_assert(i32 %136)
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp slt i64 %141, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @teken_assert(i32 %147)
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp slt i64 %152, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @teken_assert(i32 %158)
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp sle i64 %163, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @teken_assert(i32 %169)
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp slt i64 %174, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @teken_assert(i32 %180)
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %185, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %93
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %195, %199
  br i1 %200, label %219, label %201

201:                                              ; preds = %191, %93
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %201
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %211, %215
  br label %217

217:                                              ; preds = %207, %201
  %218 = phi i1 [ false, %201 ], [ %216, %207 ]
  br label %219

219:                                              ; preds = %217, %191
  %220 = phi i1 [ true, %191 ], [ %218, %217 ]
  %221 = zext i1 %220 to i32
  %222 = call i32 @teken_assert(i32 %221)
  br label %223

223:                                              ; preds = %219, %27, %20
  ret void
}

declare dso_local i32 @teken_subr_bell(%struct.TYPE_22__*) #1

declare dso_local i32 @teken_subr_backspace(%struct.TYPE_22__*) #1

declare dso_local i32 @teken_subr_newline(%struct.TYPE_22__*) #1

declare dso_local i32 @teken_subr_newpage(%struct.TYPE_22__*) #1

declare dso_local i32 @teken_subr_carriage_return(%struct.TYPE_22__*) #1

declare dso_local i32 @teken_subr_horizontal_tab(%struct.TYPE_22__*) #1

declare dso_local i32 @teken_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
