; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_LayerStart.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_LayerStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { %struct.TYPE_5__, i32, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ipv6cp = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@LogIPV6CP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: LayerStart.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"IPV6CP throughput\00", align 1
@OPT_THROUGHPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*)* @ipv6cp_LayerStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6cp_LayerStart(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  %3 = alloca %struct.ipv6cp*, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %4 = load %struct.fsm*, %struct.fsm** %2, align 8
  %5 = call %struct.ipv6cp* @fsm2ipv6cp(%struct.fsm* %4)
  store %struct.ipv6cp* %5, %struct.ipv6cp** %3, align 8
  %6 = load i32, i32* @LogIPV6CP, align 4
  %7 = load %struct.fsm*, %struct.fsm** %2, align 8
  %8 = getelementptr inbounds %struct.fsm, %struct.fsm* %7, i32 0, i32 2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @log_Printf(i32 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.ipv6cp*, %struct.ipv6cp** %3, align 8
  %14 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %13, i32 0, i32 2
  %15 = load %struct.fsm*, %struct.fsm** %2, align 8
  %16 = getelementptr inbounds %struct.fsm, %struct.fsm* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OPT_THROUGHPUT, align 4
  %19 = call i32 @Enabled(i32 %17, i32 %18)
  %20 = call i32 @throughput_start(i32* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.ipv6cp*, %struct.ipv6cp** %3, align 8
  %22 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 3
  %27 = load %struct.fsm*, %struct.fsm** %2, align 8
  %28 = getelementptr inbounds %struct.fsm, %struct.fsm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.fsm*, %struct.fsm** %2, align 8
  %31 = getelementptr inbounds %struct.fsm, %struct.fsm* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %26, i32* %32, align 4
  %33 = load %struct.fsm*, %struct.fsm** %2, align 8
  %34 = getelementptr inbounds %struct.fsm, %struct.fsm* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %26, i32* %35, align 8
  %36 = load %struct.ipv6cp*, %struct.ipv6cp** %3, align 8
  %37 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  ret void
}

declare dso_local %struct.ipv6cp* @fsm2ipv6cp(%struct.fsm*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @throughput_start(i32*, i8*, i32) #1

declare dso_local i32 @Enabled(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
