; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_enqueue_keepalive_ipv4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_enqueue_keepalive_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbufq = type { i32 }
%struct.dyn_ipv4_state = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }
%struct.mbuf = type { i32 }

@ACK_FWD = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"ipfw: limit for IPv4 keepalive queue is reached.\0A\00", align 1
@ACK_REV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbufq*, %struct.dyn_ipv4_state*)* @dyn_enqueue_keepalive_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dyn_enqueue_keepalive_ipv4(%struct.mbufq* %0, %struct.dyn_ipv4_state* %1) #0 {
  %3 = alloca %struct.mbufq*, align 8
  %4 = alloca %struct.dyn_ipv4_state*, align 8
  %5 = alloca %struct.mbuf*, align 8
  store %struct.mbufq* %0, %struct.mbufq** %3, align 8
  store %struct.dyn_ipv4_state* %1, %struct.dyn_ipv4_state** %4, align 8
  %6 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %7 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ACK_FWD, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %67

14:                                               ; preds = %2
  %15 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %16 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %14
  %22 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %23 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.mbuf* @dyn_mgethdr(i32 8, i32 %26)
  store %struct.mbuf* %27, %struct.mbuf** %5, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %29 = icmp ne %struct.mbuf* %28, null
  br i1 %29, label %30, label %66

30:                                               ; preds = %21
  %31 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %32 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %33 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %36 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %39 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 1
  %44 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %45 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %50 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %53 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dyn_make_keepalive_ipv4(%struct.mbuf* %31, i32 %34, i32 %37, i64 %43, i64 %48, i32 %51, i32 %54)
  %56 = load %struct.mbufq*, %struct.mbufq** %3, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %58 = call i64 @mbufq_enqueue(%struct.mbufq* %56, %struct.mbuf* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %30
  %61 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %62 = call i32 @m_freem(%struct.mbuf* %61)
  %63 = load i32, i32* @LOG_DEBUG, align 4
  %64 = call i32 @log(i32 %63, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %129

65:                                               ; preds = %30
  br label %66

66:                                               ; preds = %65, %21
  br label %67

67:                                               ; preds = %66, %14, %2
  %68 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %69 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @ACK_REV, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %129

76:                                               ; preds = %67
  %77 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %78 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %129

83:                                               ; preds = %76
  %84 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %85 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call %struct.mbuf* @dyn_mgethdr(i32 8, i32 %88)
  store %struct.mbuf* %89, %struct.mbuf** %5, align 8
  %90 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %91 = icmp ne %struct.mbuf* %90, null
  br i1 %91, label %92, label %128

92:                                               ; preds = %83
  %93 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %94 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %95 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %98 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %101 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %104, 1
  %106 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %107 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %112 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.dyn_ipv4_state*, %struct.dyn_ipv4_state** %4, align 8
  %115 = getelementptr inbounds %struct.dyn_ipv4_state, %struct.dyn_ipv4_state* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @dyn_make_keepalive_ipv4(%struct.mbuf* %93, i32 %96, i32 %99, i64 %105, i64 %110, i32 %113, i32 %116)
  %118 = load %struct.mbufq*, %struct.mbufq** %3, align 8
  %119 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %120 = call i64 @mbufq_enqueue(%struct.mbufq* %118, %struct.mbuf* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %92
  %123 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %124 = call i32 @m_freem(%struct.mbuf* %123)
  %125 = load i32, i32* @LOG_DEBUG, align 4
  %126 = call i32 @log(i32 %125, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %129

127:                                              ; preds = %92
  br label %128

128:                                              ; preds = %127, %83
  br label %129

129:                                              ; preds = %60, %122, %128, %76, %67
  ret void
}

declare dso_local %struct.mbuf* @dyn_mgethdr(i32, i32) #1

declare dso_local i32 @dyn_make_keepalive_ipv4(%struct.mbuf*, i32, i32, i64, i64, i32, i32) #1

declare dso_local i64 @mbufq_enqueue(%struct.mbufq*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
