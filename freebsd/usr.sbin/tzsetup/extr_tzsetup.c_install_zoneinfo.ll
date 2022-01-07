; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/tzsetup/extr_tzsetup.c_install_zoneinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/tzsetup/extr_tzsetup.c_install_zoneinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@path_zoneinfo = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"%s/%s name too long\00", align 1
@reallydoit = common dso_local global i64 0, align 8
@DITEM_FAILURE = common dso_local global i32 0, align 4
@path_db = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @install_zoneinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_zoneinfo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @MAXPATHLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = trunc i64 %8 to i32
  %12 = load i8*, i8** @path_zoneinfo, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @snprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13)
  %15 = icmp uge i64 %14, %8
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i8*, i8** @path_zoneinfo, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8* %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = call i32 @install_zoneinfo_file(i8* %10)
  store i32 %21, i32* %3, align 4
  %22 = load i64, i64* @reallydoit, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @DITEM_FAILURE, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i32, i32* @path_db, align 4
  %31 = call i32* @fopen(i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %31, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32*, i32** %4, align 8
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @fprintf(i32* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @fclose(i32* %37)
  br label %39

39:                                               ; preds = %33, %29
  br label %40

40:                                               ; preds = %39, %24, %20
  %41 = load i32, i32* %3, align 4
  %42 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %42)
  ret i32 %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @errx(i32, i8*, i8*, i8*) #2

declare dso_local i32 @install_zoneinfo_file(i8*) #2

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*) #2

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
