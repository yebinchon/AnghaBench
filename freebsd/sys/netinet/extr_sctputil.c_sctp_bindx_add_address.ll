; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_bindx_add_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_bindx_add_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sctp_inpcb = type { i32, i64 }
%struct.sockaddr = type { i64, i32 }
%struct.sockaddr_in = type { i64 }

@SCTP_PCB_FLAGS_BOUNDALL = common dso_local global i32 0, align 4
@SCTP_FROM_SCTPUTIL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCTP_PCB_FLAGS_UNBOUND = common dso_local global i32 0, align 4
@SCTP_ADD_IP_ADDRESS = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@SCTP_PCB_FLAGS_BOUND_V6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_bindx_add_address(%struct.socket* %0, %struct.sctp_inpcb* %1, %struct.sockaddr* %2, i64 %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sctp_inpcb*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca %struct.sctp_inpcb*, align 8
  %17 = alloca %struct.sockaddr_in*, align 8
  store %struct.socket* %0, %struct.socket** %8, align 8
  store %struct.sctp_inpcb* %1, %struct.sctp_inpcb** %9, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %19 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SCTP_PCB_FLAGS_BOUNDALL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %7
  %25 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %26 = load i32, i32* @SCTP_FROM_SCTPUTIL, align 4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %25, i32* null, i32* null, i32 %26, i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = load i32*, i32** %13, align 8
  store i32 %29, i32* %30, align 4
  br label %124

31:                                               ; preds = %7
  %32 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  store %struct.sockaddr* %32, %struct.sockaddr** %15, align 8
  %33 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %34 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SCTP_PCB_FLAGS_UNBOUND, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %31
  %40 = load i8*, i8** %14, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %44 = load i32, i32* @SCTP_FROM_SCTPUTIL, align 4
  %45 = load i32, i32* @EINVAL, align 4
  %46 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %43, i32* null, i32* null, i32 %44, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = load i32*, i32** %13, align 8
  store i32 %47, i32* %48, align 4
  br label %124

49:                                               ; preds = %39
  %50 = load %struct.socket*, %struct.socket** %8, align 8
  %51 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = call i32 @sctp_inpcb_bind(%struct.socket* %50, %struct.sockaddr* %51, i32* null, i8* %52)
  %54 = load i32*, i32** %13, align 8
  store i32 %53, i32* %54, align 4
  br label %124

55:                                               ; preds = %31
  %56 = load i64, i64* %11, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %123

58:                                               ; preds = %55
  %59 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %60 = bitcast %struct.sockaddr* %59 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %60, %struct.sockaddr_in** %17, align 8
  %61 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %70 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %75 = load i32, i32* @SCTP_FROM_SCTPUTIL, align 4
  %76 = load i32, i32* @EINVAL, align 4
  %77 = call i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb* %74, i32* null, i32* null, i32 %75, i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = load i32*, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  br label %124

80:                                               ; preds = %65, %58
  %81 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %82 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %80
  %87 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call %struct.sctp_inpcb* @sctp_pcb_findep(%struct.sockaddr* %87, i32 1, i32 0, i32 %88)
  store %struct.sctp_inpcb* %89, %struct.sctp_inpcb** %16, align 8
  %90 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %16, align 8
  %91 = icmp ne %struct.sctp_inpcb* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %16, align 8
  %94 = call i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb* %93)
  br label %95

95:                                               ; preds = %92, %86
  %96 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %16, align 8
  %97 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %98 = icmp eq %struct.sctp_inpcb* %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %124

100:                                              ; preds = %95
  %101 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %16, align 8
  %102 = icmp eq %struct.sctp_inpcb* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %105 = bitcast %struct.sockaddr* %104 to %struct.sockaddr_in*
  %106 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %9, align 8
  %108 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %109 = load i32, i32* @SCTP_ADD_IP_ADDRESS, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @sctp_addr_mgmt_ep_sa(%struct.sctp_inpcb* %107, %struct.sockaddr* %108, i32 %109, i32 %110, i32* null)
  %112 = load i32*, i32** %13, align 8
  store i32 %111, i32* %112, align 4
  br label %116

113:                                              ; preds = %100
  %114 = load i32, i32* @EADDRINUSE, align 4
  %115 = load i32*, i32** %13, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %103
  br label %117

117:                                              ; preds = %116
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %124

122:                                              ; preds = %117
  br label %124

123:                                              ; preds = %55
  br label %124

124:                                              ; preds = %24, %42, %49, %73, %99, %121, %123, %122
  ret void
}

declare dso_local i32 @SCTP_LTRACE_ERR_RET(%struct.sctp_inpcb*, i32*, i32*, i32, i32) #1

declare dso_local i32 @sctp_inpcb_bind(%struct.socket*, %struct.sockaddr*, i32*, i8*) #1

declare dso_local %struct.sctp_inpcb* @sctp_pcb_findep(%struct.sockaddr*, i32, i32, i32) #1

declare dso_local i32 @SCTP_INP_DECR_REF(%struct.sctp_inpcb*) #1

declare dso_local i32 @sctp_addr_mgmt_ep_sa(%struct.sctp_inpcb*, %struct.sockaddr*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
