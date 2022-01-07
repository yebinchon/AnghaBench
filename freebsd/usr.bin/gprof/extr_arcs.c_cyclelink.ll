; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_arcs.c_cyclelink.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_arcs.c_cyclelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, double, double, double, double, double, i32, i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, i64, i32, i64, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_8__* }

@ncycle = common dso_local global i32 0, align 4
@nl = common dso_local global %struct.TYPE_7__* null, align 8
@npe = common dso_local global %struct.TYPE_7__* null, align 8
@cyclenl = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"no room for %zu bytes of cycle headers\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DFN_NAN = common dso_local global i32 0, align 4
@CYCLEDEBUG = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cyclelink() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32 0, i32* @ncycle, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nl, align 8
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %1, align 8
  br label %7

7:                                                ; preds = %26, %0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npe, align 8
  %10 = icmp ult %struct.TYPE_7__* %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 10
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %16 = icmp eq %struct.TYPE_7__* %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ncycle, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @ncycle, align 4
  br label %25

25:                                               ; preds = %22, %17, %11
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 1
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %1, align 8
  br label %7

29:                                               ; preds = %7
  %30 = load i32, i32* @ncycle, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i64 @calloc(i32 %31, i32 136)
  %33 = inttoptr i64 %32 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** @cyclenl, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cyclenl, align 8
  %35 = icmp eq %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* @ncycle, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 136
  %41 = trunc i64 %40 to i32
  %42 = call i32 @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %36, %29
  store i32 0, i32* %3, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @nl, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %1, align 8
  br label %45

45:                                               ; preds = %181, %43
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npe, align 8
  %48 = icmp ult %struct.TYPE_7__* %46, %47
  br i1 %48, label %49, label %184

49:                                               ; preds = %45
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 10
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %54 = icmp eq %struct.TYPE_7__* %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55, %49
  br label %181

61:                                               ; preds = %55
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cyclenl, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %2, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 17
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 16
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store double 0.000000e+00, double* %73, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store double 0.000000e+00, double* %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 15
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 8
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  store double 0.000000e+00, double* %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 4
  store double 0.000000e+00, double* %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 5
  store double 0.000000e+00, double* %85, align 8
  %86 = load i32, i32* @TRUE, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 14
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 13
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @DFN_NAN, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 12
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 10
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %99, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %101 = ptrtoint %struct.TYPE_7__* %100 to i64
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 9
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 11
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** %4, align 8
  br label %109

109:                                              ; preds = %119, %61
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = icmp ne %struct.TYPE_7__* %110, null
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 10
  store %struct.TYPE_7__* %116, %struct.TYPE_7__** %118, align 8
  br label %119

119:                                              ; preds = %112
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %123, %struct.TYPE_7__** %4, align 8
  br label %109

124:                                              ; preds = %109
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* %125, %struct.TYPE_7__** %4, align 8
  br label %126

126:                                              ; preds = %175, %124
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %128 = icmp ne %struct.TYPE_7__* %127, null
  br i1 %128, label %129, label %180

129:                                              ; preds = %126
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 9
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  store %struct.TYPE_8__* %132, %struct.TYPE_8__** %5, align 8
  br label %133

133:                                              ; preds = %170, %129
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %135 = icmp ne %struct.TYPE_8__* %134, null
  br i1 %135, label %136, label %174

136:                                              ; preds = %133
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = icmp eq %struct.TYPE_7__* %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %170

143:                                              ; preds = %136
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %3, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %143
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 8
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, %154
  store i64 %158, i64* %156, align 8
  br label %169

159:                                              ; preds = %143
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %162
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %164, align 4
  br label %169

169:                                              ; preds = %159, %151
  br label %170

170:                                              ; preds = %169, %142
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  store %struct.TYPE_8__* %173, %struct.TYPE_8__** %5, align 8
  br label %133

174:                                              ; preds = %133
  br label %175

175:                                              ; preds = %174
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = inttoptr i64 %178 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %179, %struct.TYPE_7__** %4, align 8
  br label %126

180:                                              ; preds = %126
  br label %181

181:                                              ; preds = %180, %60
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 1
  store %struct.TYPE_7__* %183, %struct.TYPE_7__** %1, align 8
  br label %45

184:                                              ; preds = %45
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
