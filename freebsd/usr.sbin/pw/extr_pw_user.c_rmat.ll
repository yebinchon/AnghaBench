; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_rmat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_rmat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"/var/at/jobs\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".lock\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"/usr/bin/atrm %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rmat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmat(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = call i32* @opendir(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %54

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %50, %11
  %13 = load i32*, i32** %3, align 8
  %14 = call %struct.dirent* @readdir(i32* %13)
  store %struct.dirent* %14, %struct.dirent** %4, align 8
  %15 = icmp ne %struct.dirent* %14, null
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = load %struct.dirent*, %struct.dirent** %4, align 8
  %18 = getelementptr inbounds %struct.dirent, %struct.dirent* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strncmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %16
  %23 = load %struct.dirent*, %struct.dirent** %4, align 8
  %24 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @stat(i8* %25, %struct.stat* %5)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @S_ISDIR(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %2, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i32, i32* @MAXPATHLEN, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %6, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %7, align 8
  %43 = trunc i64 %40 to i32
  %44 = load %struct.dirent*, %struct.dirent** %4, align 8
  %45 = getelementptr inbounds %struct.dirent, %struct.dirent* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @snprintf(i8* %42, i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  %48 = call i32 @system(i8* %42)
  %49 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %49)
  br label %50

50:                                               ; preds = %38, %33, %28, %22, %16
  br label %12

51:                                               ; preds = %12
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @closedir(i32* %52)
  br label %54

54:                                               ; preds = %51, %1
  ret void
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @system(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
