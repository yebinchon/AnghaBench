; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_hpts_diag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_hpts_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.hpts_diag = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@bbr_verbose_logging = common dso_local global i64 0, align 8
@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_HPTSDIAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32, %struct.hpts_diag*)* @bbr_log_hpts_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_hpts_diag(%struct.tcp_bbr* %0, i32 %1, %struct.hpts_diag* %2) #0 {
  %4 = alloca %struct.tcp_bbr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpts_diag*, align 8
  %7 = alloca %union.tcp_log_stackspecific, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hpts_diag* %2, %struct.hpts_diag** %6, align 8
  %8 = load i64, i64* @bbr_verbose_logging, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %143

10:                                               ; preds = %3
  %11 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %12 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %143

18:                                               ; preds = %10
  %19 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %20 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %19, %struct.TYPE_7__* %20, i32 %21)
  %23 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %24 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %23, i32 0, i32 18
  %25 = load i32, i32* %24, align 4
  %26 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 17
  store i32 %25, i32* %27, align 4
  %28 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %29 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %28, i32 0, i32 17
  %30 = load i32, i32* %29, align 4
  %31 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 16
  store i32 %30, i32* %32, align 4
  %33 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %34 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %33, i32 0, i32 16
  %35 = load i32, i32* %34, align 4
  %36 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 15
  store i32 %35, i32* %37, align 4
  %38 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %39 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %38, i32 0, i32 15
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 14
  store i32 %40, i32* %42, align 4
  %43 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %44 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %43, i32 0, i32 14
  %45 = load i32, i32* %44, align 4
  %46 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 13
  store i32 %45, i32* %47, align 4
  %48 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %49 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 4
  %51 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 4
  %53 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %54 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %53, i32 0, i32 12
  %55 = load i32, i32* %54, align 4
  %56 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 4
  %58 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %59 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 4
  %63 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %64 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 4
  %66 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 4
  %68 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %69 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 4
  %71 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 4
  %73 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %74 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  %78 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %79 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %84 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %89 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %94 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %99 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %104 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %109 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 32
  store i32 %116, i32* %114, align 4
  %117 = load %struct.hpts_diag*, %struct.hpts_diag** %6, align 8
  %118 = getelementptr inbounds %struct.hpts_diag, %struct.hpts_diag* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_7__*
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %125 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %124, i32 0, i32 2
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %128 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %134 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %133, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* @BBR_LOG_HPTSDIAG, align 4
  %140 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %141 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %140, i32 0, i32 0
  %142 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_8__* %126, i32* null, i32* %132, i32* %138, i32 %139, i32 0, i32 0, %union.tcp_log_stackspecific* %7, i32 0, i32* %141)
  br label %143

143:                                              ; preds = %18, %10, %3
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_8__*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
