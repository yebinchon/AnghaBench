; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ngs_rcvdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ngs_rcvdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngsock = type { %struct.ngpcb* }
%struct.ngpcb = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.sockaddr_ng = type { i32, i8*, i32 }
%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }

@NG_HOOKSIZ = common dso_local global i32 0, align 4
@AF_NETGRAPH = common dso_local global i32 0, align 4
@TRAP_ERROR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ngs_rcvdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngs_rcvdata(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ngsock*, align 8
  %7 = alloca %struct.ngpcb*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sockaddr_ng*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @NG_HOOK_NODE(i32 %15)
  %17 = call %struct.ngsock* @NG_NODE_PRIVATE(i32 %16)
  store %struct.ngsock* %17, %struct.ngsock** %6, align 8
  %18 = load %struct.ngsock*, %struct.ngsock** %6, align 8
  %19 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %18, i32 0, i32 0
  %20 = load %struct.ngpcb*, %struct.ngpcb** %19, align 8
  store %struct.ngpcb* %20, %struct.ngpcb** %7, align 8
  %21 = load i32, i32* @NG_HOOKSIZ, align 4
  %22 = add nsw i32 %21, 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i8*, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %28 = call i32 @NGI_GET_M(i32 %26, %struct.mbuf* %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @NG_FREE_ITEM(i32 %29)
  %31 = load %struct.ngpcb*, %struct.ngpcb** %7, align 8
  %32 = icmp eq %struct.ngpcb* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %35 = call i32 @NG_FREE_M(%struct.mbuf* %34)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %79

36:                                               ; preds = %2
  %37 = load %struct.ngpcb*, %struct.ngpcb** %7, align 8
  %38 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %37, i32 0, i32 0
  %39 = load %struct.socket*, %struct.socket** %38, align 8
  store %struct.socket* %39, %struct.socket** %8, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @NG_HOOK_NAME(i32 %40)
  %42 = call i32 @strlen(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = bitcast i8** %25 to %struct.sockaddr_ng*
  store %struct.sockaddr_ng* %43, %struct.sockaddr_ng** %9, align 8
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 3
  %46 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %9, align 8
  %47 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @AF_NETGRAPH, align 4
  %49 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %9, align 8
  %50 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @NG_HOOK_NAME(i32 %51)
  %53 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %9, align 8
  %54 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @bcopy(i32 %52, i8* %55, i32 %56)
  %58 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %9, align 8
  %59 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load %struct.socket*, %struct.socket** %8, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 0
  %66 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %9, align 8
  %67 = bitcast %struct.sockaddr_ng* %66 to %struct.sockaddr*
  %68 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %69 = call i64 @sbappendaddr(i32* %65, %struct.sockaddr* %67, %struct.mbuf* %68, i32* null)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %36
  %72 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %73 = call i32 @m_freem(%struct.mbuf* %72)
  %74 = load i32, i32* @TRAP_ERROR, align 4
  %75 = load i32, i32* @ENOBUFS, align 4
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %79

76:                                               ; preds = %36
  %77 = load %struct.socket*, %struct.socket** %8, align 8
  %78 = call i32 @sorwakeup(%struct.socket* %77)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %79

79:                                               ; preds = %76, %71, %33
  %80 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.ngsock* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NGI_GET_M(i32, %struct.mbuf*) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @NG_HOOK_NAME(i32) #1

declare dso_local i32 @bcopy(i32, i8*, i32) #1

declare dso_local i64 @sbappendaddr(i32*, %struct.sockaddr*, %struct.mbuf*, i32*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @sorwakeup(%struct.socket*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
