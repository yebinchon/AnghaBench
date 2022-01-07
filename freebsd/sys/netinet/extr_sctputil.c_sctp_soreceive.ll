; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_soreceive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_soreceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64 }
%struct.sockaddr = type { i64 }
%struct.uio = type { i32 }
%struct.mbuf = type { i32 }
%struct.sctp_extrcvinfo = type { i32 }
%struct.sctp_inpcb = type { i32 }
%struct.sctp_sndrcvinfo = type { i32 }

@SCTP_FROM_SCTPUTIL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_RECVDATAIOEVNT = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_RECVRCVINFO = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_RECVNXTINFO = common dso_local global i32 0, align 4
@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_soreceive(%struct.socket* %0, %struct.sockaddr** %1, %struct.uio* %2, %struct.mbuf** %3, %struct.mbuf** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sockaddr**, align 8
  %10 = alloca %struct.uio*, align 8
  %11 = alloca %struct.mbuf**, align 8
  %12 = alloca %struct.mbuf**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [256 x i32], align 16
  %17 = alloca %struct.sockaddr*, align 8
  %18 = alloca %struct.sctp_extrcvinfo, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.sctp_inpcb*, align 8
  store %struct.socket* %0, %struct.socket** %8, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %9, align 8
  store %struct.uio* %2, %struct.uio** %10, align 8
  store %struct.mbuf** %3, %struct.mbuf*** %11, align 8
  store %struct.mbuf** %4, %struct.mbuf*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 1, i32* %19, align 4
  %22 = load %struct.socket*, %struct.socket** %8, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.sctp_inpcb*
  store %struct.sctp_inpcb* %25, %struct.sctp_inpcb** %21, align 8
  %26 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %21, align 8
  %27 = icmp eq %struct.sctp_inpcb* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %6
  %29 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %21, align 8
  %30 = load i32, i32* @SCTP_FROM_SCTPUTIL, align 4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %29, i32* null, i32* null, i32 %30, i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %7, align 4
  br label %128

34:                                               ; preds = %6
  %35 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %21, align 8
  %36 = load i32, i32* @SCTP_PCB_FLAGS_RECVDATAIOEVNT, align 4
  %37 = call i64 @sctp_is_feature_off(%struct.sctp_inpcb* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %21, align 8
  %41 = load i32, i32* @SCTP_PCB_FLAGS_RECVRCVINFO, align 4
  %42 = call i64 @sctp_is_feature_off(%struct.sctp_inpcb* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %21, align 8
  %46 = load i32, i32* @SCTP_PCB_FLAGS_RECVNXTINFO, align 4
  %47 = call i64 @sctp_is_feature_off(%struct.sctp_inpcb* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44, %39, %34
  %50 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %51 = icmp eq %struct.mbuf** %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %44
  store i32 0, i32* %19, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load %struct.sockaddr**, %struct.sockaddr*** %9, align 8
  %55 = icmp ne %struct.sockaddr** %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %58 = bitcast i32* %57 to %struct.sockaddr*
  store %struct.sockaddr* %58, %struct.sockaddr** %17, align 8
  store i32 1024, i32* %15, align 4
  %59 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %60 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %62

61:                                               ; preds = %53
  store %struct.sockaddr* null, %struct.sockaddr** %17, align 8
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %61, %56
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @memset(%struct.sctp_extrcvinfo* %18, i32 0, i32 4)
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32*, i32** %13, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %20, align 4
  br label %74

73:                                               ; preds = %67
  store i32 0, i32* %20, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load %struct.socket*, %struct.socket** %8, align 8
  %76 = load %struct.uio*, %struct.uio** %10, align 8
  %77 = load %struct.mbuf**, %struct.mbuf*** %11, align 8
  %78 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %79 = load i32, i32* %15, align 4
  %80 = bitcast %struct.sctp_extrcvinfo* %18 to %struct.sctp_sndrcvinfo*
  %81 = load i32, i32* %19, align 4
  %82 = call i32 @sctp_sorecvmsg(%struct.socket* %75, %struct.uio* %76, %struct.mbuf** %77, %struct.sockaddr* %78, i32 %79, i32* %20, %struct.sctp_sndrcvinfo* %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load i32, i32* %20, align 4
  %87 = load i32*, i32** %13, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %74
  %89 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  %90 = icmp ne %struct.mbuf** %89, null
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load i32, i32* %19, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* @MSG_NOTIFICATION, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %21, align 8
  %101 = bitcast %struct.sctp_extrcvinfo* %18 to %struct.sctp_sndrcvinfo*
  %102 = call %struct.mbuf* @sctp_build_ctl_nchunk(%struct.sctp_inpcb* %100, %struct.sctp_sndrcvinfo* %101)
  %103 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  store %struct.mbuf* %102, %struct.mbuf** %103, align 8
  br label %106

104:                                              ; preds = %94, %91
  %105 = load %struct.mbuf**, %struct.mbuf*** %12, align 8
  store %struct.mbuf* null, %struct.mbuf** %105, align 8
  br label %106

106:                                              ; preds = %104, %99
  br label %107

107:                                              ; preds = %106, %88
  %108 = load %struct.sockaddr**, %struct.sockaddr*** %9, align 8
  %109 = icmp ne %struct.sockaddr** %108, null
  br i1 %109, label %110, label %126

110:                                              ; preds = %107
  %111 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %112 = icmp ne %struct.sockaddr* %111, null
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %115 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %120 = load i32, i32* @M_NOWAIT, align 4
  %121 = call %struct.sockaddr* @sodupsockaddr(%struct.sockaddr* %119, i32 %120)
  %122 = load %struct.sockaddr**, %struct.sockaddr*** %9, align 8
  store %struct.sockaddr* %121, %struct.sockaddr** %122, align 8
  br label %125

123:                                              ; preds = %113, %110
  %124 = load %struct.sockaddr**, %struct.sockaddr*** %9, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %124, align 8
  br label %125

125:                                              ; preds = %123, %118
  br label %126

126:                                              ; preds = %125, %107
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %126, %28
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb*, i32*, i32*, i32, i32) #1

declare dso_local i64 @sctp_is_feature_off(%struct.sctp_inpcb*, i32) #1

declare dso_local i32 @memset(%struct.sctp_extrcvinfo*, i32, i32) #1

declare dso_local i32 @sctp_sorecvmsg(%struct.socket*, %struct.uio*, %struct.mbuf**, %struct.sockaddr*, i32, i32*, %struct.sctp_sndrcvinfo*, i32) #1

declare dso_local %struct.mbuf* @sctp_build_ctl_nchunk(%struct.sctp_inpcb*, %struct.sctp_sndrcvinfo*) #1

declare dso_local %struct.sockaddr* @sodupsockaddr(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
