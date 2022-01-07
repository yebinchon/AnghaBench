; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_showanswer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_showanswer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unittype = type { i64, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"conformability error\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"\09%s = \00", align 1
@havestr = common dso_local global i8* null, align 8
@terse = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@wantstr = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"WARNING: conversion of non-proportional quantities.\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@outputformat = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"\09 (-> x*%sg %sg)\0A\09 (<- y*%sg %sg)\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" * %s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\09* \00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"\09%s = (1 / \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c") * %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"\09/ \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unittype*, %struct.unittype*)* @showanswer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showanswer(%struct.unittype* %0, %struct.unittype* %1) #0 {
  %3 = alloca %struct.unittype*, align 8
  %4 = alloca %struct.unittype*, align 8
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  store %struct.unittype* %0, %struct.unittype** %3, align 8
  store %struct.unittype* %1, %struct.unittype** %4, align 8
  %7 = load %struct.unittype*, %struct.unittype** %3, align 8
  %8 = load %struct.unittype*, %struct.unittype** %4, align 8
  %9 = call i64 @compareunits(%struct.unittype* %7, %struct.unittype* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* @verbose, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** @havestr, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %24

18:                                               ; preds = %11
  %19 = load i64, i64* @terse, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  br label %24

24:                                               ; preds = %23, %15
  %25 = load %struct.unittype*, %struct.unittype** %3, align 8
  %26 = call i32 @showunit(%struct.unittype* %25)
  %27 = load i64, i64* @terse, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* @verbose, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** @wantstr, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %37

35:                                               ; preds = %29
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  %38 = load %struct.unittype*, %struct.unittype** %4, align 8
  %39 = call i32 @showunit(%struct.unittype* %38)
  br label %40

40:                                               ; preds = %37, %24
  br label %192

41:                                               ; preds = %2
  %42 = load %struct.unittype*, %struct.unittype** %3, align 8
  %43 = getelementptr inbounds %struct.unittype, %struct.unittype* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.unittype*, %struct.unittype** %4, align 8
  %46 = getelementptr inbounds %struct.unittype, %struct.unittype* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %132

49:                                               ; preds = %41
  %50 = load %struct.unittype*, %struct.unittype** %4, align 8
  %51 = getelementptr inbounds %struct.unittype, %struct.unittype* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load %struct.unittype*, %struct.unittype** %3, align 8
  %58 = getelementptr inbounds %struct.unittype, %struct.unittype* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %56
  %62 = load i8*, i8** @outputformat, align 8
  %63 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.unittype*, %struct.unittype** %3, align 8
  %66 = getelementptr inbounds %struct.unittype, %struct.unittype* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = load %struct.unittype*, %struct.unittype** %3, align 8
  %70 = getelementptr inbounds %struct.unittype, %struct.unittype* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.unittype*, %struct.unittype** %4, align 8
  %74 = getelementptr inbounds %struct.unittype, %struct.unittype* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = load %struct.unittype*, %struct.unittype** %4, align 8
  %78 = getelementptr inbounds %struct.unittype, %struct.unittype* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = sdiv i64 %76, %80
  %82 = call i32 (i8*, ...) @printf(i8* %64, i64 %81)
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @free(i8* %83)
  br label %131

85:                                               ; preds = %56
  %86 = load i8*, i8** @outputformat, align 8
  %87 = load i8*, i8** @outputformat, align 8
  %88 = load i8*, i8** @outputformat, align 8
  %89 = load i8*, i8** @outputformat, align 8
  %90 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %86, i8* %87, i8* %88, i8* %89)
  %91 = load i8*, i8** %6, align 8
  %92 = load %struct.unittype*, %struct.unittype** %3, align 8
  %93 = getelementptr inbounds %struct.unittype, %struct.unittype* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.unittype*, %struct.unittype** %4, align 8
  %96 = getelementptr inbounds %struct.unittype, %struct.unittype* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = sdiv i32 %94, %97
  %99 = load %struct.unittype*, %struct.unittype** %3, align 8
  %100 = getelementptr inbounds %struct.unittype, %struct.unittype* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.unittype*, %struct.unittype** %4, align 8
  %103 = getelementptr inbounds %struct.unittype, %struct.unittype* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %101, %104
  %106 = load %struct.unittype*, %struct.unittype** %4, align 8
  %107 = getelementptr inbounds %struct.unittype, %struct.unittype* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = sdiv i64 %105, %109
  %111 = load %struct.unittype*, %struct.unittype** %4, align 8
  %112 = getelementptr inbounds %struct.unittype, %struct.unittype* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.unittype*, %struct.unittype** %3, align 8
  %115 = getelementptr inbounds %struct.unittype, %struct.unittype* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = sdiv i32 %113, %116
  %118 = load %struct.unittype*, %struct.unittype** %4, align 8
  %119 = getelementptr inbounds %struct.unittype, %struct.unittype* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.unittype*, %struct.unittype** %3, align 8
  %122 = getelementptr inbounds %struct.unittype, %struct.unittype* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  %125 = load %struct.unittype*, %struct.unittype** %3, align 8
  %126 = getelementptr inbounds %struct.unittype, %struct.unittype* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = sdiv i64 %124, %128
  %130 = call i32 (i8*, ...) @printf(i8* %91, i32 %98, i64 %110, i32 %117, i64 %129)
  br label %131

131:                                              ; preds = %85, %61
  br label %191

132:                                              ; preds = %41
  %133 = load %struct.unittype*, %struct.unittype** %3, align 8
  %134 = getelementptr inbounds %struct.unittype, %struct.unittype* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.unittype*, %struct.unittype** %4, align 8
  %137 = getelementptr inbounds %struct.unittype, %struct.unittype* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = sdiv i32 %135, %138
  %140 = sitofp i32 %139 to double
  store double %140, double* %5, align 8
  %141 = load i64, i64* @verbose, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %132
  %144 = load i8*, i8** @havestr, align 8
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %144)
  %146 = load i8*, i8** @outputformat, align 8
  %147 = load double, double* %5, align 8
  %148 = call i32 (i8*, ...) @printf(i8* %146, double %147)
  %149 = load i8*, i8** @wantstr, align 8
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %149)
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %167

152:                                              ; preds = %132
  %153 = load i64, i64* @terse, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load i8*, i8** @outputformat, align 8
  %157 = load double, double* %5, align 8
  %158 = call i32 (i8*, ...) @printf(i8* %156, double %157)
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %166

160:                                              ; preds = %152
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %162 = load i8*, i8** @outputformat, align 8
  %163 = load double, double* %5, align 8
  %164 = call i32 (i8*, ...) @printf(i8* %162, double %163)
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %166

166:                                              ; preds = %160, %155
  br label %167

167:                                              ; preds = %166, %143
  %168 = load i64, i64* @verbose, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = load i8*, i8** @havestr, align 8
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %171)
  %173 = load i8*, i8** @outputformat, align 8
  %174 = load double, double* %5, align 8
  %175 = fdiv double 1.000000e+00, %174
  %176 = call i32 (i8*, ...) @printf(i8* %173, double %175)
  %177 = load i8*, i8** @wantstr, align 8
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %177)
  br label %190

179:                                              ; preds = %167
  %180 = load i64, i64* @terse, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %179
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %184 = load i8*, i8** @outputformat, align 8
  %185 = load double, double* %5, align 8
  %186 = fdiv double 1.000000e+00, %185
  %187 = call i32 (i8*, ...) @printf(i8* %184, double %186)
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %189

189:                                              ; preds = %182, %179
  br label %190

190:                                              ; preds = %189, %170
  br label %191

191:                                              ; preds = %190, %131
  br label %192

192:                                              ; preds = %191, %40
  ret void
}

declare dso_local i64 @compareunits(%struct.unittype*, %struct.unittype*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @showunit(%struct.unittype*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
