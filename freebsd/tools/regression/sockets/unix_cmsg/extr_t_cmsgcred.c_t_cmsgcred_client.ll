; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_cmsgcred.c_t_cmsgcred_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_cmsgcred.c_t_cmsgcred_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.iovec = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@SCM_CREDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t_cmsgcred_client(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.msghdr, align 4
  %5 = alloca [1 x %struct.iovec], align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = call i64 (...) @uc_sync_recv()
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  store i32 -2, i32* %8, align 4
  %13 = call i64 @CMSG_SPACE(i32 4)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i8* @malloc(i64 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @uc_logmsg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %36

20:                                               ; preds = %12
  %21 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %5, i64 0, i64 0
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @SCM_CREDS, align 4
  %25 = call i32 @uc_msghdr_init_client(%struct.msghdr* %4, %struct.iovec* %21, i8* %22, i64 %23, i32 %24, i32 4)
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @uc_socket_connect(i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %36

30:                                               ; preds = %20
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @uc_message_sendn(i32 %31, %struct.msghdr* %4)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %36

35:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %34, %29, %18
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @uc_sync_recv(...) #1

declare dso_local i64 @CMSG_SPACE(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @uc_logmsg(i8*) #1

declare dso_local i32 @uc_msghdr_init_client(%struct.msghdr*, %struct.iovec*, i8*, i64, i32, i32) #1

declare dso_local i64 @uc_socket_connect(i32) #1

declare dso_local i64 @uc_message_sendn(i32, %struct.msghdr*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
