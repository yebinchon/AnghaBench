; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reflog.c_reflog_expire_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reflog.c_reflog_expire_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reflog_expire_cfg = type { i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"reflogexpire\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"reflogexpireunreachable\00", align 1
@default_reflog_expire = common dso_local global i8* null, align 8
@default_reflog_expire_unreachable = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @reflog_expire_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reflog_expire_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.reflog_expire_cfg*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @parse_config_key(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, i32* %10, i8** %9)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @git_default_config(i8* %18, i8* %19, i8* %20)
  store i32 %21, i32* %4, align 4
  br label %78

22:                                               ; preds = %3
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  store i32 129, i32* %12, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @git_config_expiry_date(i8** %11, i8* %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %78

32:                                               ; preds = %26
  br label %50

33:                                               ; preds = %22
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  store i32 128, i32* %12, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @git_config_expiry_date(i8** %11, i8* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %78

43:                                               ; preds = %37
  br label %49

44:                                               ; preds = %33
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @git_default_config(i8* %45, i8* %46, i8* %47)
  store i32 %48, i32* %4, align 4
  br label %78

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  switch i32 %54, label %59 [
    i32 129, label %55
    i32 128, label %57
  ]

55:                                               ; preds = %53
  %56 = load i8*, i8** %11, align 8
  store i8* %56, i8** @default_reflog_expire, align 8
  br label %59

57:                                               ; preds = %53
  %58 = load i8*, i8** %11, align 8
  store i8* %58, i8** @default_reflog_expire_unreachable, align 8
  br label %59

59:                                               ; preds = %53, %57, %55
  store i32 0, i32* %4, align 4
  br label %78

60:                                               ; preds = %50
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call %struct.reflog_expire_cfg* @find_cfg_ent(i8* %61, i32 %62)
  store %struct.reflog_expire_cfg* %63, %struct.reflog_expire_cfg** %13, align 8
  %64 = load %struct.reflog_expire_cfg*, %struct.reflog_expire_cfg** %13, align 8
  %65 = icmp ne %struct.reflog_expire_cfg* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %78

67:                                               ; preds = %60
  %68 = load i32, i32* %12, align 4
  switch i32 %68, label %77 [
    i32 129, label %69
    i32 128, label %73
  ]

69:                                               ; preds = %67
  %70 = load i8*, i8** %11, align 8
  %71 = load %struct.reflog_expire_cfg*, %struct.reflog_expire_cfg** %13, align 8
  %72 = getelementptr inbounds %struct.reflog_expire_cfg, %struct.reflog_expire_cfg* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %77

73:                                               ; preds = %67
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.reflog_expire_cfg*, %struct.reflog_expire_cfg** %13, align 8
  %76 = getelementptr inbounds %struct.reflog_expire_cfg, %struct.reflog_expire_cfg* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %67, %73, %69
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %66, %59, %44, %42, %31, %17
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @parse_config_key(i8*, i8*, i8**, i32*, i8**) #1

declare dso_local i32 @git_default_config(i8*, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @git_config_expiry_date(i8**, i8*, i8*) #1

declare dso_local %struct.reflog_expire_cfg* @find_cfg_ent(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
