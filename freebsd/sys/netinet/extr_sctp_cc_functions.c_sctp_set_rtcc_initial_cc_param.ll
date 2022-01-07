; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_set_rtcc_initial_cc_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_sctp_set_rtcc_initial_cc_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.sctp_nets = type { i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i8*, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64 }

@sctp = common dso_local global i32 0, align 4
@cwnd = common dso_local global i32 0, align 4
@rttvar = common dso_local global i32 0, align 4
@sctp_rttvar_eqret = common dso_local global i32 0, align 4
@sctp_steady_step = common dso_local global i32 0, align 4
@sctp_use_dccc_ecn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_nets*)* @sctp_set_rtcc_initial_cc_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_set_rtcc_initial_cc_param(%struct.sctp_tcb* %0, %struct.sctp_nets* %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca %struct.sctp_nets*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %4, align 8
  %7 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %8 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %9 = call i32 @sctp_set_initial_cc_param(%struct.sctp_tcb* %7, %struct.sctp_nets* %8)
  %10 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %11 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %14 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, 589824
  store i32 %19, i32* %6, align 4
  %20 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %21 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 32
  %24 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %25 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %29, 16
  %31 = or i32 %23, %30
  %32 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %33 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %31, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @sctp, align 4
  %37 = load i32, i32* @cwnd, align 4
  %38 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %39 = load i32, i32* @rttvar, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @SDT_PROBE5(i32 %36, i32 %37, %struct.sctp_nets* %38, i32 %39, i32 %40, i32 0, i32 0, i32 0, i32 %41)
  %43 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %44 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 12
  store i64 0, i64* %46, align 8
  %47 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %48 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 11
  store i64 0, i64* %50, align 8
  %51 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %52 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 9
  store i64 0, i64* %54, align 8
  %55 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %56 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 10
  store i64 0, i64* %58, align 8
  %59 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %60 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 9
  store i64 0, i64* %62, align 8
  %63 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %64 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 8
  store i64 0, i64* %66, align 8
  %67 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %68 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 7
  store i64 0, i64* %70, align 8
  %71 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %72 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  %75 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %76 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @sctp_rttvar_eqret, align 4
  %80 = call i8* @SCTP_BASE_SYSCTL(i32 %79)
  %81 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %82 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  store i8* %80, i8** %84, align 8
  %85 = load i32, i32* @sctp_steady_step, align 4
  %86 = call i8* @SCTP_BASE_SYSCTL(i32 %85)
  %87 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %88 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  store i8* %86, i8** %90, align 8
  %91 = load i32, i32* @sctp_use_dccc_ecn, align 4
  %92 = call i8* @SCTP_BASE_SYSCTL(i32 %91)
  %93 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %94 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  store i8* %92, i8** %96, align 8
  %97 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %98 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %102 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  ret void
}

declare dso_local i32 @sctp_set_initial_cc_param(%struct.sctp_tcb*, %struct.sctp_nets*) #1

declare dso_local i32 @SDT_PROBE5(i32, i32, %struct.sctp_nets*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @SCTP_BASE_SYSCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
