; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_load_file.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ERROR: %s couldn't be opened!\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"ERROR: Size of %s is 0!\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"ERROR: Not enought memory to load %s!\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"ERROR: Error while reading.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @load_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  store i8* null, i8** %2, align 8
  br label %55

14:                                               ; preds = %1
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @SEEK_END, align 4
  %17 = call i32 @fseek(i32* %15, i32 0, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @ftell(i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @fclose(i32* %25)
  store i8* null, i8** %2, align 8
  br label %55

27:                                               ; preds = %14
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @rewind(i32* %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i8* @malloc(i32 %30)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @fclose(i32* %37)
  store i8* null, i8** %2, align 8
  br label %55

39:                                               ; preds = %27
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @fread(i8* %40, i32 %41, i32 1, i32* %42)
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @free(i8* %49)
  store i8* null, i8** %2, align 8
  br label %55

51:                                               ; preds = %39
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @fclose(i32* %52)
  %54 = load i8*, i8** %5, align 8
  store i8* %54, i8** %2, align 8
  br label %55

55:                                               ; preds = %51, %45, %34, %22, %11
  %56 = load i8*, i8** %2, align 8
  ret i8* %56
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
