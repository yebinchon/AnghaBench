; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_msg.c_MsgRead.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_msg.c_MsgRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i8* }

@NG_PATHSIZ = common dso_local global i32 0, align 4
@csock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"recv incoming message\00", align 1
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_BINARY2ASCII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Rec'd %s %d from \22%s\22:\0A\00", align 1
@NGF_RESP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"No arguments\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Rec'd %s \22%s\22 (%d) from \22%s\22:\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Args:\09%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MsgRead() #0 {
  %1 = alloca %struct.ng_mesg*, align 8
  %2 = alloca %struct.ng_mesg*, align 8
  %3 = alloca %struct.ng_mesg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @NG_PATHSIZ, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32, i32* @csock, align 4
  %12 = call i64 @NgAllocRecvMsg(i32 %11, %struct.ng_mesg** %1, i8* %10)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %108

16:                                               ; preds = %0
  %17 = load i32, i32* @csock, align 4
  %18 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %19 = load i32, i32* @NGM_BINARY2ASCII, align 4
  %20 = load %struct.ng_mesg*, %struct.ng_mesg** %1, align 8
  %21 = load %struct.ng_mesg*, %struct.ng_mesg** %1, align 8
  %22 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 32, %24
  %26 = call i64 @NgSendMsg(i32 %17, i8* %10, i32 %18, i32 %19, %struct.ng_mesg* %20, i64 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @csock, align 4
  %30 = call i64 @NgAllocRecvMsg(i32 %29, %struct.ng_mesg** %2, i8* null)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %28, %16
  %33 = load %struct.ng_mesg*, %struct.ng_mesg** %1, align 8
  %34 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @NGF_RESP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %42 = load %struct.ng_mesg*, %struct.ng_mesg** %1, align 8
  %43 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %45, i8* %10)
  %47 = load %struct.ng_mesg*, %struct.ng_mesg** %1, align 8
  %48 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %64

54:                                               ; preds = %32
  %55 = load %struct.ng_mesg*, %struct.ng_mesg** %1, align 8
  %56 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.ng_mesg*, %struct.ng_mesg** %1, align 8
  %60 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @DumpAscii(i32* %58, i64 %62)
  br label %64

64:                                               ; preds = %54, %52
  %65 = load %struct.ng_mesg*, %struct.ng_mesg** %1, align 8
  %66 = call i32 @free(%struct.ng_mesg* %65)
  store i32 1, i32* %6, align 4
  br label %108

67:                                               ; preds = %28
  %68 = load %struct.ng_mesg*, %struct.ng_mesg** %1, align 8
  %69 = call i32 @free(%struct.ng_mesg* %68)
  %70 = load %struct.ng_mesg*, %struct.ng_mesg** %2, align 8
  %71 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = bitcast i8* %72 to %struct.ng_mesg*
  store %struct.ng_mesg* %73, %struct.ng_mesg** %3, align 8
  %74 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %75 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @NGF_RESP, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %83 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %84 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %88 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %82, i8* %86, i32 %90, i8* %10)
  %92 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %93 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %67
  %99 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %100 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %101)
  br label %105

103:                                              ; preds = %67
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %98
  %106 = load %struct.ng_mesg*, %struct.ng_mesg** %2, align 8
  %107 = call i32 @free(%struct.ng_mesg* %106)
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %105, %64, %14
  %109 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %6, align 4
  switch i32 %110, label %112 [
    i32 0, label %111
    i32 1, label %111
  ]

111:                                              ; preds = %108, %108
  ret void

112:                                              ; preds = %108
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @NgAllocRecvMsg(i32, %struct.ng_mesg**, i8*) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i64 @NgSendMsg(i32, i8*, i32, i32, %struct.ng_mesg*, i64) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @DumpAscii(i32*, i64) #2

declare dso_local i32 @free(%struct.ng_mesg*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
