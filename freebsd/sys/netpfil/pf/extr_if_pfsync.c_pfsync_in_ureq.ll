; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_in_ureq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_in_ureq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pfsync_pkt = type { i32 }
%struct.mbuf = type { i64 }
%struct.pfsync_upd_req = type { i64, i64 }
%struct.pf_state = type { i32 }

@V_pfsyncstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PFSTATE_NOSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfsync_pkt*, %struct.mbuf*, i32, i32)* @pfsync_in_ureq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfsync_in_ureq(%struct.pfsync_pkt* %0, %struct.mbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfsync_pkt*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfsync_upd_req*, align 8
  %11 = alloca %struct.pfsync_upd_req*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pf_state*, align 8
  store %struct.pfsync_pkt* %0, %struct.pfsync_pkt** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %13, align 4
  %21 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call %struct.mbuf* @m_pulldown(%struct.mbuf* %21, i32 %22, i32 %23, i32* %15)
  store %struct.mbuf* %24, %struct.mbuf** %12, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %26 = icmp eq %struct.mbuf* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_pfsyncstats, i32 0, i32 1), align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_pfsyncstats, i32 0, i32 1), align 4
  store i32 -1, i32* %5, align 4
  br label %92

30:                                               ; preds = %4
  %31 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = inttoptr i64 %36 to %struct.pfsync_upd_req*
  store %struct.pfsync_upd_req* %37, %struct.pfsync_upd_req** %11, align 8
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %87, %30
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %90

42:                                               ; preds = %38
  %43 = load %struct.pfsync_upd_req*, %struct.pfsync_upd_req** %11, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.pfsync_upd_req, %struct.pfsync_upd_req* %43, i64 %45
  store %struct.pfsync_upd_req* %46, %struct.pfsync_upd_req** %10, align 8
  %47 = load %struct.pfsync_upd_req*, %struct.pfsync_upd_req** %10, align 8
  %48 = getelementptr inbounds %struct.pfsync_upd_req, %struct.pfsync_upd_req* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.pfsync_upd_req*, %struct.pfsync_upd_req** %10, align 8
  %53 = getelementptr inbounds %struct.pfsync_upd_req, %struct.pfsync_upd_req* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (...) @pfsync_bulk_start()
  br label %86

58:                                               ; preds = %51, %42
  %59 = load %struct.pfsync_upd_req*, %struct.pfsync_upd_req** %10, align 8
  %60 = getelementptr inbounds %struct.pfsync_upd_req, %struct.pfsync_upd_req* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.pfsync_upd_req*, %struct.pfsync_upd_req** %10, align 8
  %63 = getelementptr inbounds %struct.pfsync_upd_req, %struct.pfsync_upd_req* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call %struct.pf_state* @pf_find_state_byid(i64 %61, i64 %64)
  store %struct.pf_state* %65, %struct.pf_state** %16, align 8
  %66 = load %struct.pf_state*, %struct.pf_state** %16, align 8
  %67 = icmp eq %struct.pf_state* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_pfsyncstats, i32 0, i32 0), align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_pfsyncstats, i32 0, i32 0), align 4
  br label %87

71:                                               ; preds = %58
  %72 = load %struct.pf_state*, %struct.pf_state** %16, align 8
  %73 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PFSTATE_NOSYNC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.pf_state*, %struct.pf_state** %16, align 8
  %80 = call i32 @PF_STATE_UNLOCK(%struct.pf_state* %79)
  br label %87

81:                                               ; preds = %71
  %82 = load %struct.pf_state*, %struct.pf_state** %16, align 8
  %83 = call i32 @pfsync_update_state_req(%struct.pf_state* %82)
  %84 = load %struct.pf_state*, %struct.pf_state** %16, align 8
  %85 = call i32 @PF_STATE_UNLOCK(%struct.pf_state* %84)
  br label %86

86:                                               ; preds = %81, %56
  br label %87

87:                                               ; preds = %86, %78, %68
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %38

90:                                               ; preds = %38
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %27
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.mbuf* @m_pulldown(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @pfsync_bulk_start(...) #1

declare dso_local %struct.pf_state* @pf_find_state_byid(i64, i64) #1

declare dso_local i32 @PF_STATE_UNLOCK(%struct.pf_state*) #1

declare dso_local i32 @pfsync_update_state_req(%struct.pf_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
