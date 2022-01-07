; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, %struct.bbr_sendmap*, %struct.TYPE_3__* }
%struct.bbr_sendmap = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tcp_bbr = type { %struct.TYPE_4__, i64, i32* }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i64 }

@INP_CANNOT_DO_ECN = common dso_local global i32 0, align 4
@INP_SUPPORTS_MBUFQ = common dso_local global i32 0, align 4
@INP_MBUF_QUEUE_READY = common dso_local global i32 0, align 4
@bbr_flows_whdwr_pacing = common dso_local global i32 0, align 4
@bbr_flows_nohdwr_pacing = common dso_local global i32 0, align 4
@r_next = common dso_local global i32 0, align 4
@bbr_zone = common dso_local global i32 0, align 4
@bbr_dynamic_rwnd = common dso_local global i32 0, align 4
@bbr_static_rwnd = common dso_local global i32 0, align 4
@bbr_pcb_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, i32)* @bbr_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_fini(%struct.tcpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcp_bbr*, align 8
  %7 = alloca %struct.bbr_sendmap*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 2
  %10 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %9, align 8
  %11 = icmp ne %struct.bbr_sendmap* %10, null
  br i1 %11, label %12, label %154

12:                                               ; preds = %2
  %13 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 2
  %15 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %14, align 8
  %16 = bitcast %struct.bbr_sendmap* %15 to %struct.tcp_bbr*
  store %struct.tcp_bbr* %16, %struct.tcp_bbr** %6, align 8
  %17 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %18 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %12
  %23 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %24 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %28 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @tcp_rel_pacing_rate(i64 %26, i32* %29)
  br label %31

31:                                               ; preds = %22, %12
  %32 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %33 = call i32 @bbr_log_flowend(%struct.tcp_bbr* %32)
  %34 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %35 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %31
  %41 = load i32, i32* @INP_CANNOT_DO_ECN, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %42
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @INP_SUPPORTS_MBUFQ, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %52 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %50
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @INP_MBUF_QUEUE_READY, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %60 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %58
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %40, %31
  %66 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %67 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @bbr_flows_whdwr_pacing, align 4
  %72 = call i32 @counter_u64_add(i32 %71, i32 -1)
  br label %76

73:                                               ; preds = %65
  %74 = load i32, i32* @bbr_flows_nohdwr_pacing, align 4
  %75 = call i32 @counter_u64_add(i32 %74, i32 -1)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %78 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = call %struct.bbr_sendmap* @TAILQ_FIRST(i32* %79)
  store %struct.bbr_sendmap* %80, %struct.bbr_sendmap** %7, align 8
  br label %81

81:                                               ; preds = %84, %76
  %82 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %83 = icmp ne %struct.bbr_sendmap* %82, null
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %86 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %89 = load i32, i32* @r_next, align 4
  %90 = call i32 @TAILQ_REMOVE(i32* %87, %struct.bbr_sendmap* %88, i32 %89)
  %91 = load i32, i32* @bbr_zone, align 4
  %92 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %93 = call i32 @uma_zfree(i32 %91, %struct.bbr_sendmap* %92)
  %94 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %95 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = call %struct.bbr_sendmap* @TAILQ_FIRST(i32* %96)
  store %struct.bbr_sendmap* %97, %struct.bbr_sendmap** %7, align 8
  br label %81

98:                                               ; preds = %81
  %99 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %100 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = call %struct.bbr_sendmap* @TAILQ_FIRST(i32* %101)
  store %struct.bbr_sendmap* %102, %struct.bbr_sendmap** %7, align 8
  br label %103

103:                                              ; preds = %106, %98
  %104 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %105 = icmp ne %struct.bbr_sendmap* %104, null
  br i1 %105, label %106, label %120

106:                                              ; preds = %103
  %107 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %108 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  %110 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %111 = load i32, i32* @r_next, align 4
  %112 = call i32 @TAILQ_REMOVE(i32* %109, %struct.bbr_sendmap* %110, i32 %111)
  %113 = load i32, i32* @bbr_zone, align 4
  %114 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %115 = call i32 @uma_zfree(i32 %113, %struct.bbr_sendmap* %114)
  %116 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %117 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = call %struct.bbr_sendmap* @TAILQ_FIRST(i32* %118)
  store %struct.bbr_sendmap* %119, %struct.bbr_sendmap** %7, align 8
  br label %103

120:                                              ; preds = %103
  %121 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %122 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %126 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %124, %128
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %132 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sdiv i32 %134, 10
  %136 = icmp sgt i32 %130, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %120
  %138 = load i32, i32* @bbr_dynamic_rwnd, align 4
  %139 = call i32 @BBR_STAT_INC(i32 %138)
  br label %143

140:                                              ; preds = %120
  %141 = load i32, i32* @bbr_static_rwnd, align 4
  %142 = call i32 @BBR_STAT_INC(i32 %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %145 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  store i64 0, i64* %146, align 8
  %147 = load i32, i32* @bbr_pcb_zone, align 4
  %148 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %149 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %148, i32 0, i32 2
  %150 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %149, align 8
  %151 = call i32 @uma_zfree(i32 %147, %struct.bbr_sendmap* %150)
  %152 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %153 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %152, i32 0, i32 2
  store %struct.bbr_sendmap* null, %struct.bbr_sendmap** %153, align 8
  br label %154

154:                                              ; preds = %143, %2
  %155 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %156 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %159 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  ret void
}

declare dso_local i32 @tcp_rel_pacing_rate(i64, i32*) #1

declare dso_local i32 @bbr_log_flowend(%struct.tcp_bbr*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local %struct.bbr_sendmap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.bbr_sendmap*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.bbr_sendmap*) #1

declare dso_local i32 @BBR_STAT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
