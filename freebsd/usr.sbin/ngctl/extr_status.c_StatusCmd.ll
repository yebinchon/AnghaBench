; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_status.c_StatusCmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_status.c_StatusCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@NG_TEXTRESPONSE = common dso_local global i32 0, align 4
@CMDRTN_USAGE = common dso_local global i32 0, align 4
@csock = common dso_local global i32 0, align 4
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_TEXT_STATUS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"send msg\00", align 1
@CMDRTN_ERROR = common dso_local global i32 0, align 4
@NGF_RESP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"No status available for \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Status for \22%s\22:\0A%s\0A\00", align 1
@CMDRTN_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @StatusCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StatusCmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @NG_TEXTRESPONSE, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 16, %14
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = bitcast i32* %17 to %struct.ng_mesg*
  store %struct.ng_mesg* %18, %struct.ng_mesg** %8, align 8
  %19 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %20 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %28 [
    i32 2, label %24
  ]

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %10, align 8
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @CMDRTN_USAGE, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %73

30:                                               ; preds = %24
  %31 = load i32, i32* @csock, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %34 = load i32, i32* @NGM_TEXT_STATUS, align 4
  %35 = call i64 @NgSendMsg(i32 %31, i8* %32, i32 %33, i32 %34, i32* null, i32 0)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i32, i32* @errno, align 4
  switch i32 %38, label %40 [
    i32 128, label %39
  ]

39:                                               ; preds = %37
  store i32 1, i32* %11, align 4
  br label %43

40:                                               ; preds = %37
  %41 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @CMDRTN_ERROR, align 4
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %73

43:                                               ; preds = %39
  br label %61

44:                                               ; preds = %30
  %45 = load i32, i32* @csock, align 4
  %46 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %47 = mul nuw i64 4, %15
  %48 = trunc i64 %47 to i32
  %49 = call i64 @NgRecvMsg(i32 %45, %struct.ng_mesg* %46, i32 %48, i32* null)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %44
  %52 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %53 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @NGF_RESP, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51, %44
  store i32 1, i32* %11, align 4
  br label %60

60:                                               ; preds = %59, %51
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  br label %71

67:                                               ; preds = %61
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %68, i8* %69)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* @CMDRTN_OK, align 4
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %73

73:                                               ; preds = %71, %40, %28
  %74 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @NgSendMsg(i32, i8*, i32, i32, i32*, i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i64 @NgRecvMsg(i32, %struct.ng_mesg*, i32, i32*) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
