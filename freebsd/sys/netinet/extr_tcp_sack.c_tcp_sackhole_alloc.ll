; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_sackhole_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_sackhole_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sackhole = type { i8*, i8*, i8* }
%struct.tcpcb = type { i64 }

@V_tcp_sack_maxholes = common dso_local global i64 0, align 8
@V_tcp_sack_globalholes = common dso_local global i64 0, align 8
@V_tcp_sack_globalmaxholes = common dso_local global i64 0, align 8
@tcps_sack_sboverflow = common dso_local global i32 0, align 4
@V_sack_hole_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sackhole* (%struct.tcpcb*, i8*, i8*)* @tcp_sackhole_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sackhole* @tcp_sackhole_alloc(%struct.tcpcb* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.sackhole*, align 8
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sackhole*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V_tcp_sack_maxholes, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @V_tcp_sack_globalholes, align 8
  %16 = load i64, i64* @V_tcp_sack_globalmaxholes, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %3
  %19 = load i32, i32* @tcps_sack_sboverflow, align 4
  %20 = call i32 @TCPSTAT_INC(i32 %19)
  store %struct.sackhole* null, %struct.sackhole** %4, align 8
  br label %45

21:                                               ; preds = %14
  %22 = load i32, i32* @V_sack_hole_zone, align 4
  %23 = load i32, i32* @M_NOWAIT, align 4
  %24 = call i64 @uma_zalloc(i32 %22, i32 %23)
  %25 = inttoptr i64 %24 to %struct.sackhole*
  store %struct.sackhole* %25, %struct.sackhole** %8, align 8
  %26 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %27 = icmp eq %struct.sackhole* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store %struct.sackhole* null, %struct.sackhole** %4, align 8
  br label %45

29:                                               ; preds = %21
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %32 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %35 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %38 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = call i32 @atomic_add_int(i64* @V_tcp_sack_globalholes, i32 1)
  %44 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  store %struct.sackhole* %44, %struct.sackhole** %4, align 8
  br label %45

45:                                               ; preds = %29, %28, %18
  %46 = load %struct.sackhole*, %struct.sackhole** %4, align 8
  ret %struct.sackhole* %46
}

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i64 @uma_zalloc(i32, i32) #1

declare dso_local i32 @atomic_add_int(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
