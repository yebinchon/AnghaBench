; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_flowend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_flowend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sockbuf, %struct.sockbuf }
%struct.sockbuf = type { i32 }
%union.tcp_log_stackspecific = type { i32 }
%struct.timeval = type { i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@TCP_LOG_FLOWEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*)* @bbr_log_flowend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_flowend(%struct.tcp_bbr* %0) #0 {
  %2 = alloca %struct.tcp_bbr*, align 8
  %3 = alloca %union.tcp_log_stackspecific, align 4
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca %struct.sockbuf*, align 8
  %6 = alloca %struct.timeval, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %2, align 8
  %7 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %8 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %1
  %15 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %16 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %23 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store %struct.sockbuf* %27, %struct.sockbuf** %4, align 8
  %28 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %29 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.sockbuf* %33, %struct.sockbuf** %5, align 8
  br label %35

34:                                               ; preds = %14
  store %struct.sockbuf* null, %struct.sockbuf** %5, align 8
  store %struct.sockbuf* null, %struct.sockbuf** %4, align 8
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %37 = bitcast %union.tcp_log_stackspecific* %3 to i32*
  %38 = call i32 @tcp_get_usecs(%struct.timeval* %6)
  %39 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %36, i32* %37, i32 %38)
  %40 = load %struct.tcp_bbr*, %struct.tcp_bbr** %2, align 8
  %41 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %44 = load %struct.sockbuf*, %struct.sockbuf** %5, align 8
  %45 = load i32, i32* @TCP_LOG_FLOWEND, align 4
  %46 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_6__* %42, i32* null, %struct.sockbuf* %43, %struct.sockbuf* %44, i32 %45, i32 0, i32 0, %union.tcp_log_stackspecific* %3, i32 0, %struct.timeval* %6)
  br label %47

47:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, i32*, i32) #1

declare dso_local i32 @tcp_get_usecs(%struct.timeval*) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_6__*, i32*, %struct.sockbuf*, %struct.sockbuf*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
