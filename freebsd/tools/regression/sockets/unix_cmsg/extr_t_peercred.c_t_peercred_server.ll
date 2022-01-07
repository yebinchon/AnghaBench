; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_peercred.c_t_peercred_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_peercred.c_t_peercred_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xucred = type { i32 }

@LOCAL_PEERCRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"getsockopt(LOCAL_PEERCRED)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @t_peercred_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t_peercred_server(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.xucred, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i64 (...) @uc_sync_send()
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @uc_socket_accept(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 -2, i32* %2, align 4
  br label %37

17:                                               ; preds = %11
  store i32 4, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @LOCAL_PEERCRED, align 4
  %20 = call i64 @getsockopt(i32 %18, i32 0, i32 %19, %struct.xucred* %4, i32* %5)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @uc_logmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -2, i32* %7, align 4
  br label %30

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @check_xucred(%struct.xucred* %4, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %7, align 4
  br label %30

29:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %28, %22
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @uc_socket_close(i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -2, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %16, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @uc_sync_send(...) #1

declare dso_local i32 @uc_socket_accept(i32) #1

declare dso_local i64 @getsockopt(i32, i32, i32, %struct.xucred*, i32*) #1

declare dso_local i32 @uc_logmsg(i8*) #1

declare dso_local i64 @check_xucred(%struct.xucred*, i32) #1

declare dso_local i64 @uc_socket_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
