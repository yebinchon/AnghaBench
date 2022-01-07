; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_handle_ootb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_handle_ootb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sctphdr = type { i32 }
%struct.sctp_inpcb = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.sctp_chunkhdr = type { i32, i32 }

@sctps_outoftheblue = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_SOCKET_GONE = common dso_local global i32 0, align 4
@SCTP_FREE_SHOULD_USE_ABORT = common dso_local global i32 0, align 4
@SCTP_CALLED_DIRECTLY_NOCMPSET = common dso_local global i32 0, align 4
@sctp_blackhole = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_handle_ootb(%struct.mbuf* %0, i32 %1, i32 %2, %struct.sockaddr* %3, %struct.sockaddr* %4, %struct.sctphdr* %5, %struct.sctp_inpcb* %6, %struct.mbuf* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sockaddr*, align 8
  %18 = alloca %struct.sockaddr*, align 8
  %19 = alloca %struct.sctphdr*, align 8
  %20 = alloca %struct.sctp_inpcb*, align 8
  %21 = alloca %struct.mbuf*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.sctp_chunkhdr*, align 8
  %28 = alloca %struct.sctp_chunkhdr, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store %struct.sockaddr* %3, %struct.sockaddr** %17, align 8
  store %struct.sockaddr* %4, %struct.sockaddr** %18, align 8
  store %struct.sctphdr* %5, %struct.sctphdr** %19, align 8
  store %struct.sctp_inpcb* %6, %struct.sctp_inpcb** %20, align 8
  store %struct.mbuf* %7, %struct.mbuf** %21, align 8
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %31 = load i32, i32* @sctps_outoftheblue, align 4
  %32 = call i32 @SCTP_STAT_INCR_COUNTER32(i32 %31)
  %33 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %20, align 8
  %34 = icmp ne %struct.sctp_inpcb* %33, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %13
  %36 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %20, align 8
  %37 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SCTP_PCB_FLAGS_SOCKET_GONE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %20, align 8
  %44 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %43, i32 0, i32 1
  %45 = call i64 @LIST_EMPTY(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %20, align 8
  %49 = load i32, i32* @SCTP_FREE_SHOULD_USE_ABORT, align 4
  %50 = load i32, i32* @SCTP_CALLED_DIRECTLY_NOCMPSET, align 4
  %51 = call i32 @sctp_inpcb_free(%struct.sctp_inpcb* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %35, %13
  store i32 0, i32* %30, align 4
  %54 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %55 = load i32, i32* %16, align 4
  %56 = bitcast %struct.sctp_chunkhdr* %28 to i32*
  %57 = call i64 @sctp_m_getptr(%struct.mbuf* %54, i32 %55, i32 8, i32* %56)
  %58 = inttoptr i64 %57 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %58, %struct.sctp_chunkhdr** %27, align 8
  br label %59

59:                                               ; preds = %90, %53
  %60 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %27, align 8
  %61 = icmp ne %struct.sctp_chunkhdr* %60, null
  br i1 %61, label %62, label %102

62:                                               ; preds = %59
  %63 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %27, align 8
  %64 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ntohs(i32 %65)
  store i32 %66, i32* %29, align 4
  %67 = load i32, i32* %29, align 4
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %68, 8
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %102

71:                                               ; preds = %62
  %72 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %27, align 8
  %73 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %89 [
    i32 131, label %75
    i32 130, label %76
    i32 132, label %77
    i32 128, label %78
    i32 129, label %79
  ]

75:                                               ; preds = %71
  store i32 1, i32* %30, align 4
  br label %90

76:                                               ; preds = %71
  br label %126

77:                                               ; preds = %71
  br label %126

78:                                               ; preds = %71
  br label %126

79:                                               ; preds = %71
  %80 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %81 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %82 = load %struct.sctphdr*, %struct.sctphdr** %19, align 8
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %24, align 4
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* %26, align 4
  %88 = call i32 @sctp_send_shutdown_complete2(%struct.sockaddr* %80, %struct.sockaddr* %81, %struct.sctphdr* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  br label %126

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %89, %75
  %91 = load i32, i32* %29, align 4
  %92 = call i64 @SCTP_SIZE32(i32 %91)
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %16, align 4
  %97 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %98 = load i32, i32* %16, align 4
  %99 = bitcast %struct.sctp_chunkhdr* %28 to i32*
  %100 = call i64 @sctp_m_getptr(%struct.mbuf* %97, i32 %98, i32 8, i32* %99)
  %101 = inttoptr i64 %100 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %101, %struct.sctp_chunkhdr** %27, align 8
  br label %59

102:                                              ; preds = %70, %59
  %103 = load i32, i32* @sctp_blackhole, align 4
  %104 = call i32 @SCTP_BASE_SYSCTL(i32 %103)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* @sctp_blackhole, align 4
  %108 = call i32 @SCTP_BASE_SYSCTL(i32 %107)
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = load i32, i32* %30, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110, %102
  %114 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %117 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %118 = load %struct.sctphdr*, %struct.sctphdr** %19, align 8
  %119 = load %struct.mbuf*, %struct.mbuf** %21, align 8
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* %23, align 4
  %122 = load i32, i32* %24, align 4
  %123 = load i32, i32* %25, align 4
  %124 = load i32, i32* %26, align 4
  %125 = call i32 @sctp_send_abort(%struct.mbuf* %114, i32 %115, %struct.sockaddr* %116, %struct.sockaddr* %117, %struct.sctphdr* %118, i32 0, %struct.mbuf* %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %76, %77, %78, %79, %113, %110, %106
  ret void
}

declare dso_local i32 @SCTP_STAT_INCR_COUNTER32(i32) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @sctp_inpcb_free(%struct.sctp_inpcb*, i32, i32) #1

declare dso_local i64 @sctp_m_getptr(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_send_shutdown_complete2(%struct.sockaddr*, %struct.sockaddr*, %struct.sctphdr*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @SCTP_SIZE32(i32) #1

declare dso_local i32 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i32 @sctp_send_abort(%struct.mbuf*, i32, %struct.sockaddr*, %struct.sockaddr*, %struct.sctphdr*, i32, %struct.mbuf*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
