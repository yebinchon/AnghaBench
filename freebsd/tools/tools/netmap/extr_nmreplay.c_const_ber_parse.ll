; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_const_ber_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_const_ber_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._qs = type { i32 }
%struct._cfg = type { i32, i32*, double* }

@.str = private unnamed_addr constant [4 x i8] c"ber\00", align 1
@MAX_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._qs*, %struct._cfg*, i32, i8**)* @const_ber_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @const_ber_parse(%struct._qs* %0, %struct._cfg* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._qs*, align 8
  %7 = alloca %struct._cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct._qs* %0, %struct._qs** %6, align 8
  store %struct._cfg* %1, %struct._cfg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32 16777215, i32* %16, align 4
  %17 = load %struct._qs*, %struct._qs** %6, align 8
  %18 = load i8**, i8*** %9, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 2, i32* %5, align 4
  br label %112

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %112

28:                                               ; preds = %24
  %29 = load i8**, i8*** %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call double @parse_gen(i8* %34, i32* null, i32* %14)
  store double %35, double* %10, align 8
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %28
  %39 = load double, double* %10, align 8
  %40 = fcmp olt double %39, 0.000000e+00
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load double, double* %10, align 8
  %43 = fcmp ogt double %42, 1.000000e+00
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38, %28
  store i32 1, i32* %5, align 4
  br label %112

45:                                               ; preds = %41
  %46 = load i32, i32* @MAX_PKT, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load %struct._cfg*, %struct._cfg** %7, align 8
  %51 = getelementptr inbounds %struct._cfg, %struct._cfg* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct._cfg*, %struct._cfg** %7, align 8
  %53 = getelementptr inbounds %struct._cfg, %struct._cfg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32* @calloc(i32 1, i32 %54)
  store i32* %55, i32** %15, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  br label %112

59:                                               ; preds = %45
  %60 = load i32*, i32** %15, align 8
  %61 = load %struct._cfg*, %struct._cfg** %7, align 8
  %62 = getelementptr inbounds %struct._cfg, %struct._cfg* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load double, double* %10, align 8
  %64 = fsub double 1.000000e+00, %63
  store double %64, double* %11, align 8
  %65 = load double, double* %11, align 8
  %66 = load double, double* %11, align 8
  %67 = fmul double %66, %65
  store double %67, double* %11, align 8
  %68 = load double, double* %11, align 8
  %69 = load double, double* %11, align 8
  %70 = fmul double %69, %68
  store double %70, double* %11, align 8
  %71 = load double, double* %11, align 8
  %72 = load double, double* %11, align 8
  %73 = fmul double %72, %71
  store double %73, double* %11, align 8
  store double 1.000000e+00, double* %12, align 8
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %99, %59
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @MAX_PKT, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %74
  %79 = load double, double* %12, align 8
  %80 = fsub double 1.000000e+00, %79
  %81 = fmul double 0x4170000000000000, %80
  %82 = fptosi double %81 to i32
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %91, 16777215
  br i1 %92, label %93, label %98

93:                                               ; preds = %78
  %94 = load i32*, i32** %15, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 16777215, i32* %97, align 4
  br label %98

98:                                               ; preds = %93, %78
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  %102 = load double, double* %11, align 8
  %103 = load double, double* %12, align 8
  %104 = fmul double %103, %102
  store double %104, double* %12, align 8
  br label %74

105:                                              ; preds = %74
  %106 = load double, double* %10, align 8
  %107 = fmul double %106, 0x4170000000000000
  %108 = load %struct._cfg*, %struct._cfg** %7, align 8
  %109 = getelementptr inbounds %struct._cfg, %struct._cfg* %108, i32 0, i32 2
  %110 = load double*, double** %109, align 8
  %111 = getelementptr inbounds double, double* %110, i64 0
  store double %107, double* %111, align 8
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %105, %58, %44, %27, %23
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local double @parse_gen(i8*, i32*, i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
