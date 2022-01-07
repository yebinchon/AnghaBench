; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ngd_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ngd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }
%struct.thread = type { i32 }
%struct.ngpcb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_ng = type { i32, i8* }

@NG_HOOKSIZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@EDESTADDRREQ = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@NG_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.thread*)* @ngd_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngd_send(%struct.socket* %0, i32 %1, %struct.mbuf* %2, %struct.sockaddr* %3, %struct.mbuf* %4, %struct.thread* %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.ngpcb*, align 8
  %14 = alloca %struct.sockaddr_ng*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store %struct.mbuf* %4, %struct.mbuf** %11, align 8
  store %struct.thread* %5, %struct.thread** %12, align 8
  %20 = load %struct.socket*, %struct.socket** %7, align 8
  %21 = call %struct.ngpcb* @sotongpcb(%struct.socket* %20)
  store %struct.ngpcb* %21, %struct.ngpcb** %13, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %23 = bitcast %struct.sockaddr* %22 to %struct.sockaddr_ng*
  store %struct.sockaddr_ng* %23, %struct.sockaddr_ng** %14, align 8
  store i32* null, i32** %17, align 8
  %24 = load i32, i32* @NG_HOOKSIZ, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %18, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  %28 = load %struct.ngpcb*, %struct.ngpcb** %13, align 8
  %29 = icmp eq %struct.ngpcb* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %32 = icmp ne %struct.mbuf* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %6
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %16, align 4
  br label %114

35:                                               ; preds = %30
  %36 = load %struct.ngpcb*, %struct.ngpcb** %13, align 8
  %37 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp eq %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOTCONN, align 4
  store i32 %41, i32* %16, align 4
  br label %114

42:                                               ; preds = %35
  %43 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %14, align 8
  %44 = icmp eq %struct.sockaddr_ng* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %15, align 4
  br label %51

46:                                               ; preds = %42
  %47 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %14, align 8
  %48 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 2
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %46, %45
  %52 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %14, align 8
  %53 = icmp eq %struct.sockaddr_ng* %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %15, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %14, align 8
  %59 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %57, %54, %51
  %65 = load %struct.ngpcb*, %struct.ngpcb** %13, align 8
  %66 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = call i32 @NG_NODE_NUMHOOKS(%struct.TYPE_5__* %69)
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @EDESTADDRREQ, align 4
  store i32 %73, i32* %16, align 4
  br label %114

74:                                               ; preds = %64
  %75 = load %struct.ngpcb*, %struct.ngpcb** %13, align 8
  %76 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = call i32* @LIST_FIRST(i32* %80)
  store i32* %81, i32** %17, align 8
  br label %108

82:                                               ; preds = %57
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @NG_HOOKSIZ, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %16, align 4
  br label %114

88:                                               ; preds = %82
  %89 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %14, align 8
  %90 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @bcopy(i8* %91, i8* %27, i32 %92)
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %27, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load %struct.ngpcb*, %struct.ngpcb** %13, align 8
  %98 = getelementptr inbounds %struct.ngpcb, %struct.ngpcb* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = call i32* @ng_findhook(%struct.TYPE_5__* %101, i8* %27)
  store i32* %102, i32** %17, align 8
  %103 = load i32*, i32** %17, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %88
  %106 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %106, i32* %16, align 4
  br label %114

107:                                              ; preds = %88
  br label %108

108:                                              ; preds = %107, %74
  %109 = load i32, i32* %16, align 4
  %110 = load i32*, i32** %17, align 8
  %111 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %112 = load i32, i32* @NG_WAITOK, align 4
  %113 = call i32 @NG_SEND_DATA_FLAGS(i32 %109, i32* %110, %struct.mbuf* %111, i32 %112)
  br label %114

114:                                              ; preds = %108, %105, %86, %72, %40, %33
  %115 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %116 = icmp ne %struct.mbuf* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %119 = call i32 @m_freem(%struct.mbuf* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %122 = icmp ne %struct.mbuf* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %125 = call i32 @m_freem(%struct.mbuf* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %16, align 4
  %128 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %128)
  ret i32 %127
}

declare dso_local %struct.ngpcb* @sotongpcb(%struct.socket*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NG_NODE_NUMHOOKS(%struct.TYPE_5__*) #1

declare dso_local i32* @LIST_FIRST(i32*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32* @ng_findhook(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @NG_SEND_DATA_FLAGS(i32, i32*, %struct.mbuf*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
