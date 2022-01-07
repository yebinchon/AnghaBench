; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name = type { i32, i32, %struct.name* }

@.str = private unnamed_addr constant [19 x i8] c"No names to unpack\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"metoo\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"sendmail\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@GDEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @unpack(%struct.name* %0) #0 {
  %2 = alloca %struct.name*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.name*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.name* %0, %struct.name** %2, align 8
  %10 = load %struct.name*, %struct.name** %2, align 8
  store %struct.name* %10, %struct.name** %5, align 8
  %11 = load %struct.name*, %struct.name** %5, align 8
  %12 = call i32 @count(%struct.name* %11)
  store i32 %12, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  store i32 2, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = call i32* @value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %16
  %28 = call i32* @value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = call i64 @salloc(i32 %42)
  %44 = inttoptr i64 %43 to i8**
  store i8** %44, i8*** %4, align 8
  %45 = load i8**, i8*** %4, align 8
  store i8** %45, i8*** %3, align 8
  %46 = load i8**, i8*** %3, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %3, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %46, align 8
  %48 = load i8**, i8*** %3, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %3, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = load i8**, i8*** %3, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %3, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %53, align 8
  br label %55

55:                                               ; preds = %52, %36
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8**, i8*** %3, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %3, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %59, align 8
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %81, %61
  %63 = load %struct.name*, %struct.name** %5, align 8
  %64 = icmp ne %struct.name* %63, null
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load %struct.name*, %struct.name** %5, align 8
  %67 = getelementptr inbounds %struct.name, %struct.name* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @GDEL, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.name*, %struct.name** %5, align 8
  %74 = getelementptr inbounds %struct.name, %struct.name* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load i8**, i8*** %3, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i32 1
  store i8** %79, i8*** %3, align 8
  store i8* %77, i8** %78, align 8
  br label %80

80:                                               ; preds = %72, %65
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.name*, %struct.name** %5, align 8
  %83 = getelementptr inbounds %struct.name, %struct.name* %82, i32 0, i32 2
  %84 = load %struct.name*, %struct.name** %83, align 8
  store %struct.name* %84, %struct.name** %5, align 8
  br label %62

85:                                               ; preds = %62
  %86 = load i8**, i8*** %3, align 8
  store i8* null, i8** %86, align 8
  %87 = load i8**, i8*** %4, align 8
  ret i8** %87
}

declare dso_local i32 @count(%struct.name*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32* @value(i8*) #1

declare dso_local i64 @salloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
