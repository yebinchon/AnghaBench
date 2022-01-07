; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sysvmsg/extr_msgtest.c_receiver.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sysvmsg/extr_msgtest.c_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_mymsg = type { i8*, i32 }

@msgkey = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"receiver: msgget\00", align 1
@MTYPE_1 = common dso_local global i32 0, align 4
@m1_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"receiver: msgrcv 1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"receiver: message 1 data isn't correct\00", align 1
@MTYPE_1_ACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"receiver: msgsnd ack 1\00", align 1
@MTYPE_2 = common dso_local global i32 0, align 4
@m2_str = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"receiver: msgrcv 2\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"receiver: message 2 data isn't correct\00", align 1
@MTYPE_2_ACK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"receiver: msgsnd ack 2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @receiver() #0 {
  %1 = alloca %struct.test_mymsg, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @msgkey, align 4
  %4 = call i32 @msgget(i32 %3, i32 0)
  store i32 %4, i32* %2, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @MTYPE_1, align 4
  %11 = call i64 @msgrcv(i32 %9, %struct.test_mymsg* %1, i32 8, i32 %10, i32 0)
  %12 = load i32, i32* @m1_str, align 4
  %13 = call i64 @strlen(i32 %12)
  %14 = add nsw i64 %13, 1
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %8
  %19 = getelementptr inbounds %struct.test_mymsg, %struct.test_mymsg* %1, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = getelementptr inbounds %struct.test_mymsg, %struct.test_mymsg* %1, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @m1_str, align 4
  %25 = call i64 @strcmp(i8* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %18
  %30 = load i32, i32* @MTYPE_1_ACK, align 4
  %31 = getelementptr inbounds %struct.test_mymsg, %struct.test_mymsg* %1, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @m1_str, align 4
  %34 = call i64 @strlen(i32 %33)
  %35 = add nsw i64 %34, 1
  %36 = call i32 @msgsnd(i32 %32, %struct.test_mymsg* %1, i64 %35, i32 0)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %29
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @MTYPE_2, align 4
  %43 = call i64 @msgrcv(i32 %41, %struct.test_mymsg* %1, i32 8, i32 %42, i32 0)
  %44 = load i32, i32* @m2_str, align 4
  %45 = call i64 @strlen(i32 %44)
  %46 = add nsw i64 %45, 1
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %40
  %51 = getelementptr inbounds %struct.test_mymsg, %struct.test_mymsg* %1, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = getelementptr inbounds %struct.test_mymsg, %struct.test_mymsg* %1, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* @m2_str, align 4
  %57 = call i64 @strcmp(i8* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = call i32 @err(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %50
  %62 = load i32, i32* @MTYPE_2_ACK, align 4
  %63 = getelementptr inbounds %struct.test_mymsg, %struct.test_mymsg* %1, i32 0, i32 1
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @m2_str, align 4
  %66 = call i64 @strlen(i32 %65)
  %67 = add nsw i64 %66, 1
  %68 = call i32 @msgsnd(i32 %64, %struct.test_mymsg* %1, i64 %67, i32 0)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %61
  %73 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @msgget(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @msgrcv(i32, %struct.test_mymsg*, i32, i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @msgsnd(i32, %struct.test_mymsg*, i64, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
