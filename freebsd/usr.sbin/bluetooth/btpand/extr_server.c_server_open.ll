; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_server.c_server_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_server.c_server_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_l2cap = type { i32, i32, i64, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@PF_BLUETOOTH = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@BLUETOOTH_PROTO_L2CAP = common dso_local global i32 0, align 4
@server_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not open L2CAP socket: %m\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@l2cap_psm = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i32 0, align 4
@local_bdaddr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not bind server socket: %m\00", align 1
@BNEP_MTU_MIN = common dso_local global i32 0, align 4
@SOL_L2CAP = common dso_local global i32 0, align 4
@SO_L2CAP_IMTU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Could not set L2CAP IMTU (%d): %m\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Could not listen on server socket: %m\00", align 1
@server_ev = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@server_read = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Could not add server event: %m\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"server socket open\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @server_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_open() #0 {
  %1 = alloca %struct.sockaddr_l2cap, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @PF_BLUETOOTH, align 4
  %4 = load i32, i32* @SOCK_SEQPACKET, align 4
  %5 = load i32, i32* @BLUETOOTH_PROTO_L2CAP, align 4
  %6 = call i32 @socket(i32 %3, i32 %4, i32 %5)
  store i32 %6, i32* @server_fd, align 4
  %7 = load i32, i32* @server_fd, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EXIT_FAILURE, align 4
  %12 = call i32 @exit(i32 %11) #3
  unreachable

13:                                               ; preds = %0
  %14 = call i32 @memset(%struct.sockaddr_l2cap* %1, i32 0, i32 32)
  %15 = load i32, i32* @AF_BLUETOOTH, align 4
  %16 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %1, i32 0, i32 5
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %1, i32 0, i32 0
  store i32 32, i32* %17, align 8
  %18 = load i32, i32* @l2cap_psm, align 4
  %19 = call i32 @htole16(i32 %18)
  %20 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %1, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @BDADDR_BREDR, align 4
  %22 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %1, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %1, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %1, i32 0, i32 1
  %25 = call i32 @bdaddr_copy(i32* %24, i32* @local_bdaddr)
  %26 = load i32, i32* @server_fd, align 4
  %27 = bitcast %struct.sockaddr_l2cap* %1 to %struct.sockaddr*
  %28 = call i32 @bind(i32 %26, %struct.sockaddr* %27, i32 32)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %13
  %31 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EXIT_FAILURE, align 4
  %33 = call i32 @exit(i32 %32) #3
  unreachable

34:                                               ; preds = %13
  %35 = load i32, i32* @BNEP_MTU_MIN, align 4
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* @server_fd, align 4
  %37 = load i32, i32* @SOL_L2CAP, align 4
  %38 = load i32, i32* @SO_L2CAP_IMTU, align 4
  %39 = call i32 @setsockopt(i32 %36, i32 %37, i32 %38, i32* %2, i32 4)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* %2, align 4
  %43 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EXIT_FAILURE, align 4
  %45 = call i32 @exit(i32 %44) #3
  unreachable

46:                                               ; preds = %34
  %47 = load i32, i32* @server_fd, align 4
  %48 = call i32 @listen(i32 %47, i32 0)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @EXIT_FAILURE, align 4
  %53 = call i32 @exit(i32 %52) #3
  unreachable

54:                                               ; preds = %46
  %55 = load i32, i32* @server_fd, align 4
  %56 = load i32, i32* @EV_READ, align 4
  %57 = load i32, i32* @EV_PERSIST, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @server_read, align 4
  %60 = call i32 @event_set(i32* @server_ev, i32 %55, i32 %58, i32 %59, i32* null)
  %61 = call i32 @event_add(i32* @server_ev, i32* null)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32, i32* @EXIT_FAILURE, align 4
  %66 = call i32 @exit(i32 %65) #3
  unreachable

67:                                               ; preds = %54
  %68 = call i32 @log_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @log_err(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.sockaddr_l2cap*, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @bdaddr_copy(i32*, i32*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @event_set(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @event_add(i32*, i32*) #1

declare dso_local i32 @log_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
