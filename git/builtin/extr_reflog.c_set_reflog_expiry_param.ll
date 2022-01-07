; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reflog.c_set_reflog_expiry_param.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reflog.c_set_reflog_expiry_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reflog_expire_cfg = type { i32, i32, i32, %struct.reflog_expire_cfg* }
%struct.cmd_reflog_expire_cb = type { i32, i32 }

@EXPIRE_TOTAL = common dso_local global i32 0, align 4
@EXPIRE_UNREACH = common dso_local global i32 0, align 4
@reflog_expire_cfg = common dso_local global %struct.reflog_expire_cfg* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"refs/stash\00", align 1
@default_reflog_expire = common dso_local global i32 0, align 4
@default_reflog_expire_unreachable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd_reflog_expire_cb*, i32, i8*)* @set_reflog_expiry_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_reflog_expiry_param(%struct.cmd_reflog_expire_cb* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.cmd_reflog_expire_cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.reflog_expire_cfg*, align 8
  store %struct.cmd_reflog_expire_cb* %0, %struct.cmd_reflog_expire_cb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @EXPIRE_TOTAL, align 4
  %10 = load i32, i32* @EXPIRE_UNREACH, align 4
  %11 = or i32 %9, %10
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %93

14:                                               ; preds = %3
  %15 = load %struct.reflog_expire_cfg*, %struct.reflog_expire_cfg** @reflog_expire_cfg, align 8
  store %struct.reflog_expire_cfg* %15, %struct.reflog_expire_cfg** %7, align 8
  br label %16

16:                                               ; preds = %50, %14
  %17 = load %struct.reflog_expire_cfg*, %struct.reflog_expire_cfg** %7, align 8
  %18 = icmp ne %struct.reflog_expire_cfg* %17, null
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = load %struct.reflog_expire_cfg*, %struct.reflog_expire_cfg** %7, align 8
  %21 = getelementptr inbounds %struct.reflog_expire_cfg, %struct.reflog_expire_cfg* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @wildmatch(i32 %22, i8* %23, i32 0)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @EXPIRE_TOTAL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.reflog_expire_cfg*, %struct.reflog_expire_cfg** %7, align 8
  %33 = getelementptr inbounds %struct.reflog_expire_cfg, %struct.reflog_expire_cfg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cmd_reflog_expire_cb*, %struct.cmd_reflog_expire_cb** %4, align 8
  %36 = getelementptr inbounds %struct.cmd_reflog_expire_cb, %struct.cmd_reflog_expire_cb* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @EXPIRE_UNREACH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.reflog_expire_cfg*, %struct.reflog_expire_cfg** %7, align 8
  %44 = getelementptr inbounds %struct.reflog_expire_cfg, %struct.reflog_expire_cfg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.cmd_reflog_expire_cb*, %struct.cmd_reflog_expire_cb** %4, align 8
  %47 = getelementptr inbounds %struct.cmd_reflog_expire_cb, %struct.cmd_reflog_expire_cb* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %37
  br label %93

49:                                               ; preds = %19
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.reflog_expire_cfg*, %struct.reflog_expire_cfg** %7, align 8
  %52 = getelementptr inbounds %struct.reflog_expire_cfg, %struct.reflog_expire_cfg* %51, i32 0, i32 3
  %53 = load %struct.reflog_expire_cfg*, %struct.reflog_expire_cfg** %52, align 8
  store %struct.reflog_expire_cfg* %53, %struct.reflog_expire_cfg** %7, align 8
  br label %16

54:                                               ; preds = %16
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @EXPIRE_TOTAL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load %struct.cmd_reflog_expire_cb*, %struct.cmd_reflog_expire_cb** %4, align 8
  %65 = getelementptr inbounds %struct.cmd_reflog_expire_cb, %struct.cmd_reflog_expire_cb* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @EXPIRE_UNREACH, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load %struct.cmd_reflog_expire_cb*, %struct.cmd_reflog_expire_cb** %4, align 8
  %73 = getelementptr inbounds %struct.cmd_reflog_expire_cb, %struct.cmd_reflog_expire_cb* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %66
  br label %93

75:                                               ; preds = %54
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @EXPIRE_TOTAL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @default_reflog_expire, align 4
  %82 = load %struct.cmd_reflog_expire_cb*, %struct.cmd_reflog_expire_cb** %4, align 8
  %83 = getelementptr inbounds %struct.cmd_reflog_expire_cb, %struct.cmd_reflog_expire_cb* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @EXPIRE_UNREACH, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @default_reflog_expire_unreachable, align 4
  %91 = load %struct.cmd_reflog_expire_cb*, %struct.cmd_reflog_expire_cb** %4, align 8
  %92 = getelementptr inbounds %struct.cmd_reflog_expire_cb, %struct.cmd_reflog_expire_cb* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %13, %48, %74, %89, %84
  ret void
}

declare dso_local i32 @wildmatch(i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
