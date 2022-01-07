; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_finalize_deferred_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_finalize_deferred_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.wt_status = type { i64, i64, i64 }

@status_format = common dso_local global i64 0, align 8
@STATUS_FORMAT_PORCELAIN = common dso_local global i64 0, align 8
@STATUS_FORMAT_PORCELAIN_V2 = common dso_local global i64 0, align 8
@STATUS_FORMAT_NONE = common dso_local global i64 0, align 8
@STATUS_FORMAT_UNSPECIFIED = common dso_local global i64 0, align 8
@STATUS_FORMAT_LONG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"--long and -z are incompatible\00", align 1
@status_deferred_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AHEAD_BEHIND_UNSPECIFIED = common dso_local global i64 0, align 8
@AHEAD_BEHIND_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @finalize_deferred_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finalize_deferred_config(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  %3 = alloca i32, align 4
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %4 = load i64, i64* @status_format, align 8
  %5 = load i64, i64* @STATUS_FORMAT_PORCELAIN, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i64, i64* @status_format, align 8
  %9 = load i64, i64* @STATUS_FORMAT_PORCELAIN_V2, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %13 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %7, %1
  %18 = phi i1 [ false, %7 ], [ false, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %21 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %17
  %25 = load i64, i64* @status_format, align 8
  %26 = load i64, i64* @STATUS_FORMAT_NONE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @status_format, align 8
  %30 = load i64, i64* @STATUS_FORMAT_UNSPECIFIED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %24
  %33 = load i64, i64* @STATUS_FORMAT_PORCELAIN, align 8
  store i64 %33, i64* @status_format, align 8
  br label %42

34:                                               ; preds = %28
  %35 = load i64, i64* @status_format, align 8
  %36 = load i64, i64* @STATUS_FORMAT_LONG, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @die(i32 %39)
  br label %41

41:                                               ; preds = %38, %34
  br label %42

42:                                               ; preds = %41, %32
  br label %43

43:                                               ; preds = %42, %17
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i64, i64* @status_format, align 8
  %48 = load i64, i64* @STATUS_FORMAT_UNSPECIFIED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @status_deferred_config, i32 0, i32 0), align 8
  store i64 %51, i64* @status_format, align 8
  br label %52

52:                                               ; preds = %50, %46, %43
  %53 = load i64, i64* @status_format, align 8
  %54 = load i64, i64* @STATUS_FORMAT_UNSPECIFIED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* @STATUS_FORMAT_NONE, align 8
  store i64 %57, i64* @status_format, align 8
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %63 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @status_deferred_config, i32 0, i32 1), align 8
  %68 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %69 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %61, %58
  %71 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %72 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %77 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %83 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AHEAD_BEHIND_UNSPECIFIED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @status_deferred_config, i32 0, i32 2), align 8
  %89 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %90 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %81, %78
  %92 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %93 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @AHEAD_BEHIND_UNSPECIFIED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i64, i64* @AHEAD_BEHIND_FULL, align 8
  %99 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %100 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %91
  ret void
}

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
