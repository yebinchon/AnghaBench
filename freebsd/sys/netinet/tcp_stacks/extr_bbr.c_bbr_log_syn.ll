; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_syn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_syn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64 }
%struct.tcpopt = type { i32 }
%struct.tcp_bbr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.bbr_sendmap*, i32, i32, i32 }
%struct.bbr_sendmap = type { i32, i32, i32, i64, i64 }

@BBR_HAS_SYN = common dso_local global i32 0, align 4
@r_next = common dso_local global i32 0, align 4
@r_tnext = common dso_local global i32 0, align 4
@BBR_CUM_ACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcpopt*)* @bbr_log_syn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_syn(%struct.tcpcb* %0, %struct.tcpopt* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcpopt*, align 8
  %5 = alloca %struct.tcp_bbr*, align 8
  %6 = alloca %struct.bbr_sendmap*, align 8
  %7 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcpopt* %1, %struct.tcpopt** %4, align 8
  %8 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.tcp_bbr*
  store %struct.tcp_bbr* %11, %struct.tcp_bbr** %5, align 8
  %12 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %13 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %17 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i8* @TAILQ_FIRST(i32* %18)
  %20 = bitcast i8* %19 to %struct.bbr_sendmap*
  store %struct.bbr_sendmap* %20, %struct.bbr_sendmap** %6, align 8
  %21 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %22 = icmp ne %struct.bbr_sendmap* %21, null
  br i1 %22, label %23, label %114

23:                                               ; preds = %2
  %24 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %25 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BBR_HAS_SYN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %114

30:                                               ; preds = %23
  %31 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %32 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %35 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  %38 = icmp sle i32 %37, 1
  br i1 %38, label %39, label %102

39:                                               ; preds = %30
  %40 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %41 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %44 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %42
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %51 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %53 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %56 = load i32, i32* @r_next, align 4
  %57 = call i32 @TAILQ_REMOVE(i32* %54, %struct.bbr_sendmap* %55, i32 %56)
  %58 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %59 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %39
  %63 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %64 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %67 = load i32, i32* @r_tnext, align 4
  %68 = call i32 @TAILQ_REMOVE(i32* %65, %struct.bbr_sendmap* %66, i32 %67)
  %69 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %70 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %62, %39
  %72 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %73 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %74, align 8
  %76 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %77 = icmp eq %struct.bbr_sendmap* %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %80 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i8* @TAILQ_FIRST(i32* %81)
  %83 = bitcast i8* %82 to %struct.bbr_sendmap*
  %84 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %85 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store %struct.bbr_sendmap* %83, %struct.bbr_sendmap** %86, align 8
  br label %87

87:                                               ; preds = %78, %71
  %88 = load %struct.tcpopt*, %struct.tcpopt** %4, align 8
  %89 = icmp ne %struct.tcpopt* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %92 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %93 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %94 = load %struct.tcpopt*, %struct.tcpopt** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @BBR_CUM_ACKED, align 4
  %97 = call i32 @bbr_update_rtt(%struct.tcpcb* %91, %struct.tcp_bbr* %92, %struct.bbr_sendmap* %93, %struct.tcpopt* %94, i32 %95, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %90, %87
  %99 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %100 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %101 = call i32 @bbr_free(%struct.tcp_bbr* %99, %struct.bbr_sendmap* %100)
  br label %113

102:                                              ; preds = %30
  %103 = load i32, i32* @BBR_HAS_SYN, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %106 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %110 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %102, %98
  br label %114

114:                                              ; preds = %113, %23, %2
  ret void
}

declare dso_local i8* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.bbr_sendmap*, i32) #1

declare dso_local i32 @bbr_update_rtt(%struct.tcpcb*, %struct.tcp_bbr*, %struct.bbr_sendmap*, %struct.tcpopt*, i32, i32, i32) #1

declare dso_local i32 @bbr_free(%struct.tcp_bbr*, %struct.bbr_sendmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
