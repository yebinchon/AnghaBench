; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_main.c_DoInteractive.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_main.c_DoInteractive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32*)* }
%struct.timeval = type { i32 }

@csock = common dso_local global i32 0, align 4
@dsock = common dso_local global i32 0, align 4
@help_cmd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PROMPT = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LINE_MAX = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@CMDRTN_QUIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @DoInteractive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoInteractive() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @csock, align 4
  %8 = load i32, i32* @dsock, align 4
  %9 = call i32 @MAX(i32 %7, i32 %8)
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %1, align 4
  %11 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @help_cmd, i32 0, i32 0), align 8
  %12 = call i32 %11(i32 0, i32* null)
  br label %13

13:                                               ; preds = %0, %71
  %14 = call i32 @FD_ZERO(i32* %3)
  %15 = load i32, i32* @csock, align 4
  %16 = call i32 @FD_SET(i32 %15, i32* %3)
  %17 = load i32, i32* @dsock, align 4
  %18 = call i32 @FD_SET(i32 %17, i32* %3)
  %19 = call i32 @memset(%struct.timeval* %2, i32 0, i32 4)
  %20 = load i32, i32* %1, align 4
  %21 = call i64 @select(i32 %20, i32* %3, i32* null, i32* null, %struct.timeval* %2)
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %13
  %24 = load i8*, i8** @PROMPT, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @stdout, align 4
  %27 = call i32 @fflush(i32 %26)
  %28 = call i32 @FD_ZERO(i32* %3)
  %29 = call i32 @FD_SET(i32 0, i32* %3)
  %30 = load i32, i32* @csock, align 4
  %31 = call i32 @FD_SET(i32 %30, i32* %3)
  %32 = load i32, i32* @dsock, align 4
  %33 = call i32 @FD_SET(i32 %32, i32* %3)
  %34 = load i32, i32* %1, align 4
  %35 = call i64 @select(i32 %34, i32* %3, i32* null, i32* null, %struct.timeval* null)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i32, i32* @EX_OSERR, align 4
  %39 = call i32 @err(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %23
  %41 = call i64 @FD_ISSET(i32 0, i32* %3)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  br label %46

46:                                               ; preds = %45, %13
  %47 = call i32 @ReadSockets(i32* %3)
  %48 = call i64 @FD_ISSET(i32 0, i32* %3)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load i32, i32* @LINE_MAX, align 4
  %52 = zext i32 %51 to i64
  %53 = call i8* @llvm.stacksave()
  store i8* %53, i8** %4, align 8
  %54 = alloca i8, i64 %52, align 16
  store i64 %52, i64* %5, align 8
  %55 = trunc i64 %52 to i32
  %56 = load i32, i32* @stdin, align 4
  %57 = call i32* @fgets(i8* %54, i32 %55, i32 %56)
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 3, i32* %6, align 4
  br label %67

61:                                               ; preds = %50
  %62 = call i64 @DoParseCommand(i8* %54)
  %63 = load i64, i64* @CMDRTN_QUIT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 3, i32* %6, align 4
  br label %67

66:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %65, %59
  %68 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %6, align 4
  switch i32 %69, label %75 [
    i32 0, label %70
    i32 3, label %72
  ]

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70, %46
  br label %13

72:                                               ; preds = %67
  %73 = load i64, i64* @CMDRTN_QUIT, align 8
  %74 = trunc i64 %73 to i32
  ret i32 %74

75:                                               ; preds = %67
  unreachable
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @memset(%struct.timeval*, i32, i32) #1

declare dso_local i64 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @ReadSockets(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i64 @DoParseCommand(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
