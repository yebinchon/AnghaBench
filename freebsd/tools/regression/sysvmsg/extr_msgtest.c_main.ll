; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sysvmsg/extr_msgtest.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sysvmsg/extr_msgtest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32, i32 }
%struct.msqid_ds = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.test_mymsg = type { i32, i32 }

@sigsys_handler = common dso_local global i32 0, align 4
@SIGSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"sigaction SIGSYS\00", align 1
@sigchld_handler = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sigaction SIGCHLD\00", align 1
@msgkey = common dso_local global i32 0, align 4
@child_pid = common dso_local global i32 0, align 4
@cleanup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"atexit\00", align 1
@IPC_CREAT = common dso_local global i32 0, align 4
@sender_msqid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"msgget\00", align 1
@IPC_STAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"msgctl IPC_STAT\00", align 1
@IPC_SET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"msgctl IPC_SET\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"IPC_SET of mode didn't hold\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@MTYPE_1 = common dso_local global i32 0, align 4
@m1_str = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"sender: msgsnd 1\00", align 1
@MTYPE_1_ACK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"sender: msgrcv 1 ack\00", align 1
@MTYPE_2 = common dso_local global i32 0, align 4
@m2_str = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"sender: msgsnd 2\00", align 1
@MTYPE_2_ACK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"sender: msgrcv 2 ack\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"sender: received unexpected signal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca %struct.msqid_ds, align 4
  %8 = alloca %struct.test_mymsg, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @usage()
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* @sigsys_handler, align 4
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  %18 = call i32 @sigemptyset(i32* %17)
  %19 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @SIGSYS, align 4
  %21 = call i32 @sigaction(i32 %20, %struct.sigaction* %6, i32* null)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %14
  %26 = load i32, i32* @sigchld_handler, align 4
  %27 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  %29 = call i32 @sigemptyset(i32* %28)
  %30 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @SIGCHLD, align 4
  %32 = call i32 @sigaction(i32 %31, %struct.sigaction* %6, i32* null)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %25
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @ftok(i8* %39, i32 4160)
  store i32 %40, i32* @msgkey, align 4
  %41 = call i32 (...) @getpid()
  store i32 %41, i32* @child_pid, align 4
  %42 = load i32, i32* @cleanup, align 4
  %43 = call i32 @atexit(i32 %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %36
  %48 = load i32, i32* @msgkey, align 4
  %49 = load i32, i32* @IPC_CREAT, align 4
  %50 = or i32 %49, 416
  %51 = call i32 @msgget(i32 %48, i32 %50)
  store i32 %51, i32* @sender_msqid, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %47
  %56 = load i32, i32* @sender_msqid, align 4
  %57 = load i32, i32* @IPC_STAT, align 4
  %58 = call i32 @msgctl(i32 %56, i32 %57, %struct.msqid_ds* %7)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %55
  %63 = call i32 @print_msqid_ds(%struct.msqid_ds* %7, i32 416)
  %64 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %7, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, -512
  %68 = or i32 %67, 384
  %69 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %7, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @sender_msqid, align 4
  %72 = load i32, i32* @IPC_SET, align 4
  %73 = call i32 @msgctl(i32 %71, i32 %72, %struct.msqid_ds* %7)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %62
  %78 = call i32 @bzero(%struct.msqid_ds* %7, i32 4)
  %79 = load i32, i32* @sender_msqid, align 4
  %80 = load i32, i32* @IPC_STAT, align 4
  %81 = call i32 @msgctl(i32 %79, i32 %80, %struct.msqid_ds* %7)
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %77
  %86 = getelementptr inbounds %struct.msqid_ds, %struct.msqid_ds* %7, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 511
  %90 = icmp ne i32 %89, 384
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %85
  %94 = call i32 @print_msqid_ds(%struct.msqid_ds* %7, i32 384)
  %95 = call i32 (...) @fork()
  store i32 %95, i32* @child_pid, align 4
  switch i32 %95, label %100 [
    i32 -1, label %96
    i32 0, label %98
  ]

96:                                               ; preds = %93
  %97 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %93, %96
  %99 = call i32 (...) @receiver()
  br label %101

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %98
  %102 = load i32, i32* @MTYPE_1, align 4
  %103 = getelementptr inbounds %struct.test_mymsg, %struct.test_mymsg* %8, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.test_mymsg, %struct.test_mymsg* %8, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @m1_str, align 4
  %107 = call i32 @strcpy(i32 %105, i32 %106)
  %108 = load i32, i32* @sender_msqid, align 4
  %109 = load i32, i32* @m1_str, align 4
  %110 = call i64 @strlen(i32 %109)
  %111 = add nsw i64 %110, 1
  %112 = call i32 @msgsnd(i32 %108, %struct.test_mymsg* %8, i64 %111, i32 0)
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %116

114:                                              ; preds = %101
  %115 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %101
  %117 = load i32, i32* @sender_msqid, align 4
  %118 = load i32, i32* @MTYPE_1_ACK, align 4
  %119 = call i64 @msgrcv(i32 %117, %struct.test_mymsg* %8, i32 4, i32 %118, i32 0)
  %120 = load i32, i32* @m1_str, align 4
  %121 = call i64 @strlen(i32 %120)
  %122 = add nsw i64 %121, 1
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %116
  %127 = call i32 @print_msqid_ds(%struct.msqid_ds* %7, i32 384)
  %128 = load i32, i32* @MTYPE_2, align 4
  %129 = getelementptr inbounds %struct.test_mymsg, %struct.test_mymsg* %8, i32 0, i32 1
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds %struct.test_mymsg, %struct.test_mymsg* %8, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @m2_str, align 4
  %133 = call i32 @strcpy(i32 %131, i32 %132)
  %134 = load i32, i32* @sender_msqid, align 4
  %135 = load i32, i32* @m2_str, align 4
  %136 = call i64 @strlen(i32 %135)
  %137 = add nsw i64 %136, 1
  %138 = call i32 @msgsnd(i32 %134, %struct.test_mymsg* %8, i64 %137, i32 0)
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %142

140:                                              ; preds = %126
  %141 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %126
  %143 = load i32, i32* @sender_msqid, align 4
  %144 = load i32, i32* @MTYPE_2_ACK, align 4
  %145 = call i64 @msgrcv(i32 %143, %struct.test_mymsg* %8, i32 4, i32 %144, i32 0)
  %146 = load i32, i32* @m2_str, align 4
  %147 = call i64 @strlen(i32 %146)
  %148 = add nsw i64 %147, 1
  %149 = icmp ne i64 %145, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %142
  %153 = call i32 @sigemptyset(i32* %9)
  %154 = call i32 @sigsuspend(i32* %9)
  %155 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @ftok(i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @msgget(i32, i32) #1

declare dso_local i32 @msgctl(i32, i32, %struct.msqid_ds*) #1

declare dso_local i32 @print_msqid_ds(%struct.msqid_ds*, i32) #1

declare dso_local i32 @bzero(%struct.msqid_ds*, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @receiver(...) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @msgsnd(i32, %struct.test_mymsg*, i64, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @msgrcv(i32, %struct.test_mymsg*, i32, i32, i32) #1

declare dso_local i32 @sigsuspend(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
