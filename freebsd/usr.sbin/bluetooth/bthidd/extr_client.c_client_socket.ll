; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_client.c_client_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_client.c_client_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_l2cap = type { i32, i64, i32, i64, i32, i32 }
%struct.sockaddr = type { i32 }

@PF_BLUETOOTH = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@BLUETOOTH_PROTO_L2CAP = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i64 0, align 8
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @client_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_socket(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_l2cap, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @PF_BLUETOOTH, align 4
  %10 = load i32, i32* @SOCK_SEQPACKET, align 4
  %11 = load i32, i32* @BLUETOOTH_PROTO_L2CAP, align 4
  %12 = call i64 @socket(i32 %9, i32 %10, i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %74

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* @F_GETFL, align 4
  %19 = call i64 (i64, i32, ...) @fcntl(i64 %17, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @close(i64 %23)
  store i32 -1, i32* %3, align 4
  br label %74

25:                                               ; preds = %16
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* @F_SETFL, align 4
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @O_NONBLOCK, align 8
  %30 = or i64 %28, %29
  %31 = call i64 (i64, i32, ...) @fcntl(i64 %26, i32 %27, i64 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @close(i64 %34)
  store i32 -1, i32* %3, align 4
  br label %74

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %6, i32 0, i32 0
  store i32 40, i32* %37, align 8
  %38 = load i32, i32* @AF_BLUETOOTH, align 4
  %39 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %6, i32 0, i32 5
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %6, i32 0, i32 2
  %41 = call i32 @memset(i32* %40, i32 0, i32 4)
  %42 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %6, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @BDADDR_BREDR, align 4
  %44 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %6, i32 0, i32 4
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %6, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = bitcast %struct.sockaddr_l2cap* %6 to %struct.sockaddr*
  %48 = call i64 @bind(i64 %46, %struct.sockaddr* %47, i32 40)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @close(i64 %51)
  store i32 -1, i32* %3, align 4
  br label %74

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %6, i32 0, i32 2
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @memcpy(i32* %54, i32 %55, i32 4)
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @htole16(i32 %57)
  %59 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %6, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = load i64, i64* %7, align 8
  %61 = bitcast %struct.sockaddr_l2cap* %6 to %struct.sockaddr*
  %62 = call i64 @connect(i64 %60, %struct.sockaddr* %61, i32 40)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %53
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @EINPROGRESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @close(i64 %69)
  store i32 -1, i32* %3, align 4
  br label %74

71:                                               ; preds = %64, %53
  %72 = load i64, i64* %7, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %68, %50, %33, %22, %15
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i64 @fcntl(i64, i32, ...) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @htole16(i32) #1

declare dso_local i64 @connect(i64, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
