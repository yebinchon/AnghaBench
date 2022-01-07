; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_sockcred.c_t_sockcred_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_sockcred.c_t_sockcred_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.iovec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @t_sockcred_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t_sockcred_client(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.msghdr, align 4
  %7 = alloca [1 x %struct.iovec], align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = call i64 (...) @uc_sync_recv()
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %35

12:                                               ; preds = %2
  store i32 -2, i32* %8, align 4
  %13 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %7, i64 0, i64 0
  %14 = call i32 @uc_msghdr_init_client(%struct.msghdr* %6, %struct.iovec* %13, i32* null, i32 0, i32 0, i32 0)
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @uc_socket_connect(i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %33

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = call i64 (...) @uc_sync_recv()
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %33

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @uc_message_sendn(i32 %28, %struct.msghdr* %6)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %33

32:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %32, %31, %25, %18
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @uc_sync_recv(...) #1

declare dso_local i32 @uc_msghdr_init_client(%struct.msghdr*, %struct.iovec*, i32*, i32, i32, i32) #1

declare dso_local i64 @uc_socket_connect(i32) #1

declare dso_local i64 @uc_message_sendn(i32, %struct.msghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
