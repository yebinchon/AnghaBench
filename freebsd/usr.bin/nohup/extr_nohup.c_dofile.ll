; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/nohup/extr_nohup.c_dofile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/nohup/extr_nohup.c_dofile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@FILENAME = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@EXIT_MISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"can't open a nohup.out file\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"appending output to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dofile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dofile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @MAXPATHLEN, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = load i8*, i8** @FILENAME, align 8
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @O_RDWR, align 4
  %12 = load i32, i32* @O_CREAT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @O_APPEND, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @S_IRUSR, align 4
  %17 = load i32, i32* @S_IWUSR, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @open(i8* %10, i32 %15, i32 %18)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  br label %54

23:                                               ; preds = %0
  %24 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = trunc i64 %6 to i32
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** @FILENAME, align 8
  %35 = call i64 @snprintf(i8* %8, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %33, i8* %34)
  %36 = icmp ult i64 %35, %6
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  store i8* %8, i8** %4, align 8
  %38 = load i32, i32* @O_RDWR, align 4
  %39 = load i32, i32* @O_CREAT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @O_APPEND, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @S_IRUSR, align 4
  %44 = load i32, i32* @S_IWUSR, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @open(i8* %8, i32 %42, i32 %45)
  store i32 %46, i32* %1, align 4
  %47 = load i32, i32* %1, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %54

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %31, %26, %23
  %52 = load i32, i32* @EXIT_MISC, align 4
  %53 = call i32 @errx(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %49, %22
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @STDOUT_FILENO, align 4
  %57 = call i32 @dup2(i32 %55, i32 %56)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EXIT_MISC, align 4
  %61 = call i32 @err(i32 %60, i32* null)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* @stderr, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  %66 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %66)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @dup2(i32, i32) #2

declare dso_local i32 @err(i32, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
