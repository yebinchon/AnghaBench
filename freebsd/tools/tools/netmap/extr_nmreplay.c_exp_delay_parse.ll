; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_exp_delay_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_exp_delay_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._qs = type { i32 }
%struct._cfg = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@U_PARSE_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%ld: %le\00", align 1
@PTS_D_EXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._qs*, %struct._cfg*, i32, i8**)* @exp_delay_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exp_delay_parse(%struct._qs* %0, %struct._cfg* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._qs*, align 8
  %7 = alloca %struct._cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca double, align 8
  store %struct._qs* %0, %struct._qs** %6, align 8
  store %struct._cfg* %1, %struct._cfg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %15 = load %struct._qs*, %struct._qs** %6, align 8
  %16 = load i8**, i8*** %9, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 2, i32* %5, align 4
  br label %96

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %96

26:                                               ; preds = %22
  %27 = load i8**, i8*** %9, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @parse_time(i8* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i8**, i8*** %9, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @parse_time(i8* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @U_PARSE_ERR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @U_PARSE_ERR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38, %26
  store i32 1, i32* %5, align 4
  br label %96

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load %struct._cfg*, %struct._cfg** %7, align 8
  %52 = getelementptr inbounds %struct._cfg, %struct._cfg* %51, i32 0, i32 0
  store i32 2048, i32* %52, align 8
  %53 = load %struct._cfg*, %struct._cfg** %7, align 8
  %54 = getelementptr inbounds %struct._cfg, %struct._cfg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32* @calloc(i32 1, i32 %55)
  %57 = load %struct._cfg*, %struct._cfg** %7, align 8
  %58 = getelementptr inbounds %struct._cfg, %struct._cfg* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load %struct._cfg*, %struct._cfg** %7, align 8
  %60 = getelementptr inbounds %struct._cfg, %struct._cfg* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  store i32 1, i32* %5, align 4
  br label %96

64:                                               ; preds = %47
  %65 = load %struct._cfg*, %struct._cfg** %7, align 8
  %66 = getelementptr inbounds %struct._cfg, %struct._cfg* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %13, align 8
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %92, %64
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 512
  br i1 %70, label %71, label %95

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 512, %72
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %74, 5.120000e+02
  %76 = call i32 @log2(double %75)
  %77 = sub nsw i32 0, %76
  %78 = load i32, i32* %11, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %79, %80
  %82 = sitofp i32 %81 to double
  store double %82, double* %14, align 8
  %83 = load double, double* %14, align 8
  %84 = fptosi double %83 to i32
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load double, double* %14, align 8
  %91 = call i32 @ND(i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %89, double %90)
  br label %92

92:                                               ; preds = %71
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %68

95:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %63, %46, %25, %21
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_time(i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @log2(double) #1

declare dso_local i32 @ND(i32, i8*, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
