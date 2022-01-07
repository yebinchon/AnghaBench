; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_getcpuinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_getcpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"not implemented\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"kern.smp.maxcpus\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"sysctl kern.smp.maxcpus\00", align 1
@CPUSTATES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"malloc %zd bytes\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"kern.cp_times\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*)* @getcpuinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getcpuinfo(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32*, i32** @kd, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  store i64 0, i64* %6, align 8
  store i32 0, i32* %13, align 4
  store i64 4, i64* %7, align 8
  %19 = call i32 (i8*, ...) @mysysctl(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %11, i64* %7)
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = load i32, i32* @CPUSTATES, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %27, %29
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64* @malloc(i64 %31)
  store i64* %32, i64** %5, align 8
  %33 = load i64*, i64** %5, align 8
  %34 = icmp eq i64* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %35, %24
  %39 = load i64*, i64** %5, align 8
  %40 = call i32 (i8*, ...) @mysysctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64* %39, i64* %7)
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* @CPUSTATES, align 4
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %41, %43
  %45 = udiv i64 %44, 8
  %46 = sub i64 %45, 1
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %90, %38
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %93

52:                                               ; preds = %48
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %75, %52
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @CPUSTATES, align 4
  %59 = icmp slt i32 %57, %58
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ false, %53 ], [ %59, %56 ]
  br i1 %61, label %62, label %78

62:                                               ; preds = %60
  %63 = load i64*, i64** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @CPUSTATES, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %63, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %62
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %53

78:                                               ; preds = %60
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = shl i64 1, %83
  %85 = load i64, i64* %6, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %6, align 8
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %81, %78
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %48

93:                                               ; preds = %48
  %94 = load i64*, i64** %3, align 8
  %95 = icmp ne i64* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i64, i64* %6, align 8
  %98 = load i64*, i64** %3, align 8
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32*, i32** %4, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %12, align 4
  %104 = load i32*, i32** %4, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %13, align 4
  ret i32 %106
}

declare dso_local i32 @xo_errx(i32, i8*) #1

declare dso_local i32 @mysysctl(i8*, ...) #1

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @xo_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
