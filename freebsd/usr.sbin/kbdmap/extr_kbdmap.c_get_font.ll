; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_get_font.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_get_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sysconfig = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c" font%dx%d = \22%20[-.0-9a-zA-Z_]\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Could not open %s for reading\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_font() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca [20 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* null, i8** %3, align 8
  %8 = load i8*, i8** @sysconfig, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %44, %23, %12
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @fgets(i8* %14, i32 256, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %13
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %20 = load i8, i8* %19, align 16
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 35
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %13

24:                                               ; preds = %18
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %27 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %5, i32* %6, i8* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @free(i8* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %42 = call i8* @strdup(i8* %41)
  store i8* %42, i8** %3, align 8
  br label %43

43:                                               ; preds = %40, %30
  br label %44

44:                                               ; preds = %43, %24
  br label %13

45:                                               ; preds = %13
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @fclose(i32* %46)
  br label %52

48:                                               ; preds = %0
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** @sysconfig, align 8
  %51 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i8*, i8** %3, align 8
  ret i8* %53
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
