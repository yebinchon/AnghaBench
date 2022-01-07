; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_create_newfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_create_newfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@dobackup = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@suffix = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: backup filename too long\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"install: %s -> %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"rename: %s to %s\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@NOCHANGEBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.stat*)* @create_newfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_newfile(i8* %0, i32 %1, %struct.stat* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.stat* %2, %struct.stat** %6, align 8
  %11 = load i32, i32* @MAXPATHLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %3
  %18 = load i64, i64* @dobackup, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %17
  %21 = load i32, i32* @MAXPATHLEN, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** @suffix, align 8
  %24 = call i64 @snprintf(i8* %14, i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23)
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = load i8*, i8** @suffix, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = add i64 %26, %28
  %30 = icmp ne i64 %24, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load i32, i32* @errno, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* @errno, align 4
  %34 = load i32, i32* @EX_OSERR, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @errx(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %31, %20
  %38 = load i32, i32* @MAXPATHLEN, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** @suffix, align 8
  %41 = call i64 @snprintf(i8* %14, i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %40)
  %42 = load i64, i64* @verbose, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %14)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @rename(i8* %48, i8* %14)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* @errno, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* @errno, align 4
  %54 = load i32, i32* @EX_OSERR, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @err(i32 %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %55, i8* %14)
  br label %57

57:                                               ; preds = %51, %47
  br label %65

58:                                               ; preds = %17
  %59 = load i8*, i8** %4, align 8
  %60 = call i64 @unlink(i8* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @errno, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %62, %58
  br label %65

65:                                               ; preds = %64, %57
  br label %66

66:                                               ; preds = %65, %3
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* @O_CREAT, align 4
  %69 = load i32, i32* @O_RDWR, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @O_TRUNC, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @S_IRUSR, align 4
  %74 = load i32, i32* @S_IWUSR, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @open(i8* %67, i32 %72, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %66
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* @errno, align 4
  br label %84

84:                                               ; preds = %82, %79, %66
  %85 = load i32, i32* %10, align 4
  %86 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %86)
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

declare dso_local i64 @rename(i8*, i8*) #2

declare dso_local i32 @err(i32, i8*, i8*, i8*) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
