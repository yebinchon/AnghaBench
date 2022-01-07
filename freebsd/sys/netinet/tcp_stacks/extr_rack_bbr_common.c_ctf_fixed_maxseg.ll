; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_fixed_maxseg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack_bbr_common.c_ctf_fixed_maxseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i32 }

@TF_NOOPT = common dso_local global i32 0, align 4
@TF_RCVD_TSTMP = common dso_local global i32 0, align 4
@TCPOLEN_TSTAMP_APPA = common dso_local global i32 0, align 4
@TF_REQ_TSTMP = common dso_local global i32 0, align 4
@TCPOLEN_MAXSEG = common dso_local global i32 0, align 4
@TF_REQ_SCALE = common dso_local global i32 0, align 4
@TCPOLEN_WINDOW = common dso_local global i32 0, align 4
@TF_SACK_PERMIT = common dso_local global i32 0, align 4
@TCPOLEN_SACK_PERMITTED = common dso_local global i32 0, align 4
@TCP_MAXOLEN = common dso_local global i32 0, align 4
@TCPOLEN_SIGNATURE = common dso_local global i32 0, align 4
@TF_SIGNATURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ctf_fixed_maxseg(%struct.tcpcb* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i32, align 4
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
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %2, align 8
  br label %103

15:                                               ; preds = %1
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @TCPS_HAVEESTABLISHED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TF_RCVD_TSTMP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @TCPOLEN_TSTAMP_APPA, align 4
  store i32 %29, i32* %4, align 4
  br label %31

30:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %28
  br label %93

32:                                               ; preds = %15
  %33 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %34 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TF_REQ_TSTMP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @TCPOLEN_TSTAMP_APPA, align 4
  store i32 %40, i32* %4, align 4
  br label %52

41:                                               ; preds = %32
  %42 = load i32, i32* @TCPOLEN_MAXSEG, align 4
  %43 = sdiv i32 %42, 4
  %44 = load i32, i32* @TCPOLEN_MAXSEG, align 4
  %45 = srem i32 %44, 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = add nsw i32 %43, %49
  %51 = mul nsw i32 %50, 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %41, %39
  %53 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %54 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @TF_REQ_SCALE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %52
  %60 = load i32, i32* @TCPOLEN_WINDOW, align 4
  %61 = sdiv i32 %60, 4
  %62 = load i32, i32* @TCPOLEN_WINDOW, align 4
  %63 = srem i32 %62, 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = add nsw i32 %61, %67
  %69 = mul nsw i32 %68, 4
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %59, %52
  %73 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @TF_SACK_PERMIT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %72
  %80 = load i32, i32* @TCPOLEN_SACK_PERMITTED, align 4
  %81 = sdiv i32 %80, 4
  %82 = load i32, i32* @TCPOLEN_SACK_PERMITTED, align 4
  %83 = srem i32 %82, 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = add nsw i32 %81, %87
  %89 = mul nsw i32 %88, 4
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %79, %72
  br label %93

93:                                               ; preds = %92, %31
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @TCP_MAXOLEN, align 4
  %96 = call i32 @min(i32 %94, i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %98 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %99, %101
  store i64 %102, i64* %2, align 8
  br label %103

103:                                              ; preds = %93, %11
  %104 = load i64, i64* %2, align 8
  ret i64 %104
}

declare dso_local i64 @TCPS_HAVEESTABLISHED(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
