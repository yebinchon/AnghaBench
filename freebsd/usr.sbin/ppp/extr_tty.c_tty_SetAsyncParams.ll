; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_SetAsyncParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_SetAsyncParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ttydevice = type { i8*, i32 }
%struct.ng_async_cfg = type { i32, i32, i32, i32 }

@NG_PATHSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".:%s\00", align 1
@MAX_MTU = common dso_local global i32 0, align 4
@MAX_MRU = common dso_local global i32 0, align 4
@LogDEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Configure async node at %s\0A\00", align 1
@NGM_ASYNC_COOKIE = common dso_local global i32 0, align 4
@NGM_ASYNC_CMD_SET_CONFIG = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: Can't configure async node at %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.physical*, i32, i32)* @tty_SetAsyncParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_SetAsyncParams(%struct.physical* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.physical*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttydevice*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ng_async_cfg, align 4
  store %struct.physical* %0, %struct.physical** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.physical*, %struct.physical** %4, align 8
  %12 = getelementptr inbounds %struct.physical, %struct.physical* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ttydevice* @device2tty(i32 %13)
  store %struct.ttydevice* %14, %struct.ttydevice** %7, align 8
  %15 = load i32, i32* @NG_PATHSIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.ttydevice*, %struct.ttydevice** %7, align 8
  %20 = call i64 @isngtty(%struct.ttydevice* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %3
  %23 = trunc i64 %16 to i32
  %24 = load %struct.ttydevice*, %struct.ttydevice** %7, align 8
  %25 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @snprintf(i8* %18, i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32 @memset(%struct.ng_async_cfg* %10, i32 0, i32 16)
  %29 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %10, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %30, %31
  %33 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %10, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @MAX_MTU, align 4
  %35 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %10, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @MAX_MRU, align 4
  %37 = getelementptr inbounds %struct.ng_async_cfg, %struct.ng_async_cfg* %10, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @LogDEBUG, align 4
  %39 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %40 = load %struct.ttydevice*, %struct.ttydevice** %7, align 8
  %41 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NGM_ASYNC_COOKIE, align 4
  %44 = load i32, i32* @NGM_ASYNC_CMD_SET_CONFIG, align 4
  %45 = call i64 @NgSendMsg(i32 %42, i8* %18, i32 %43, i32 %44, %struct.ng_async_cfg* %10, i32 16)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %22
  %48 = load i32, i32* @LogWARN, align 4
  %49 = load %struct.physical*, %struct.physical** %4, align 8
  %50 = getelementptr inbounds %struct.physical, %struct.physical* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %54, i8* %18)
  br label %56

56:                                               ; preds = %47, %22
  br label %63

57:                                               ; preds = %3
  %58 = load %struct.physical*, %struct.physical** %4, align 8
  %59 = getelementptr inbounds %struct.physical, %struct.physical* %58, i32 0, i32 0
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @async_SetLinkParams(i32* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %56
  %64 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

declare dso_local %struct.ttydevice* @device2tty(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @isngtty(%struct.ttydevice*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @memset(%struct.ng_async_cfg*, i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*, ...) #1

declare dso_local i64 @NgSendMsg(i32, i8*, i32, i32, %struct.ng_async_cfg*, i32) #1

declare dso_local i32 @async_SetLinkParams(i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
