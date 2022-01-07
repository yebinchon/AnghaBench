; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automountd.c_pick_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automountd.c_pick_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**)* @pick_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pick_option(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i8* null, i8** %8, align 8
  store i32 1, i32* %9, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %14, 1
  %16 = call i8* @calloc(i32 1, i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %2
  br label %22

22:                                               ; preds = %51, %21
  %23 = load i8**, i8*** %4, align 8
  %24 = call i8* @strsep(i8** %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = call i64 @strncmp(i8* %27, i8* %28, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = call i8* @checked_strdup(i8* %38)
  store i8* %39, i8** %8, align 8
  br label %51

40:                                               ; preds = %26
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @strcat(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %47

46:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strcat(i8* %48, i8* %49)
  br label %51

51:                                               ; preds = %47, %33
  br label %22

52:                                               ; preds = %22
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i8*, i8** %7, align 8
  %56 = load i8**, i8*** %4, align 8
  store i8* %55, i8** %56, align 8
  %57 = load i8*, i8** %8, align 8
  ret i8* %57
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @checked_strdup(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
