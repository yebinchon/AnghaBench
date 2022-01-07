; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_tcp_maxseg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_tcp_maxseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i64, i32 }

@TF_NOOPT = common dso_local global i32 0, align 4
@TF_RCVD_TSTMP = common dso_local global i32 0, align 4
@TCPOLEN_TSTAMP_APPA = common dso_local global i64 0, align 8
@TF_SACK_PERMIT = common dso_local global i32 0, align 4
@TCPOLEN_SACKHDR = common dso_local global i64 0, align 8
@TCPOLEN_SACK = common dso_local global i32 0, align 4
@TF_REQ_TSTMP = common dso_local global i32 0, align 4
@TCPOLEN_MAXSEG = common dso_local global i64 0, align 8
@TF_REQ_SCALE = common dso_local global i32 0, align 4
@TCPOLEN_WINDOW = common dso_local global i64 0, align 8
@TCPOLEN_SACK_PERMITTED = common dso_local global i64 0, align 8
@TCP_MAXOLEN = common dso_local global i32 0, align 4
@TCPOLEN_SIGNATURE = common dso_local global i64 0, align 8
@TF_SIGNATURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tcp_maxseg(%struct.tcpcb* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  %5 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %6 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TF_NOOPT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %2, align 8
  br label %140

15:                                               ; preds = %1
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @TCPS_HAVEESTABLISHED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %15
  %22 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TF_RCVD_TSTMP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* @TCPOLEN_TSTAMP_APPA, align 8
  store i64 %29, i64* %4, align 8
  br label %31

30:                                               ; preds = %21
  store i64 0, i64* %4, align 8
  br label %31

31:                                               ; preds = %30, %28
  %32 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @TF_SACK_PERMIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %31
  %39 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = load i64, i64* @TCPOLEN_SACKHDR, align 8
  %45 = load i64, i64* %4, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %4, align 8
  %47 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TCPOLEN_SACK, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %4, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = sdiv i64 %55, 4
  %57 = load i64, i64* %4, align 8
  %58 = srem i64 %57, 4
  %59 = icmp ne i64 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %56, %63
  %65 = mul nsw i64 %64, 4
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %43, %38, %31
  br label %131

67:                                               ; preds = %15
  %68 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %69 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TF_REQ_TSTMP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i64, i64* @TCPOLEN_TSTAMP_APPA, align 8
  store i64 %75, i64* %4, align 8
  br label %88

76:                                               ; preds = %67
  %77 = load i64, i64* @TCPOLEN_MAXSEG, align 8
  %78 = sdiv i64 %77, 4
  %79 = load i64, i64* @TCPOLEN_MAXSEG, align 8
  %80 = srem i64 %79, 4
  %81 = icmp ne i64 %80, 0
  %82 = xor i1 %81, true
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %78, %85
  %87 = mul nsw i64 %86, 4
  store i64 %87, i64* %4, align 8
  br label %88

88:                                               ; preds = %76, %74
  %89 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %90 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @TF_REQ_SCALE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %88
  %96 = load i64, i64* @TCPOLEN_WINDOW, align 8
  %97 = sdiv i64 %96, 4
  %98 = load i64, i64* @TCPOLEN_WINDOW, align 8
  %99 = srem i64 %98, 4
  %100 = icmp ne i64 %99, 0
  %101 = xor i1 %100, true
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %97, %104
  %106 = mul nsw i64 %105, 4
  %107 = load i64, i64* %4, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %4, align 8
  br label %109

109:                                              ; preds = %95, %88
  %110 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %111 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @TF_SACK_PERMIT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %109
  %117 = load i64, i64* @TCPOLEN_SACK_PERMITTED, align 8
  %118 = sdiv i64 %117, 4
  %119 = load i64, i64* @TCPOLEN_SACK_PERMITTED, align 8
  %120 = srem i64 %119, 4
  %121 = icmp ne i64 %120, 0
  %122 = xor i1 %121, true
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %118, %125
  %127 = mul nsw i64 %126, 4
  %128 = load i64, i64* %4, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %4, align 8
  br label %130

130:                                              ; preds = %116, %109
  br label %131

131:                                              ; preds = %130, %66
  %132 = load i64, i64* %4, align 8
  %133 = load i32, i32* @TCP_MAXOLEN, align 4
  %134 = call i64 @min(i64 %132, i32 %133)
  store i64 %134, i64* %4, align 8
  %135 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %136 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %4, align 8
  %139 = sub nsw i64 %137, %138
  store i64 %139, i64* %2, align 8
  br label %140

140:                                              ; preds = %131, %11
  %141 = load i64, i64* %2, align 8
  ret i64 %141
}

declare dso_local i64 @TCPS_HAVEESTABLISHED(i32) #1

declare dso_local i64 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
