; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dblookup.c_yp_open_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_dblookup.c_yp_open_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@YP_TRUE = common dso_local global i32 0, align 4
@yp_errno = common dso_local global i32 0, align 4
@YP_BADARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@yp_dir = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@PERM_SECURE = common dso_local global i32 0, align 4
@DB_HASH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@YP_NOMAP = common dso_local global i32 0, align 4
@YP_BADDB = common dso_local global i32 0, align 4
@YP_YPERR = common dso_local global i32 0, align 4
@YP_NODOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @yp_open_db(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load i32, i32* @MAXPATHLEN, align 4
  %11 = add nsw i32 %10, 2
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @YP_TRUE, align 4
  store i32 %15, i32* @yp_errno, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 46
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strchr(i8* %22, i8 signext 47)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %2
  %26 = load i32, i32* @YP_BADARGS, align 4
  store i32 %26, i32* @yp_errno, align 4
  store i32* null, i32** %3, align 8
  store i32 1, i32* %9, align 4
  br label %50

27:                                               ; preds = %21
  %28 = trunc i64 %12 to i32
  %29 = load i8*, i8** @yp_dir, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @snprintf(i8* %14, i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30, i8* %31)
  %33 = load i32, i32* @O_RDONLY, align 4
  %34 = load i32, i32* @PERM_SECURE, align 4
  %35 = load i32, i32* @DB_HASH, align 4
  %36 = call i32* @dbopen(i8* %14, i32 %33, i32 %34, i32 %35, i32* null)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %27
  %40 = load i32, i32* @errno, align 4
  switch i32 %40, label %45 [
    i32 128, label %41
    i32 130, label %43
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* @YP_NOMAP, align 4
  store i32 %42, i32* @yp_errno, align 4
  br label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @YP_BADDB, align 4
  store i32 %44, i32* @yp_errno, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @YP_YPERR, align 4
  store i32 %46, i32* @yp_errno, align 4
  br label %47

47:                                               ; preds = %45, %43, %41
  br label %48

48:                                               ; preds = %47, %27
  %49 = load i32*, i32** %6, align 8
  store i32* %49, i32** %3, align 8
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %25
  %51 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32*, i32** %3, align 8
  ret i32* %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #2

declare dso_local i32* @dbopen(i8*, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
