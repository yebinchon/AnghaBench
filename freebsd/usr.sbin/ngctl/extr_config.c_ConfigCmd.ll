; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_config.c_ConfigCmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_config.c_ConfigCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@NG_TEXTRESPONSE = common dso_local global i32 0, align 4
@CMDRTN_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@csock = common dso_local global i32 0, align 4
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_TEXT_CONFIG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"send msg\00", align 1
@CMDRTN_ERROR = common dso_local global i32 0, align 4
@NGF_RESP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"No config available for \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Config for \22%s\22:\0A%s\0A\00", align 1
@CMDRTN_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @ConfigCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConfigCmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @NG_TEXTRESPONSE, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 16, %16
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = bitcast i32* %19 to %struct.ng_mesg*
  store %struct.ng_mesg* %20, %struct.ng_mesg** %8, align 8
  %21 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %22 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %9, align 8
  %25 = load i32, i32* @NG_TEXTRESPONSE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @CMDRTN_USAGE, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %112

32:                                               ; preds = %2
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %10, align 8
  store i8 0, i8* %27, align 16
  store i32 2, i32* %13, align 4
  br label %36

36:                                               ; preds = %52, %32
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @strcat(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strcat(i8* %27, i8* %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %36

55:                                               ; preds = %36
  %56 = load i8, i8* %27, align 16
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* @csock, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %63 = load i32, i32* @NGM_TEXT_CONFIG, align 4
  %64 = call i64 @strlen(i8* %27)
  %65 = add nsw i64 %64, 1
  %66 = call i32 @NgSendMsg(i32 %60, i8* %61, i32 %62, i32 %63, i8* %27, i64 %65)
  store i32 %66, i32* %13, align 4
  br label %73

67:                                               ; preds = %55
  %68 = load i32, i32* @csock, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %71 = load i32, i32* @NGM_TEXT_CONFIG, align 4
  %72 = call i32 @NgSendMsg(i32 %68, i8* %69, i32 %70, i32 %71, i8* null, i64 0)
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %67, %59
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* @errno, align 4
  switch i32 %77, label %79 [
    i32 128, label %78
  ]

78:                                               ; preds = %76
  store i32 1, i32* %12, align 4
  br label %82

79:                                               ; preds = %76
  %80 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @CMDRTN_ERROR, align 4
  store i32 %81, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %112

82:                                               ; preds = %78
  br label %100

83:                                               ; preds = %73
  %84 = load i32, i32* @csock, align 4
  %85 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %86 = mul nuw i64 4, %17
  %87 = trunc i64 %86 to i32
  %88 = call i64 @NgRecvMsg(i32 %84, %struct.ng_mesg* %85, i32 %87, i32* null)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %83
  %91 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %92 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @NGF_RESP, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90, %83
  store i32 1, i32* %12, align 4
  br label %99

99:                                               ; preds = %98, %90
  br label %100

100:                                              ; preds = %99, %82
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %104)
  br label %110

106:                                              ; preds = %100
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %107, i8* %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* @CMDRTN_OK, align 4
  store i32 %111, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %112

112:                                              ; preds = %110, %79, %30
  %113 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @NgSendMsg(i32, i8*, i32, i32, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

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
