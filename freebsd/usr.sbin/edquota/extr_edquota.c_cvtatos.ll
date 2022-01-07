; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_cvtatos.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_cvtatos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"second\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"minute\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: bad units, specify %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"days, hours, minutes, or seconds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvtatos(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i64 @bcmp(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  br label %47

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @bcmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 60
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  br label %46

22:                                               ; preds = %14
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @bcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 60
  %29 = mul nsw i32 %28, 60
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %45

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @bcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %36, 24
  %38 = mul nsw i32 %37, 60
  %39 = mul nsw i32 %38, 60
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %44

41:                                               ; preds = %31
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %48

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %26
  br label %46

46:                                               ; preds = %45, %18
  br label %47

47:                                               ; preds = %46, %11
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @bcmp(i8*, i8*, i32) #1

declare dso_local i32 @warnx(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
