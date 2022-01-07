; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_ctrs.h_norm2.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_ctrs.h_norm2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, double, i8*, i32)* @norm2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @norm2(i8* %0, double %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5 x i8*], align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store double %1, double* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = bitcast [5 x i8*]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 40, i1 false)
  %12 = bitcast i8* %11 to [5 x i8*]*
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %13, align 16
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8** %14, align 8
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %15, align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %16, align 8
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %17, align 16
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %33, %20
  %22 = load double, double* %6, align 8
  %23 = fcmp oge double %22, 1.000000e+03
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %36

30:                                               ; preds = %28
  %31 = load double, double* %6, align 8
  %32 = fdiv double %31, 1.000000e+03
  store double %32, double* %6, align 8
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %21

36:                                               ; preds = %28
  br label %38

37:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load double, double* %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @sprintf(i8* %39, i8* %40, double %41, i8* %45)
  %47 = load i8*, i8** %5, align 8
  ret i8* %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, double, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
