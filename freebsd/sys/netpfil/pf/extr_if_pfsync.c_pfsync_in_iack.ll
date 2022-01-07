; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_in_iack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_in_iack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pfsync_pkt = type { i32 }
%struct.mbuf = type { i64 }
%struct.pfsync_ins_ack = type { i32, i32 }
%struct.pf_state = type { i32 }

@V_pfsyncstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PFSTATE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfsync_pkt*, %struct.mbuf*, i32, i32)* @pfsync_in_iack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfsync_in_iack(%struct.pfsync_pkt* %0, %struct.mbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfsync_pkt*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfsync_ins_ack*, align 8
  %11 = alloca %struct.pfsync_ins_ack*, align 8
  %12 = alloca %struct.pf_state*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pfsync_pkt* %0, %struct.pfsync_pkt** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %14, align 4
  %21 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call %struct.mbuf* @m_pulldown(%struct.mbuf* %21, i32 %22, i32 %23, i32* %15)
  store %struct.mbuf* %24, %struct.mbuf** %13, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %26 = icmp eq %struct.mbuf* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_pfsyncstats, i32 0, i32 0), align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_pfsyncstats, i32 0, i32 0), align 4
  store i32 -1, i32* %5, align 4
  br label %78

30:                                               ; preds = %4
  %31 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = inttoptr i64 %36 to %struct.pfsync_ins_ack*
  store %struct.pfsync_ins_ack* %37, %struct.pfsync_ins_ack** %11, align 8
  store i32 0, i32* %16, align 4
  br label %38

38:                                               ; preds = %70, %30
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %73

42:                                               ; preds = %38
  %43 = load %struct.pfsync_ins_ack*, %struct.pfsync_ins_ack** %11, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.pfsync_ins_ack, %struct.pfsync_ins_ack* %43, i64 %45
  store %struct.pfsync_ins_ack* %46, %struct.pfsync_ins_ack** %10, align 8
  %47 = load %struct.pfsync_ins_ack*, %struct.pfsync_ins_ack** %10, align 8
  %48 = getelementptr inbounds %struct.pfsync_ins_ack, %struct.pfsync_ins_ack* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pfsync_ins_ack*, %struct.pfsync_ins_ack** %10, align 8
  %51 = getelementptr inbounds %struct.pfsync_ins_ack, %struct.pfsync_ins_ack* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.pf_state* @pf_find_state_byid(i32 %49, i32 %52)
  store %struct.pf_state* %53, %struct.pf_state** %12, align 8
  %54 = load %struct.pf_state*, %struct.pf_state** %12, align 8
  %55 = icmp eq %struct.pf_state* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %70

57:                                               ; preds = %42
  %58 = load %struct.pf_state*, %struct.pf_state** %12, align 8
  %59 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PFSTATE_ACK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.pf_state*, %struct.pf_state** %12, align 8
  %66 = call i32 @pfsync_undefer_state(%struct.pf_state* %65, i32 0)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load %struct.pf_state*, %struct.pf_state** %12, align 8
  %69 = call i32 @PF_STATE_UNLOCK(%struct.pf_state* %68)
  br label %70

70:                                               ; preds = %67, %56
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %16, align 4
  br label %38

73:                                               ; preds = %38
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %27
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.mbuf* @m_pulldown(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local %struct.pf_state* @pf_find_state_byid(i32, i32) #1

declare dso_local i32 @pfsync_undefer_state(%struct.pf_state*, i32) #1

declare dso_local i32 @PF_STATE_UNLOCK(%struct.pf_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
