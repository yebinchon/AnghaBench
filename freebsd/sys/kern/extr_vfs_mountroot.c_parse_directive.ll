; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_parse_directive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_parse_directive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c".ask\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".md\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".onfail\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".timeout\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"mountroot: invalid directive `%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @parse_directive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_directive(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = call i32 @parse_token(i8** %6, i8** %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %54

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8**, i8*** %3, align 8
  %18 = call i32 @parse_dir_ask(i8** %17)
  store i32 %18, i32* %5, align 4
  br label %49

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8**, i8*** %3, align 8
  %25 = call i32 @parse_dir_md(i8** %24)
  store i32 %25, i32* %5, align 4
  br label %48

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8**, i8*** %3, align 8
  %32 = call i32 @parse_dir_onfail(i8** %31)
  store i32 %32, i32* %5, align 4
  br label %47

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8**, i8*** %3, align 8
  %39 = call i32 @parse_dir_timeout(i8** %38)
  store i32 %39, i32* %5, align 4
  br label %46

40:                                               ; preds = %33
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  %43 = load i8**, i8*** %3, align 8
  %44 = call i32 @parse_skipto(i8** %43, i8 signext 10)
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %40, %37
  br label %47

47:                                               ; preds = %46, %30
  br label %48

48:                                               ; preds = %47, %23
  br label %49

49:                                               ; preds = %48, %16
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* @M_TEMP, align 4
  %52 = call i32 @free(i8* %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %10
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @parse_token(i8**, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_dir_ask(i8**) #1

declare dso_local i32 @parse_dir_md(i8**) #1

declare dso_local i32 @parse_dir_onfail(i8**) #1

declare dso_local i32 @parse_dir_timeout(i8**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @parse_skipto(i8**, i8 signext) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
