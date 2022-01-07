; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_patch.c_handle_creation.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_patch.c_handle_creation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reverse = common dso_local global i32 0, align 4
@force = common dso_local global i64 0, align 8
@skip_rest_of_patch = common dso_local global i32 0, align 4
@noreverse = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Ignoring previously applied (or reversed) patch.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"lost hunk on alloc error!\0A\00", align 1
@batch = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"Patch creates file that already exists, %s %seversed\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Assuming\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Ignoring\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Unr\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Patch creates file that already exists!  %s -R? [y] \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Assume\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Ignore\00", align 1
@buf = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"Apply anyway? [n]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @handle_creation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_creation(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @reverse, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32*, i32** %5, align 8
  store i32 1, i32* %13, align 4
  br label %88

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @reverse, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %87, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %87

20:                                               ; preds = %17
  %21 = load i64, i64* @force, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* @skip_rest_of_patch, align 4
  store i32 0, i32* %3, align 4
  br label %90

24:                                               ; preds = %20
  %25 = load i64, i64* @noreverse, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (i8*, ...) @say(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @skip_rest_of_patch, align 4
  store i32 0, i32* %3, align 4
  br label %90

29:                                               ; preds = %24
  %30 = call i32 (...) @pch_swap()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, i32* @reverse, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* @reverse, align 4
  %39 = load i64, i64* @batch, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load i64, i64* @verbose, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* @reverse, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %49 = load i32, i32* @reverse, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %53 = call i32 (i8*, ...) @say(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %52)
  br label %54

54:                                               ; preds = %44, %41
  br label %86

55:                                               ; preds = %34
  %56 = load i32, i32* @reverse, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)
  %60 = call i32 (i8*, ...) @ask(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %59)
  %61 = load i8*, i8** @buf, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 110
  br i1 %64, label %65, label %83

65:                                               ; preds = %55
  %66 = call i32 (i8*, ...) @ask(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %67 = load i8*, i8** @buf, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 121
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* @skip_rest_of_patch, align 4
  br label %73

72:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* @reverse, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* @reverse, align 4
  %78 = call i32 (...) @pch_swap()
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %73
  %81 = call i32 @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %73
  br label %85

83:                                               ; preds = %55
  %84 = load i32*, i32** %5, align 8
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %83, %82
  br label %86

86:                                               ; preds = %85, %54
  br label %87

87:                                               ; preds = %86, %17, %14
  br label %88

88:                                               ; preds = %87, %12
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %27, %23
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @say(i8*, ...) #1

declare dso_local i32 @pch_swap(...) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @ask(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
