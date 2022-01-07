; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_security.c_is_loopback.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_security.c_is_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netbuf = type { i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@oldstyle_local = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@IPPORT_RESERVED = common dso_local global i32 0, align 4
@IPV6PORT_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_loopback(%struct.netbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netbuf*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  store %struct.netbuf* %0, %struct.netbuf** %3, align 8
  %6 = load %struct.netbuf*, %struct.netbuf** %3, align 8
  %7 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.sockaddr*
  store %struct.sockaddr* %9, %struct.sockaddr** %4, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %38 [
    i32 130, label %13
    i32 128, label %37
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @oldstyle_local, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %40

17:                                               ; preds = %13
  %18 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %19 = bitcast %struct.sockaddr* %18 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %19, %struct.sockaddr_in** %5, align 8
  %20 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @INADDR_LOOPBACK, align 4
  %25 = call i32 @htonl(i32 %24)
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ntohs(i32 %30)
  %32 = load i32, i32* @IPPORT_RESERVED, align 4
  %33 = icmp slt i32 %31, %32
  br label %34

34:                                               ; preds = %27, %17
  %35 = phi i1 [ false, %17 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %40

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37, %34, %16
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
