; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ugidfw/extr_ugidfw.c_list_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ugidfw/extr_ugidfw.c_list_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_bsdextended_rule = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"unable to get rule slots; mac_bsdextended.ko may not be loaded\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"bsde_get_rule_slots: %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"bsde_get_rule_count: %s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%d slots, %d rules\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rule %d: %s\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"unable to translate rule %d to string\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%d %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_rules() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mac_bsdextended_rule, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @BUFSIZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  %13 = load i32, i32* @BUFSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %3, align 8
  %16 = load i32, i32* @BUFSIZ, align 4
  %17 = call i32 @bsde_get_rule_slots(i32 %16, i8* %12)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %0
  %21 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %23

23:                                               ; preds = %20, %0
  %24 = load i32, i32* @BUFSIZ, align 4
  %25 = call i32 @bsde_get_rule_count(i32 %24, i8* %12)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %31, i32 %32)
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %59, %30
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @BUFSIZ, align 4
  %41 = call i32 @bsde_get_rule(i32 %39, %struct.mac_bsdextended_rule* %4, i32 %40, i8* %12)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %48 [
    i32 -2, label %43
    i32 -1, label %44
    i32 0, label %47
  ]

43:                                               ; preds = %38
  br label %59

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %45, i8* %12)
  br label %59

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %38, %47
  %49 = load i32, i32* @BUFSIZ, align 4
  %50 = call i32 @bsde_rule_to_string(%struct.mac_bsdextended_rule* %4, i8* %15, i32 %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  br label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %56, i8* %15)
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %44, %43
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %34

62:                                               ; preds = %34
  %63 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %63)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bsde_get_rule_slots(i32, i8*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

declare dso_local i32 @bsde_get_rule_count(i32, i8*) #2

declare dso_local i32 @printf(i8*, i32, ...) #2

declare dso_local i32 @bsde_get_rule(i32, %struct.mac_bsdextended_rule*, i32, i8*) #2

declare dso_local i32 @bsde_rule_to_string(%struct.mac_bsdextended_rule*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
