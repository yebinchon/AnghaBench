; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_nbssn_recvhdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_nbssn_recvhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbpcb = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.thread = type { i32 }
%struct.uio = type { i32, i32, %struct.thread*, i64, i32, i32, %struct.iovec* }
%struct.iovec = type { i32, i64 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }

@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"short reply\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@SMB_MAXPKTLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"packet too long (%d)\0A\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbpcb*, i32*, i32*, i32, %struct.thread*)* @nbssn_recvhdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbssn_recvhdr(%struct.nbpcb* %0, i32* %1, i32* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nbpcb*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.socket*, align 8
  %13 = alloca %struct.uio, align 8
  %14 = alloca %struct.iovec, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nbpcb* %0, %struct.nbpcb** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %17 = load %struct.nbpcb*, %struct.nbpcb** %7, align 8
  %18 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %17, i32 0, i32 0
  %19 = load %struct.socket*, %struct.socket** %18, align 8
  store %struct.socket* %19, %struct.socket** %12, align 8
  %20 = ptrtoint i32* %15 to i64
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 1
  store i64 %20, i64* %21, align 8
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 0
  store i32 4, i32* %22, align 8
  %23 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 6
  store %struct.iovec* %14, %struct.iovec** %23, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @UIO_SYSSPACE, align 4
  %26 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 5
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @UIO_READ, align 4
  %28 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 1
  store i32 4, i32* %30, align 4
  %31 = load %struct.thread*, %struct.thread** %11, align 8
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 2
  store %struct.thread* %31, %struct.thread** %32, align 8
  %33 = load %struct.socket*, %struct.socket** %12, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @CURVNET_SET(i32 %35)
  %37 = load %struct.socket*, %struct.socket** %12, align 8
  %38 = call i32 @soreceive(%struct.socket* %37, %struct.sockaddr** null, %struct.uio* %13, %struct.mbuf** null, %struct.mbuf** null, i32* %10)
  store i32 %38, i32* %16, align 4
  %39 = call i32 (...) @CURVNET_RESTORE()
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %5
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %6, align 4
  br label %70

44:                                               ; preds = %5
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = call i32 @SMBSDEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EPIPE, align 4
  store i32 %50, i32* %6, align 4
  br label %70

51:                                               ; preds = %44
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @ntohl(i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = ashr i32 %54, 24
  %56 = and i32 %55, 255
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %15, align 4
  %59 = and i32 %58, 131071
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @SMB_MAXPKTLEN, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @SMBERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EFBIG, align 4
  store i32 %66, i32* %6, align 4
  br label %70

67:                                               ; preds = %51
  %68 = load i32, i32* %15, align 4
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %63, %48, %42
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @soreceive(%struct.socket*, %struct.sockaddr**, %struct.uio*, %struct.mbuf**, %struct.mbuf**, i32*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i32 @SMBSDEBUG(i8*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @SMBERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
