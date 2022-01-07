; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_humanize_ids.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rctl/extr_rctl.c_humanize_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }
%struct.group = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"rule passed from the kernel didn't contain subject\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"malformed uid '%s'\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"malformed gid '%s'\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%s:%s:%s\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @humanize_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @humanize_ids(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca %struct.group*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  %13 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i8*, i8** %2, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i8*, i8** %2, align 8
  store i8* %22, i8** %8, align 8
  br label %24

23:                                               ; preds = %18
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %24

24:                                               ; preds = %23, %21
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strcasecmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strtod(i8* %29, i8** %9)
  store i32 %30, i32* %3, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %28
  %43 = load i32, i32* %3, align 4
  %44 = call %struct.passwd* @getpwuid(i32 %43)
  store %struct.passwd* %44, %struct.passwd** %4, align 8
  %45 = load %struct.passwd*, %struct.passwd** %4, align 8
  %46 = icmp ne %struct.passwd* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.passwd*, %struct.passwd** %4, align 8
  %49 = getelementptr inbounds %struct.passwd, %struct.passwd* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %7, align 8
  br label %51

51:                                               ; preds = %47, %42
  br label %81

52:                                               ; preds = %24
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @strcasecmp(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strtod(i8* %57, i8** %9)
  store i32 %58, i32* %3, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = load i8*, i8** %7, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = icmp ne i64 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %67, %56
  %71 = load i32, i32* %3, align 4
  %72 = call %struct.group* @getgrgid(i32 %71)
  store %struct.group* %72, %struct.group** %5, align 8
  %73 = load %struct.group*, %struct.group** %5, align 8
  %74 = icmp ne %struct.group* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.group*, %struct.group** %5, align 8
  %77 = getelementptr inbounds %struct.group, %struct.group* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %7, align 8
  br label %79

79:                                               ; preds = %75, %70
  br label %80

80:                                               ; preds = %79, %52
  br label %81

81:                                               ; preds = %80, %51
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %82, i8* %83, i8* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %81
  %91 = load i8*, i8** %10, align 8
  ret i8* %91
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strtod(i8*, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
