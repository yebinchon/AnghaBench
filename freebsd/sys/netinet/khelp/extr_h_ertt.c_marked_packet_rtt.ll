; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/khelp/extr_h_ertt.c_marked_packet_rtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/khelp/extr_h_ertt.c_marked_packet_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txseginfo = type { i8*, i32 }
%struct.ertt = type { i32, i32, i64, i64, i8* }
%struct.tcpcb = type { i32, i32 }

@MULTI_ACK = common dso_local global i32 0, align 4
@OLD_TXSI = common dso_local global i32 0, align 4
@FORCED_MEASUREMENT = common dso_local global i32 0, align 4
@ERTT_MEASUREMENT_IN_PROGRESS = common dso_local global i32 0, align 4
@ERTT_NEW_MEASUREMENT = common dso_local global i32 0, align 4
@TF_TSO = common dso_local global i32 0, align 4
@ERTT_TSO_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.txseginfo*, %struct.ertt*, %struct.tcpcb*, i8**, i32*, i32*, i32)* @marked_packet_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marked_packet_rtt(%struct.txseginfo* %0, %struct.ertt* %1, %struct.tcpcb* %2, i8** %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.txseginfo*, align 8
  %9 = alloca %struct.ertt*, align 8
  %10 = alloca %struct.tcpcb*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.txseginfo* %0, %struct.txseginfo** %8, align 8
  store %struct.ertt* %1, %struct.ertt** %9, align 8
  store %struct.tcpcb* %2, %struct.tcpcb** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MULTI_ACK, align 4
  %17 = load i32, i32* @OLD_TXSI, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %7
  %22 = load %struct.txseginfo*, %struct.txseginfo** %8, align 8
  %23 = getelementptr inbounds %struct.txseginfo, %struct.txseginfo* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** %11, align 8
  store i8* %24, i8** %25, align 8
  %26 = load %struct.txseginfo*, %struct.txseginfo** %8, align 8
  %27 = getelementptr inbounds %struct.txseginfo, %struct.txseginfo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %12, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %121

35:                                               ; preds = %7
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @FORCED_MEASUREMENT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = call i8* (...) @tcp_ts_getticks()
  %42 = load i8**, i8*** %11, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %41 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = add nsw i64 %46, 1
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.ertt*, %struct.ertt** %9, align 8
  %50 = getelementptr inbounds %struct.ertt, %struct.ertt* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load %struct.ertt*, %struct.ertt** %9, align 8
  %52 = getelementptr inbounds %struct.ertt, %struct.ertt* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %57, %60
  %62 = load %struct.ertt*, %struct.ertt** %9, align 8
  %63 = getelementptr inbounds %struct.ertt, %struct.ertt* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  br label %85

64:                                               ; preds = %35
  %65 = call i8* (...) @tcp_ts_getticks()
  %66 = load %struct.txseginfo*, %struct.txseginfo** %8, align 8
  %67 = getelementptr inbounds %struct.txseginfo, %struct.txseginfo* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %65 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = add nsw i64 %71, 1
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.ertt*, %struct.ertt** %9, align 8
  %75 = getelementptr inbounds %struct.ertt, %struct.ertt* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load %struct.ertt*, %struct.ertt** %9, align 8
  %77 = getelementptr inbounds %struct.ertt, %struct.ertt* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %78, %81
  %83 = load %struct.ertt*, %struct.ertt** %9, align 8
  %84 = getelementptr inbounds %struct.ertt, %struct.ertt* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %64, %40
  %86 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %87 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ertt*, %struct.ertt** %9, align 8
  %90 = getelementptr inbounds %struct.ertt, %struct.ertt* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @ERTT_MEASUREMENT_IN_PROGRESS, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.ertt*, %struct.ertt** %9, align 8
  %94 = getelementptr inbounds %struct.ertt, %struct.ertt* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load i32, i32* @ERTT_NEW_MEASUREMENT, align 4
  %98 = load %struct.ertt*, %struct.ertt** %9, align 8
  %99 = getelementptr inbounds %struct.ertt, %struct.ertt* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %103 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TF_TSO, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %85
  %109 = load i32, i32* @TF_TSO, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %112 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* @ERTT_TSO_DISABLED, align 4
  %116 = load %struct.ertt*, %struct.ertt** %9, align 8
  %117 = getelementptr inbounds %struct.ertt, %struct.ertt* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %108, %85
  br label %121

121:                                              ; preds = %120, %21
  ret void
}

declare dso_local i8* @tcp_ts_getticks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
