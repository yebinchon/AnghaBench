; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_parse_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_parse_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._sm = type { double, i32 }

@.str = private unnamed_addr constant [16 x i8] c"bad argument %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"checking %s [%s]\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"scale is %s %lf\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"returning %lf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*, %struct._sm*, i32*)* @parse_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @parse_gen(i8* %0, %struct._sm* %1, i32* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._sm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct._sm* %1, %struct._sm** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32* %10, i32** %7, align 8
  br label %14

14:                                               ; preds = %13, %3
  %15 = load i32*, i32** %7, align 8
  store i32 0, i32* %15, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %60

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = call double @strtod(i8* %20, i8** %9)
  store double %21, double* %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp eq i8* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @ED(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %60

28:                                               ; preds = %19
  %29 = load %struct._sm*, %struct._sm** %6, align 8
  %30 = icmp eq %struct._sm* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %62

37:                                               ; preds = %31, %28
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 (i8*, ...) @ND(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %39)
  br label %41

41:                                               ; preds = %56, %37
  %42 = load %struct._sm*, %struct._sm** %6, align 8
  %43 = getelementptr inbounds %struct._sm, %struct._sm* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct._sm*, %struct._sm** %6, align 8
  %48 = getelementptr inbounds %struct._sm, %struct._sm* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @strchr(i32 %49, i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %62

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load %struct._sm*, %struct._sm** %6, align 8
  %58 = getelementptr inbounds %struct._sm, %struct._sm* %57, i32 1
  store %struct._sm* %58, %struct._sm** %6, align 8
  br label %41

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59, %25, %18
  %61 = load i32*, i32** %7, align 8
  store i32 1, i32* %61, align 4
  store double 0.000000e+00, double* %4, align 8
  br label %82

62:                                               ; preds = %54, %36
  %63 = load %struct._sm*, %struct._sm** %6, align 8
  %64 = icmp ne %struct._sm* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load %struct._sm*, %struct._sm** %6, align 8
  %67 = getelementptr inbounds %struct._sm, %struct._sm* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct._sm*, %struct._sm** %6, align 8
  %70 = getelementptr inbounds %struct._sm, %struct._sm* %69, i32 0, i32 0
  %71 = load double, double* %70, align 8
  %72 = call i32 (i8*, ...) @ND(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %68, double %71)
  %73 = load %struct._sm*, %struct._sm** %6, align 8
  %74 = getelementptr inbounds %struct._sm, %struct._sm* %73, i32 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = load double, double* %8, align 8
  %77 = fmul double %76, %75
  store double %77, double* %8, align 8
  br label %78

78:                                               ; preds = %65, %62
  %79 = load double, double* %8, align 8
  %80 = call i32 (i8*, ...) @ND(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), double %79)
  %81 = load double, double* %8, align 8
  store double %81, double* %4, align 8
  br label %82

82:                                               ; preds = %78, %60
  %83 = load double, double* %4, align 8
  ret double %83
}

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @ED(i8*, i8*) #1

declare dso_local i32 @ND(i8*, ...) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
