; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_const_plr_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_const_plr_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._qs = type { i32 }
%struct._cfg = type { double* }

@.str = private unnamed_addr constant [4 x i8] c"plr\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"WWW warning,  rounding %le down to 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._qs*, %struct._cfg*, i32, i8**)* @const_plr_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @const_plr_parse(%struct._qs* %0, %struct._cfg* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._qs*, align 8
  %7 = alloca %struct._cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store %struct._qs* %0, %struct._qs** %6, align 8
  store %struct._cfg* %1, %struct._cfg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load %struct._qs*, %struct._qs** %6, align 8
  %13 = load i8**, i8*** %9, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 2, i32* %5, align 4
  br label %63

22:                                               ; preds = %18, %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %63

26:                                               ; preds = %22
  %27 = load i8**, i8*** %9, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call double @parse_gen(i8* %32, i32* null, i32* %11)
  store double %33, double* %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %26
  %37 = load double, double* %10, align 8
  %38 = fcmp olt double %37, 0.000000e+00
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load double, double* %10, align 8
  %41 = fcmp ogt double %40, 1.000000e+00
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36, %26
  store i32 1, i32* %5, align 4
  br label %63

43:                                               ; preds = %39
  %44 = load double, double* %10, align 8
  %45 = fmul double %44, 0x4170000000000000
  %46 = load %struct._cfg*, %struct._cfg** %7, align 8
  %47 = getelementptr inbounds %struct._cfg, %struct._cfg* %46, i32 0, i32 0
  %48 = load double*, double** %47, align 8
  %49 = getelementptr inbounds double, double* %48, i64 0
  store double %45, double* %49, align 8
  %50 = load double, double* %10, align 8
  %51 = fcmp une double %50, 0.000000e+00
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  %53 = load %struct._cfg*, %struct._cfg** %7, align 8
  %54 = getelementptr inbounds %struct._cfg, %struct._cfg* %53, i32 0, i32 0
  %55 = load double*, double** %54, align 8
  %56 = getelementptr inbounds double, double* %55, i64 0
  %57 = load double, double* %56, align 8
  %58 = fcmp oeq double %57, 0.000000e+00
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load double, double* %10, align 8
  %61 = call i32 @ED(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), double %60)
  br label %62

62:                                               ; preds = %59, %52, %43
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %42, %25, %21
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local double @parse_gen(i8*, i32*, i32*) #1

declare dso_local i32 @ED(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
