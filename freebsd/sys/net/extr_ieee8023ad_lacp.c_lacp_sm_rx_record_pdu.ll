; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_rx_record_pdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_rx_record_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacp_port = type { i32, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.lacpdu = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }

@LACP_STATESTR_MAX = common dso_local global i32 0, align 4
@LACP_STATE_ACTIVITY = common dso_local global i32 0, align 4
@LACP_STATE_AGGREGATION = common dso_local global i32 0, align 4
@LACP_STATE_SYNC = common dso_local global i32 0, align 4
@LACP_STATE_DEFAULTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"old pstate %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"new pstate %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lacp_port*, %struct.lacpdu*)* @lacp_sm_rx_record_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lacp_sm_rx_record_pdu(%struct.lacp_port* %0, %struct.lacpdu* %1) #0 {
  %3 = alloca %struct.lacp_port*, align 8
  %4 = alloca %struct.lacpdu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.lacp_port* %0, %struct.lacp_port** %3, align 8
  store %struct.lacpdu* %1, %struct.lacpdu** %4, align 8
  %9 = load i32, i32* @LACP_STATESTR_MAX, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %15 = call i32 @LACP_TRACE(%struct.lacp_port* %14)
  %16 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %17 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.lacpdu*, %struct.lacpdu** %4, align 8
  %21 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LACP_STATE_ACTIVITY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %2
  %28 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %29 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @LACP_STATE_ACTIVITY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.lacpdu*, %struct.lacpdu** %4, align 8
  %36 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LACP_STATE_ACTIVITY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %34, %27
  %43 = phi i1 [ false, %27 ], [ %41, %34 ]
  br label %44

44:                                               ; preds = %42, %2
  %45 = phi i1 [ true, %2 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %5, align 4
  %47 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %48 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %47, i32 0, i32 1
  %49 = load %struct.lacpdu*, %struct.lacpdu** %4, align 8
  %50 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %49, i32 0, i32 1
  %51 = bitcast %struct.TYPE_5__* %48 to i8*
  %52 = bitcast %struct.TYPE_5__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %44
  %56 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %57 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.lacpdu*, %struct.lacpdu** %4, align 8
  %60 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @LACP_STATE_AGGREGATION, align 4
  %64 = call i64 @LACP_STATE_EQ(i32 %58, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %55
  %67 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %68 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %67, i32 0, i32 3
  %69 = load %struct.lacpdu*, %struct.lacpdu** %4, align 8
  %70 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %69, i32 0, i32 0
  %71 = call i32 @lacp_compare_peerinfo(i32* %68, %struct.TYPE_6__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %66, %55
  %74 = load %struct.lacpdu*, %struct.lacpdu** %4, align 8
  %75 = getelementptr inbounds %struct.lacpdu, %struct.lacpdu* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @LACP_STATE_AGGREGATION, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %73, %66
  %82 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %83 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load i32, i32* @LACP_STATE_SYNC, align 4
  %90 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %91 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %88, %81
  br label %104

96:                                               ; preds = %73, %44
  %97 = load i32, i32* @LACP_STATE_SYNC, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %100 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %98
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %96, %95
  %105 = load i32, i32* @LACP_STATE_DEFAULTED, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %108 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %113 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %111, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %104
  %118 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %119 = load i32, i32* %6, align 4
  %120 = trunc i64 %11 to i32
  %121 = call i32 @lacp_format_state(i32 %119, i8* %13, i32 %120)
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to %struct.lacp_port*
  %124 = call i32 @LACP_DPRINTF(%struct.lacp_port* %123)
  %125 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %126 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %127 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = trunc i64 %11 to i32
  %131 = call i32 @lacp_format_state(i32 %129, i8* %13, i32 %130)
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to %struct.lacp_port*
  %134 = call i32 @LACP_DPRINTF(%struct.lacp_port* %133)
  br label %135

135:                                              ; preds = %117, %104
  %136 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @lacp_sm_ptx_update_timeout(%struct.lacp_port* %136, i32 %137)
  %139 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %139)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LACP_TRACE(%struct.lacp_port*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @LACP_STATE_EQ(i32, i32, i32) #2

declare dso_local i32 @lacp_compare_peerinfo(i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @LACP_DPRINTF(%struct.lacp_port*) #2

declare dso_local i32 @lacp_format_state(i32, i8*, i32) #2

declare dso_local i32 @lacp_sm_ptx_update_timeout(%struct.lacp_port*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
