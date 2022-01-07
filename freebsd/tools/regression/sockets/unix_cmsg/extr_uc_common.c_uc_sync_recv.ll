; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_sync_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_sync_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32**, i64 }

@.str = private unnamed_addr constant [11 x i8] c"sync: wait\00", align 1
@uc_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SYNC_SERVER = common dso_local global i64 0, align 8
@SYNC_CLIENT = common dso_local global i64 0, align 8
@SYNC_RECV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"sync_recv: read\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"sync_recv: read %zd of 1 byte\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"sync: received\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uc_sync_recv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %6 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 0), align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 1), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i64, i64* @SYNC_SERVER, align 8
  br label %13

11:                                               ; preds = %0
  %12 = load i64, i64* @SYNC_CLIENT, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i64 [ %10, %9 ], [ %12, %11 ]
  %15 = getelementptr inbounds i32*, i32** %6, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @SYNC_RECV, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @read(i32 %20, i8* %4, i32 1)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = call i32 @uc_logmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %34

26:                                               ; preds = %13
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @uc_logmsgx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %1, align 4
  br label %34

32:                                               ; preds = %26
  %33 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %32, %29, %24
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @uc_dbgmsg(i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @uc_logmsg(i8*) #1

declare dso_local i32 @uc_logmsgx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
