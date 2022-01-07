; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ip.c_ipv4_Input.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ip.c_ipv4_Input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.link = type { i32 }
%struct.mbuf = type { i32 }

@ST_OPENED = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ipv4_Input: IPCP not open - packet dropped\0A\00", align 1
@MB_IPIN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @ipv4_Input(%struct.bundle* %0, %struct.link* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca %struct.link*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %5, align 8
  store %struct.link* %1, %struct.link** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %9 = load %struct.bundle*, %struct.bundle** %5, align 8
  %10 = getelementptr inbounds %struct.bundle, %struct.bundle* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ST_OPENED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @LogWARN, align 4
  %19 = call i32 @log_Printf(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %21 = call i32 @m_freem(%struct.mbuf* %20)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %36

22:                                               ; preds = %3
  %23 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %24 = load i32, i32* @MB_IPIN, align 4
  %25 = call i32 @m_settype(%struct.mbuf* %23, i32 %24)
  %26 = load %struct.bundle*, %struct.bundle** %5, align 8
  %27 = load %struct.link*, %struct.link** %6, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %29 = load i32, i32* @AF_INET, align 4
  %30 = call i32 @ip_Input(%struct.bundle* %26, %struct.link* %27, %struct.mbuf* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.bundle*, %struct.bundle** %5, align 8
  %32 = getelementptr inbounds %struct.bundle, %struct.bundle* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ipcp_AddInOctets(%struct.TYPE_6__* %33, i32 %34)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %36

36:                                               ; preds = %22, %17
  %37 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %37
}

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_settype(%struct.mbuf*, i32) #1

declare dso_local i32 @ip_Input(%struct.bundle*, %struct.link*, %struct.mbuf*, i32) #1

declare dso_local i32 @ipcp_AddInOctets(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
