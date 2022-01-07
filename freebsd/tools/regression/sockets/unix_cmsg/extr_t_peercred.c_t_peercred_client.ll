; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_peercred.c_t_peercred_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_peercred.c_t_peercred_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xucred = type { i32 }

@LOCAL_PEERCRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"getsockopt(LOCAL_PEERCRED)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @t_peercred_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t_peercred_client(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.xucred, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i64 (...) @uc_sync_recv()
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %27

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @uc_socket_connect(i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %27

14:                                               ; preds = %9
  store i32 4, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @LOCAL_PEERCRED, align 4
  %17 = call i64 @getsockopt(i32 %15, i32 0, i32 %16, %struct.xucred* %4, i32* %5)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @uc_logmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %27

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @check_xucred(%struct.xucred* %4, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %27

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %19, %13, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @uc_sync_recv(...) #1

declare dso_local i64 @uc_socket_connect(i32) #1

declare dso_local i64 @getsockopt(i32, i32, i32, %struct.xucred*, i32*) #1

declare dso_local i32 @uc_logmsg(i8*) #1

declare dso_local i64 @check_xucred(%struct.xucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
