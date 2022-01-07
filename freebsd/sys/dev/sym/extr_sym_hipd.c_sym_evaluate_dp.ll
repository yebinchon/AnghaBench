; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_evaluate_dp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_evaluate_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__, %struct.sym_pmc, %struct.sym_pmc }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sym_pmc = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@pm0_data = common dso_local global i32 0, align 4
@pm1_data = common dso_local global i32 0, align 4
@HF_SENSE = common dso_local global i32 0, align 4
@SYM_CONF_MAX_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_11__*, i32, i32*)* @sym_evaluate_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_evaluate_dp(i32 %0, %struct.TYPE_11__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sym_pmc*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @pm0_data, align 4
  %23 = call i32 @SCRIPTA_BA(i32 %21, i32 %22)
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  store %struct.sym_pmc* %28, %struct.sym_pmc** %15, align 8
  br label %41

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @pm1_data, align 4
  %33 = call i32 @SCRIPTA_BA(i32 %31, i32 %32)
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  store %struct.sym_pmc* %38, %struct.sym_pmc** %15, align 8
  br label %40

39:                                               ; preds = %29
  store %struct.sym_pmc* null, %struct.sym_pmc** %15, align 8
  br label %40

40:                                               ; preds = %39, %35
  br label %41

41:                                               ; preds = %40, %25
  %42 = load %struct.sym_pmc*, %struct.sym_pmc** %15, align 8
  %43 = icmp ne %struct.sym_pmc* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.sym_pmc*, %struct.sym_pmc** %15, align 8
  %46 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @scr_to_cpu(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.sym_pmc*, %struct.sym_pmc** %15, align 8
  %50 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @scr_to_cpu(i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %44, %41
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @HF_SENSE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  store i32 0, i32* %5, align 4
  br label %209

66:                                               ; preds = %56
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @scr_to_cpu(i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %66
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 %78, 8
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sdiv i32 %81, 8
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %77, %66
  %86 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %86, %89
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %120, %93
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %94
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %12, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @scr_to_cpu(i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %14, align 4
  %113 = and i32 %112, 16777215
  %114 = add nsw i32 %111, %113
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %98
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %122

120:                                              ; preds = %98
  %121 = load i32, i32* %16, align 4
  store i32 %121, i32* %11, align 4
  br label %94

122:                                              ; preds = %117, %94
  br label %154

123:                                              ; preds = %85
  %124 = load i32, i32* %11, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %153

126:                                              ; preds = %123
  br label %127

127:                                              ; preds = %151, %126
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %152

131:                                              ; preds = %127
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @scr_to_cpu(i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = and i32 %142, 16777215
  %144 = load i32, i32* %11, align 4
  %145 = sub nsw i32 %144, %143
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp sle i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %131
  br label %152

151:                                              ; preds = %131
  br label %127

152:                                              ; preds = %150, %127
  br label %153

153:                                              ; preds = %152, %123
  br label %154

154:                                              ; preds = %153, %122
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %165, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i32, i32* %11, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162, %154
  br label %208

166:                                              ; preds = %162, %158
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %177, label %170

170:                                              ; preds = %166
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i32, i32* %11, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174, %166
  br label %208

178:                                              ; preds = %174, %170
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %12, align 4
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp sgt i32 %180, %183
  br i1 %184, label %197, label %185

185:                                              ; preds = %179
  %186 = load i32, i32* %12, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %186, %189
  br i1 %190, label %191, label %204

191:                                              ; preds = %185
  %192 = load i32, i32* %11, align 4
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = icmp sgt i32 %192, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %191, %179
  %198 = load i32, i32* %12, align 4
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* %11, align 4
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 3
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %197, %191, %185
  %205 = load i32, i32* %11, align 4
  %206 = load i32*, i32** %9, align 8
  store i32 %205, i32* %206, align 4
  %207 = load i32, i32* %12, align 4
  store i32 %207, i32* %5, align 4
  br label %209

208:                                              ; preds = %177, %165
  store i32 -1, i32* %5, align 4
  br label %209

209:                                              ; preds = %208, %204, %63
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local i32 @SCRIPTA_BA(i32, i32) #1

declare dso_local i32 @scr_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
