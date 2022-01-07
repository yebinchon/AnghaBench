; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/su/extr_su.c_ok_to_export.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/su/extr_su.c_ok_to_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ok_to_export.noexport = internal global [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"LOGNAME\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"MAIL\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CDPATH\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"IFS\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"LD_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ok_to_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ok_to_export(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @strlen(i8* %6)
  %8 = icmp sgt i32 %7, 1024
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32* @strchr(i8* %10, i8 signext 61)
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %48

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strncmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 3)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %48

19:                                               ; preds = %14
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @ok_to_export.noexport, i64 0, i64 0), i8*** %4, align 8
  br label %20

20:                                               ; preds = %44, %19
  %21 = load i8**, i8*** %4, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load i8**, i8*** %4, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %5, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 61
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  %36 = load i8*, i8** %3, align 8
  %37 = load i8**, i8*** %4, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @strncmp(i8* %36, i8* %38, i64 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %48

43:                                               ; preds = %35, %24
  br label %44

44:                                               ; preds = %43
  %45 = load i8**, i8*** %4, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %46, i8*** %4, align 8
  br label %20

47:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %42, %18, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
