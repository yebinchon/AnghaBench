; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_PushPacket.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_PushPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6cp = type { %struct.mqueue*, %struct.TYPE_5__ }
%struct.mqueue = type { i64 }
%struct.TYPE_5__ = type { i64, %struct.bundle* }
%struct.bundle = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.link = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.mbuf = type { i32 }

@ST_OPENED = common dso_local global i64 0, align 8
@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: Not transmitting... waiting for CCP\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@PROTO_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6cp_PushPacket(%struct.ipv6cp* %0, %struct.link* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipv6cp*, align 8
  %5 = alloca %struct.link*, align 8
  %6 = alloca %struct.bundle*, align 8
  %7 = alloca %struct.mqueue*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ipv6cp* %0, %struct.ipv6cp** %4, align 8
  store %struct.link* %1, %struct.link** %5, align 8
  %12 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %13 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.bundle*, %struct.bundle** %14, align 8
  store %struct.bundle* %15, %struct.bundle** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %17 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ST_OPENED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %100

23:                                               ; preds = %2
  %24 = load %struct.link*, %struct.link** %5, align 8
  %25 = getelementptr inbounds %struct.link, %struct.link* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ST_OPENED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load %struct.link*, %struct.link** %5, align 8
  %33 = getelementptr inbounds %struct.link, %struct.link* %32, i32 0, i32 1
  %34 = call i64 @ccp_Required(%struct.TYPE_8__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @LogPHASE, align 4
  %38 = load %struct.link*, %struct.link** %5, align 8
  %39 = getelementptr inbounds %struct.link, %struct.link* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @log_Printf(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 0, i32* %3, align 4
  br label %100

42:                                               ; preds = %31, %23
  %43 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %44 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %43, i32 0, i32 0
  %45 = load %struct.mqueue*, %struct.mqueue** %44, align 8
  %46 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %47 = call i32 @IPV6CP_QUEUES(%struct.ipv6cp* %46)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %45, i64 %48
  %50 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %49, i64 -1
  store %struct.mqueue* %50, %struct.mqueue** %7, align 8
  br label %51

51:                                               ; preds = %92, %42
  %52 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %53 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %51
  %57 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %58 = call %struct.mbuf* @m_dequeue(%struct.mqueue* %57)
  store %struct.mbuf* %58, %struct.mbuf** %8, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %60 = call %struct.mbuf* @mbuf_Read(%struct.mbuf* %59, i32* %10, i32 4)
  store %struct.mbuf* %60, %struct.mbuf** %8, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %62 = call %struct.mbuf* @m_pullup(%struct.mbuf* %61)
  store %struct.mbuf* %62, %struct.mbuf** %8, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %64 = call i32 @m_length(%struct.mbuf* %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %66 = call i32 @MBUF_CTOP(%struct.mbuf* %65)
  %67 = load i32, i32* @AF_INET6, align 4
  %68 = load %struct.bundle*, %struct.bundle** %6, align 8
  %69 = getelementptr inbounds %struct.bundle, %struct.bundle* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = call i32 @FilterCheck(i32 %66, i32 %67, i32* %70, i32* %11)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %56
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %76, %73
  %79 = load %struct.bundle*, %struct.bundle** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @bundle_StartIdleTimer(%struct.bundle* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %56
  %83 = load %struct.link*, %struct.link** %5, align 8
  %84 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %85 = load %struct.bundle*, %struct.bundle** %6, align 8
  %86 = load i32, i32* @PROTO_IPV6, align 4
  %87 = call i32 @link_PushPacket(%struct.link* %83, %struct.mbuf* %84, %struct.bundle* %85, i32 0, i32 %86)
  %88 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @ipv6cp_AddOutOctets(%struct.ipv6cp* %88, i32 %89)
  store i32 1, i32* %3, align 4
  br label %100

91:                                               ; preds = %51
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %94 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %93, i32 -1
  store %struct.mqueue* %94, %struct.mqueue** %7, align 8
  %95 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %96 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %95, i32 0, i32 0
  %97 = load %struct.mqueue*, %struct.mqueue** %96, align 8
  %98 = icmp ne %struct.mqueue* %93, %97
  br i1 %98, label %51, label %99

99:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %82, %36, %22
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @ccp_Required(%struct.TYPE_8__*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @IPV6CP_QUEUES(%struct.ipv6cp*) #1

declare dso_local %struct.mbuf* @m_dequeue(%struct.mqueue*) #1

declare dso_local %struct.mbuf* @mbuf_Read(%struct.mbuf*, i32*, i32) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*) #1

declare dso_local i32 @m_length(%struct.mbuf*) #1

declare dso_local i32 @FilterCheck(i32, i32, i32*, i32*) #1

declare dso_local i32 @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @bundle_StartIdleTimer(%struct.bundle*, i32) #1

declare dso_local i32 @link_PushPacket(%struct.link*, %struct.mbuf*, %struct.bundle*, i32, i32) #1

declare dso_local i32 @ipv6cp_AddOutOctets(%struct.ipv6cp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
