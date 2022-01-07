; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_msg.c_MsgCmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_msg.c_MsgCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@CMDRTN_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@CMDRTN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@csock = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"send msg\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@CMDRTN_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @MsgCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MsgCmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @CMDRTN_USAGE, align 4
  store i32 %16, i32* %3, align 4
  br label %103

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  store i32 1, i32* %10, align 4
  store i32 3, i32* %9, align 4
  br label %24

24:                                               ; preds = %38, %17
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load i32, i32* %10, align 4
  %43 = call i8* @malloc(i32 %42)
  store i8* %43, i8** %6, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @CMDRTN_ERROR, align 4
  store i32 %47, i32* %3, align 4
  br label %103

48:                                               ; preds = %41
  %49 = load i8*, i8** %6, align 8
  store i8 0, i8* %49, align 1
  store i32 3, i32* %9, align 4
  br label %50

50:                                               ; preds = %70, %48
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i32, i32* %10, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = sub nsw i32 %60, %62
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @snprintf(i8* %59, i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %50

73:                                               ; preds = %50
  %74 = load i64, i64* @csock, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i64 @NgSendAsciiMsg(i64 %74, i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %76, i8* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @free(i8* %81)
  %83 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @CMDRTN_ERROR, align 4
  store i32 %84, i32* %3, align 4
  br label %103

85:                                               ; preds = %73
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @free(i8* %86)
  %88 = call i32 @FD_ZERO(i32* %12)
  %89 = load i64, i64* @csock, align 8
  %90 = call i32 @FD_SET(i64 %89, i32* %12)
  %91 = call i32 @memset(%struct.timeval* %11, i32 0, i32 4)
  %92 = load i64, i64* @csock, align 8
  %93 = add nsw i64 %92, 1
  %94 = call i32 @select(i64 %93, i32* %12, i32* null, i32* null, %struct.timeval* %11)
  switch i32 %94, label %99 [
    i32 -1, label %95
    i32 0, label %98
  ]

95:                                               ; preds = %85
  %96 = load i32, i32* @EX_OSERR, align 4
  %97 = call i32 @err(i32 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %98

98:                                               ; preds = %85, %95
  br label %101

99:                                               ; preds = %85
  %100 = call i32 (...) @MsgRead()
  br label %101

101:                                              ; preds = %99, %98
  %102 = load i32, i32* @CMDRTN_OK, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %80, %45, %15
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @NgSendAsciiMsg(i64, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @memset(%struct.timeval*, i32, i32) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @MsgRead(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
