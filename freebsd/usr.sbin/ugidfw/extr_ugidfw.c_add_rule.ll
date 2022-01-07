; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ugidfw/extr_ugidfw.c_add_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ugidfw/extr_ugidfw.c_add_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_bsdextended_rule = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Added rule, but unable to print string.\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_rule(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mac_bsdextended_rule, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %12 = load i32, i32* @BUFSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @BUFSIZ, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i8**, i8*** %4, align 8
  %21 = load i32, i32* @BUFSIZ, align 4
  %22 = call i32 @bsde_parse_rule(i32 %19, i8** %20, %struct.mac_bsdextended_rule* %8, i32 %21, i8* %15)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 1, i32* %11, align 4
  br label %44

27:                                               ; preds = %2
  %28 = load i32, i32* @BUFSIZ, align 4
  %29 = call i32 @bsde_add_rule(i32* %10, %struct.mac_bsdextended_rule* %8, i32 %28, i8* %15)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 1, i32* %11, align 4
  br label %44

34:                                               ; preds = %27
  %35 = load i32, i32* @BUFSIZ, align 4
  %36 = call i32 @bsde_rule_to_string(%struct.mac_bsdextended_rule* %8, i8* %18, i32 %35)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %41, i8* %18)
  br label %43

43:                                               ; preds = %40, %38
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %43, %32, %25
  %45 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %11, align 4
  switch i32 %46, label %48 [
    i32 0, label %47
    i32 1, label %47
  ]

47:                                               ; preds = %44, %44
  ret void

48:                                               ; preds = %44
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bsde_parse_rule(i32, i8**, %struct.mac_bsdextended_rule*, i32, i8*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32 @bsde_add_rule(i32*, %struct.mac_bsdextended_rule*, i32, i8*) #2

declare dso_local i32 @bsde_rule_to_string(%struct.mac_bsdextended_rule*, i8*, i32) #2

declare dso_local i32 @printf(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
