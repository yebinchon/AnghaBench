; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ugidfw/extr_ugidfw.c_set_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ugidfw/extr_ugidfw.c_set_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_bsdextended_rule = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_rule(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mac_bsdextended_rule, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %13 = load i32, i32* @BUFSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (...) @usage()
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strtol(i8* %24, i8** %11, i32 10)
  store i64 %25, i64* %8, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 (...) @usage()
  br label %32

32:                                               ; preds = %30, %21
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = trunc i64 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %8, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38, %32
  %42 = call i32 (...) @usage()
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i64, i64* %8, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %3, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i8**, i8*** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i32, i32* @BUFSIZ, align 4
  %51 = call i32 @bsde_parse_rule(i32 %47, i8** %49, %struct.mac_bsdextended_rule* %7, i32 %50, i8* %16)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 1, i32* %12, align 4
  br label %65

56:                                               ; preds = %43
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @BUFSIZ, align 4
  %59 = call i32 @bsde_set_rule(i32 %57, %struct.mac_bsdextended_rule* %7, i32 %58, i8* %16)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 1, i32* %12, align 4
  br label %65

64:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %62, %54
  %66 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %12, align 4
  switch i32 %67, label %69 [
    i32 0, label %68
    i32 1, label %68
  ]

68:                                               ; preds = %65, %65
  ret void

69:                                               ; preds = %65
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usage(...) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @bsde_parse_rule(i32, i8**, %struct.mac_bsdextended_rule*, i32, i8*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @bsde_set_rule(i32, %struct.mac_bsdextended_rule*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
