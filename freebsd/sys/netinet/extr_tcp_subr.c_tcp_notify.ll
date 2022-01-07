; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_tcp_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_tcp_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.inpcb = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rtentry* }
%struct.rtentry = type { i32 }
%struct.tcpcb = type { i64, i32, i32 }

@V_tcbinfo = common dso_local global i32 0, align 4
@INP_TIMEWAIT = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"tcp_notify: tp == NULL\00", align 1
@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4
@so = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inpcb* (%struct.inpcb*, i32)* @tcp_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inpcb* @tcp_notify(%struct.inpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 @INP_INFO_LOCK_ASSERT(i32* @V_tcbinfo)
  %8 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %9 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %8)
  %10 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %11 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @INP_TIMEWAIT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @INP_DROPPED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16, %2
  %24 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  store %struct.inpcb* %24, %struct.inpcb** %3, align 8
  br label %96

25:                                               ; preds = %16
  %26 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %27 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %26)
  store %struct.tcpcb* %27, %struct.tcpcb** %6, align 8
  %28 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %29 = icmp ne %struct.tcpcb* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @EHOSTUNREACH, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @ENETUNREACH, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @EHOSTDOWN, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %45, %41, %37
  %50 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %51 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.rtentry*, %struct.rtentry** %52, align 8
  %54 = icmp ne %struct.rtentry* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %57 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.rtentry*, %struct.rtentry** %58, align 8
  %60 = call i32 @RTFREE(%struct.rtentry* %59)
  %61 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %62 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store %struct.rtentry* null, %struct.rtentry** %63, align 8
  br label %64

64:                                               ; preds = %55, %49
  %65 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  store %struct.inpcb* %65, %struct.inpcb** %3, align 8
  br label %96

66:                                               ; preds = %45, %25
  %67 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %68 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %66
  %73 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 3
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %79 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call %struct.tcpcb* @tcp_drop(%struct.tcpcb* %83, i32 %84)
  store %struct.tcpcb* %85, %struct.tcpcb** %6, align 8
  %86 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %87 = icmp ne %struct.tcpcb* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  store %struct.inpcb* %89, %struct.inpcb** %3, align 8
  br label %96

90:                                               ; preds = %82
  store %struct.inpcb* null, %struct.inpcb** %3, align 8
  br label %96

91:                                               ; preds = %77, %72, %66
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %94 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  store %struct.inpcb* %95, %struct.inpcb** %3, align 8
  br label %96

96:                                               ; preds = %91, %90, %88, %64, %23
  %97 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  ret %struct.inpcb* %97
}

declare dso_local i32 @INP_INFO_LOCK_ASSERT(i32*) #1

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @RTFREE(%struct.rtentry*) #1

declare dso_local %struct.tcpcb* @tcp_drop(%struct.tcpcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
