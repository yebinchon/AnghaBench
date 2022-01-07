; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ncal/extr_ncal.c_mkmonthb.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ncal/extr_ncal.c_mkmonthb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.monthlines = type { i8**, i32*, i32* }
%struct.tm = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@jdaystr = common dso_local global i8* null, align 8
@daystr = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 79, i32 66, i32 0], align 4
@highlightdate = common dso_local global i32 0, align 4
@flag_nohighlight = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.monthlines*)* @mkmonthb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mkmonthb(i32 %0, i32 %1, i32 %2, %struct.monthlines* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.monthlines*, align 8
  %9 = alloca %struct.tm, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.monthlines* %3, %struct.monthlines** %8, align 8
  store i32 0, i32* %18, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i8*, i8** @jdaystr, align 8
  store i8* %24, i8** %20, align 8
  store i32 4, i32* %11, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i8*, i8** @daystr, align 8
  store i8* %26, i8** %20, align 8
  store i32 3, i32* %11, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = call i32 @memset(%struct.tm* %9, i32 0, i32 4)
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.monthlines*, %struct.monthlines** %8, align 8
  %32 = getelementptr inbounds %struct.monthlines, %struct.monthlines* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @wcsftime(i32* %33, i32 2, i8* bitcast ([4 x i32]* @.str to i8*), %struct.tm* %9)
  %35 = load %struct.monthlines*, %struct.monthlines** %8, align 8
  %36 = getelementptr inbounds %struct.monthlines, %struct.monthlines* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @towupper(i32 %39)
  %41 = load %struct.monthlines*, %struct.monthlines** %8, align 8
  %42 = getelementptr inbounds %struct.monthlines, %struct.monthlines* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32 1, i32* %50, align 4
  %51 = call i32 @sndaysb(%struct.TYPE_4__* %10)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 11
  br i1 %53, label %54, label %60

54:                                               ; preds = %27
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32 1, i32* %59, align 4
  br label %67

60:                                               ; preds = %27
  %61 = load i32, i32* %5, align 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %54
  %68 = call i32 @sndaysb(%struct.TYPE_4__* %10)
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32 1, i32* %75, align 4
  %76 = call i32 @sndaysb(%struct.TYPE_4__* %10)
  store i32 %76, i32* %18, align 4
  br label %77

77:                                               ; preds = %71, %67
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @weekday(i32 %79)
  %81 = add nsw i32 %80, 1
  %82 = srem i32 %81, 7
  %83 = sub nsw i32 %78, %82
  store i32 %83, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %226, %77
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 6
  br i1 %86, label %87, label %229

87:                                               ; preds = %84
  store i32 0, i32* %17, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = mul nsw i32 7, %89
  %91 = add nsw i32 %88, %90
  store i32 %91, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %92

92:                                               ; preds = %187, %87
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %19, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %11, align 4
  %99 = mul nsw i32 %98, 7
  %100 = icmp ne i32 %97, %99
  br label %101

101:                                              ; preds = %96, %92
  %102 = phi i1 [ false, %92 ], [ %100, %96 ]
  br i1 %102, label %103, label %193

103:                                              ; preds = %101
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %170

107:                                              ; preds = %103
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %18, align 4
  %113 = sub nsw i32 %111, %112
  %114 = add nsw i32 %113, 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32 %114, i32* %115, align 4
  br label %119

116:                                              ; preds = %107
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @sdateb(i32 %117, %struct.TYPE_4__* %10)
  br label %119

119:                                              ; preds = %116, %110
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* @highlightdate, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %146

123:                                              ; preds = %119
  %124 = load i32, i32* @flag_nohighlight, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %146, label %126

126:                                              ; preds = %123
  %127 = load %struct.monthlines*, %struct.monthlines** %8, align 8
  %128 = getelementptr inbounds %struct.monthlines, %struct.monthlines* %127, i32 0, i32 0
  %129 = load i8**, i8*** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8*, i8** %20, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %11, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %137, i64 %142
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @highlight(i8* %136, i8* %143, i32 %144, i32* %17)
  br label %169

146:                                              ; preds = %123, %119
  %147 = load %struct.monthlines*, %struct.monthlines** %8, align 8
  %148 = getelementptr inbounds %struct.monthlines, %struct.monthlines* %147, i32 0, i32 0
  %149 = load i8**, i8*** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8*, i8** %20, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %11, align 4
  %164 = mul nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %160, i64 %165
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @memcpy(i8* %159, i8* %166, i32 %167)
  br label %169

169:                                              ; preds = %146, %126
  br label %186

170:                                              ; preds = %103
  %171 = load %struct.monthlines*, %struct.monthlines** %8, align 8
  %172 = getelementptr inbounds %struct.monthlines, %struct.monthlines* %171, i32 0, i32 0
  %173 = load i8**, i8*** %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @memcpy(i8* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %170, %169
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %16, align 4
  %192 = add nsw i32 %191, %190
  store i32 %192, i32* %16, align 4
  br label %92

193:                                              ; preds = %101
  %194 = load i32, i32* %16, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %193
  %197 = load %struct.monthlines*, %struct.monthlines** %8, align 8
  %198 = getelementptr inbounds %struct.monthlines, %struct.monthlines* %197, i32 0, i32 0
  %199 = load i8**, i8*** %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  store i8 0, i8* %204, align 1
  br label %218

205:                                              ; preds = %193
  %206 = load %struct.monthlines*, %struct.monthlines** %8, align 8
  %207 = getelementptr inbounds %struct.monthlines, %struct.monthlines* %206, i32 0, i32 0
  %208 = load i8**, i8*** %207, align 8
  %209 = load i32, i32* %14, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  %212 = load i8*, i8** %211, align 8
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %17, align 4
  %215 = add nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %212, i64 %216
  store i8 0, i8* %217, align 1
  br label %218

218:                                              ; preds = %205, %196
  %219 = load i32, i32* %17, align 4
  %220 = load %struct.monthlines*, %struct.monthlines** %8, align 8
  %221 = getelementptr inbounds %struct.monthlines, %struct.monthlines* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %219, i32* %225, align 4
  br label %226

226:                                              ; preds = %218
  %227 = load i32, i32* %14, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %14, align 4
  br label %84

229:                                              ; preds = %84
  ret void
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @wcsftime(i32*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @towupper(i32) #1

declare dso_local i32 @sndaysb(%struct.TYPE_4__*) #1

declare dso_local i32 @weekday(i32) #1

declare dso_local i32 @sdateb(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @highlight(i8*, i8*, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
