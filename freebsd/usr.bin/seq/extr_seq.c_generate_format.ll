; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/seq/extr_seq.c_generate_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/seq/extr_seq.c_generate_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@generate_format.buf = internal global [256 x i8] zeroinitializer, align 16
@default_format = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@decimal_point = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%%%c%d.%d%c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%%%c%d%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (double, double, double, i32, i8)* @generate_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @generate_format(double %0, double %1, double %2, i32 %3, i8 signext %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store double %0, double* %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  store i8 0, i8* %12, align 1
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i8*, i8** @default_format, align 8
  store i8* %20, i8** %6, align 8
  br label %139

21:                                               ; preds = %5
  %22 = load double, double* %7, align 8
  %23 = load double, double* %9, align 8
  %24 = fcmp ogt double %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load double, double* %7, align 8
  %27 = load double, double* %8, align 8
  %28 = load double, double* %7, align 8
  %29 = load double, double* %9, align 8
  %30 = fsub double %28, %29
  %31 = load double, double* %8, align 8
  %32 = fdiv double %30, %31
  %33 = call double @llvm.floor.f64(double %32)
  %34 = fmul double %27, %33
  %35 = fsub double %26, %34
  store double %35, double* %9, align 8
  br label %47

36:                                               ; preds = %21
  %37 = load double, double* %7, align 8
  %38 = load double, double* %8, align 8
  %39 = load double, double* %9, align 8
  %40 = load double, double* %7, align 8
  %41 = fsub double %39, %40
  %42 = load double, double* %8, align 8
  %43 = fdiv double %41, %42
  %44 = call double @llvm.floor.f64(double %43)
  %45 = fmul double %38, %44
  %46 = fadd double %37, %45
  store double %46, double* %9, align 8
  br label %47

47:                                               ; preds = %36, %25
  %48 = load double, double* %8, align 8
  %49 = fptosi double %48 to i8
  %50 = call i32 (i8*, i8*, i8, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @generate_format.buf, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %49)
  %51 = call i64 @strchr(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @generate_format.buf, i64 0, i64 0), i8 signext 101)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i8 101, i8* %12, align 1
  br label %54

54:                                               ; preds = %53, %47
  %55 = call i32 @decimal_places(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @generate_format.buf, i64 0, i64 0))
  store i32 %55, i32* %13, align 4
  %56 = load double, double* %7, align 8
  %57 = fptosi double %56 to i8
  %58 = call i32 (i8*, i8*, i8, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @generate_format.buf, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %57)
  store i32 %58, i32* %14, align 4
  %59 = call i64 @strchr(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @generate_format.buf, i64 0, i64 0), i8 signext 101)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i8 101, i8* %12, align 1
  br label %62

62:                                               ; preds = %61, %54
  %63 = call i32 @decimal_places(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @generate_format.buf, i64 0, i64 0))
  store i32 %63, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = load i32, i32* @decimal_point, align 4
  %69 = call i64 @strlen(i32 %68)
  %70 = add nsw i64 %67, %69
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %65, %62
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @MAX(i32 %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load double, double* %9, align 8
  %80 = fptosi double %79 to i8
  %81 = call i32 (i8*, i8*, i8, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @generate_format.buf, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %80)
  store i32 %81, i32* %15, align 4
  %82 = call i64 @strchr(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @generate_format.buf, i64 0, i64 0), i8 signext 101)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i8 101, i8* %12, align 1
  br label %85

85:                                               ; preds = %84, %75
  %86 = call i32 @decimal_places(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @generate_format.buf, i64 0, i64 0))
  store i32 %86, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = load i32, i32* @decimal_point, align 4
  %92 = call i64 @strlen(i32 %91)
  %93 = add nsw i64 %90, %92
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %88, %85
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %98
  %102 = load i8, i8* %11, align 1
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @MAX(i32 %103, i32 %104)
  %106 = load i32, i32* @decimal_point, align 4
  %107 = call i64 @strlen(i32 %106)
  %108 = trunc i64 %107 to i32
  %109 = add nsw i32 %105, %108
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %13, align 4
  %113 = load i8, i8* %12, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %101
  %117 = load i8, i8* %12, align 1
  %118 = sext i8 %117 to i32
  br label %120

119:                                              ; preds = %101
  br label %120

120:                                              ; preds = %119, %116
  %121 = phi i32 [ %118, %116 ], [ 102, %119 ]
  %122 = call i32 (i8*, i8*, i8, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @generate_format.buf, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8 signext %102, i32 %111, i32 %112, i32 %121)
  br label %138

123:                                              ; preds = %98
  %124 = load i8, i8* %11, align 1
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @MAX(i32 %125, i32 %126)
  %128 = load i8, i8* %12, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load i8, i8* %12, align 1
  %133 = sext i8 %132 to i32
  br label %135

134:                                              ; preds = %123
  br label %135

135:                                              ; preds = %134, %131
  %136 = phi i32 [ %133, %131 ], [ 103, %134 ]
  %137 = call i32 (i8*, i8*, i8, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @generate_format.buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8 signext %124, i32 %127, i32 %136)
  br label %138

138:                                              ; preds = %135, %120
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @generate_format.buf, i64 0, i64 0), i8** %6, align 8
  br label %139

139:                                              ; preds = %138, %19
  %140 = load i8*, i8** %6, align 8
  ret i8* %140
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, ...) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @decimal_places(i8*) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @MAX(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
