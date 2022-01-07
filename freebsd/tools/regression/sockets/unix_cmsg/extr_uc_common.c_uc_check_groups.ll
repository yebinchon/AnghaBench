; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_check_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_check_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64* }

@.str = private unnamed_addr constant [11 x i8] c"%s[%d] %lu\00", align 1
@uc_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%s %d != %d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s %d > %d\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s content is wrong\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s[%d] %lu != %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uc_check_groups(i8* %0, i64* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %27, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i64*, i64** %8, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %19, i32 %25)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %12, align 4
  br label %13

30:                                               ; preds = %13
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 0), align 8
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 0), align 8
  %41 = call i32 (i8*, i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %39, i32 %40)
  store i32 -1, i32* %6, align 4
  br label %103

42:                                               ; preds = %33
  br label %53

43:                                               ; preds = %30
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 0), align 8
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 0), align 8
  %51 = call i32 (i8*, i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %48, i32 %49, i32 %50)
  store i32 -1, i32* %6, align 4
  br label %103

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i64*, i64** %8, align 8
  %55 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 1), align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call i64 @memcmp(i64* %54, i64* %55, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %102

62:                                               ; preds = %53
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 (i8*, i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %98, %62
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %65
  %70 = load i64*, i64** %8, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 1), align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %74, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %69
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i64*, i64** %8, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 1), align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 (i8*, i8*, ...) @uc_logmsgx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %82, i32 %83, i32 %89, i32 %95)
  br label %101

97:                                               ; preds = %69
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %65

101:                                              ; preds = %81, %65
  store i32 -1, i32* %6, align 4
  br label %103

102:                                              ; preds = %53
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %102, %101, %47, %37
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @uc_dbgmsg(i8*, i8*, i32, i32) #1

declare dso_local i32 @uc_logmsgx(i8*, i8*, ...) #1

declare dso_local i64 @memcmp(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
