; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cron/lib/extr_misc.c_in_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cron/lib/extr_misc.c_in_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TEMPSTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @in_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_file(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @MAX_TEMPSTR, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @rewind(i32* %13)
  br label %15

15:                                               ; preds = %45, %2
  %16 = load i32, i32* @MAX_TEMPSTR, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @fgets(i8* %12, i32 %16, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, i8* %12, i64 0
  %22 = load i8, i8* %21, align 16
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = call i32 @strlen(i8* %12)
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %12, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = call i32 @strlen(i8* %12)
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %12, i64 %36
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %33, %25
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @strcmp(i8* %12, i8* %40)
  %42 = icmp eq i64 0, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %48

45:                                               ; preds = %39
  br label %15

46:                                               ; preds = %15
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rewind(i32*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
