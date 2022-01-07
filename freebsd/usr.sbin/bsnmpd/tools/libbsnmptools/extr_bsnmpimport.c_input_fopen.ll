; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_input_fopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_input_fopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@paths = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [17 x i8] c"cannot open '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @input_fopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_fopen(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 47
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 46
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 126
  br i1 %22, label %23, label %32

23:                                               ; preds = %17, %11, %1
  %24 = load i8*, i8** %3, align 8
  %25 = call i32* @tryopen(i32* null, i8* %24)
  store i32* %25, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @input_new(i32* %28, i32* null, i8* %29)
  store i32 0, i32* %2, align 4
  br label %63

31:                                               ; preds = %23
  br label %60

32:                                               ; preds = %17
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %56, %32
  %34 = load i32**, i32*** @paths, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %33
  %40 = load i32**, i32*** @paths, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i32* @tryopen(i32* %43, i8* %44)
  store i32* %45, i32** %4, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load i32*, i32** %4, align 8
  %49 = load i32**, i32*** @paths, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i32*, i32** %49, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @input_new(i32* %48, i32* %52, i8* %53)
  store i32 0, i32* %2, align 4
  br label %63

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %33

59:                                               ; preds = %33
  br label %60

60:                                               ; preds = %59, %31
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %61)
  store i32 -1, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %47, %27
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32* @tryopen(i32*, i8*) #1

declare dso_local i32 @input_new(i32*, i32*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
