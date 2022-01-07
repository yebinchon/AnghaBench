; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_args.c_set_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_args.c_set_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@set_profile.prof = internal global [12 x i8] c".indent.pro\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@option_source = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Command line\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_profile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @PATH_MAX, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = trunc i64 %7 to i32
  %14 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %9, i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @set_profile.prof, i64 0, i64 0))
  br label %21

16:                                               ; preds = %1
  %17 = trunc i64 %7 to i32
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %9, i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %16, %12
  store i8* %9, i8** @option_source, align 8
  %22 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %22, i32** %3, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @scan_profile(i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @fclose(i32* %27)
  br label %29

29:                                               ; preds = %24, %21
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @set_profile.prof, i64 0, i64 0), i8** @option_source, align 8
  %30 = call i32* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @set_profile.prof, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %30, i32** %3, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @scan_profile(i32* %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @fclose(i32* %35)
  br label %37

37:                                               ; preds = %32, %29
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** @option_source, align 8
  %38 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %38)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @scan_profile(i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
