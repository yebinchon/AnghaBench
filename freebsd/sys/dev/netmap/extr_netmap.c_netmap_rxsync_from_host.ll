; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_rxsync_from_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_rxsync_from_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_kring = type { i64, i64, i64, i64, i32, %struct.mbq, %struct.netmap_ring*, %struct.netmap_adapter* }
%struct.mbq = type { i32 }
%struct.netmap_ring = type { %struct.netmap_slot* }
%struct.netmap_slot = type { i32, i64 }
%struct.netmap_adapter = type { i32 }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"nm %d len %d\00", align 1
@netmap_debug = common dso_local global i32 0, align 4
@NM_DEBUG_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@NR_FORWARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_kring*, i32)* @netmap_rxsync_from_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_rxsync_from_host(%struct.netmap_kring* %0, i32 %1) #0 {
  %3 = alloca %struct.netmap_kring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netmap_adapter*, align 8
  %6 = alloca %struct.netmap_ring*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbq*, align 8
  %13 = alloca %struct.mbq, align 4
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.netmap_slot*, align 8
  store %struct.netmap_kring* %0, %struct.netmap_kring** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %19 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %18, i32 0, i32 7
  %20 = load %struct.netmap_adapter*, %struct.netmap_adapter** %19, align 8
  store %struct.netmap_adapter* %20, %struct.netmap_adapter** %5, align 8
  %21 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %22 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %21, i32 0, i32 6
  %23 = load %struct.netmap_ring*, %struct.netmap_ring** %22, align 8
  store %struct.netmap_ring* %23, %struct.netmap_ring** %6, align 8
  %24 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %25 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 1
  store i64 %27, i64* %9, align 8
  %28 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %29 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %31 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %32 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %31, i32 0, i32 5
  store %struct.mbq* %32, %struct.mbq** %12, align 8
  %33 = call i32 @mbq_init(%struct.mbq* %13)
  %34 = load %struct.mbq*, %struct.mbq** %12, align 8
  %35 = call i32 @mbq_lock(%struct.mbq* %34)
  %36 = load %struct.mbq*, %struct.mbq** %12, align 8
  %37 = call i64 @mbq_len(%struct.mbq* %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %102

40:                                               ; preds = %2
  %41 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %42 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  %44 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %45 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @nm_prev(i64 %46, i64 %47)
  store i64 %48, i64* %15, align 8
  br label %49

49:                                               ; preds = %87, %40
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %15, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.mbq*, %struct.mbq** %12, align 8
  %55 = call %struct.mbuf* @mbq_dequeue(%struct.mbq* %54)
  store %struct.mbuf* %55, %struct.mbuf** %14, align 8
  %56 = icmp ne %struct.mbuf* %55, null
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ]
  br i1 %58, label %59, label %98

59:                                               ; preds = %57
  %60 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %61 = call i32 @MBUF_LEN(%struct.mbuf* %60)
  store i32 %61, i32* %16, align 4
  %62 = load %struct.netmap_ring*, %struct.netmap_ring** %6, align 8
  %63 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %62, i32 0, i32 0
  %64 = load %struct.netmap_slot*, %struct.netmap_slot** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %64, i64 %65
  store %struct.netmap_slot* %66, %struct.netmap_slot** %17, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %68 = load i32, i32* %16, align 4
  %69 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %70 = load %struct.netmap_slot*, %struct.netmap_slot** %17, align 8
  %71 = call i32 @NMB(%struct.netmap_adapter* %69, %struct.netmap_slot* %70)
  %72 = call i32 @m_copydata(%struct.mbuf* %67, i32 0, i32 %68, i32 %71)
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @nm_prdis(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %73, i32 %74)
  %76 = load i32, i32* @netmap_debug, align 4
  %77 = load i32, i32* @NM_DEBUG_HOST, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %59
  %81 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %82 = load %struct.netmap_slot*, %struct.netmap_slot** %17, align 8
  %83 = call i32 @NMB(%struct.netmap_adapter* %81, %struct.netmap_slot* %82)
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @nm_dump_buf(i32 %83, i32 %84, i32 128, i32* null)
  %86 = call i32 @nm_prinf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %80, %59
  %88 = load i32, i32* %16, align 4
  %89 = load %struct.netmap_slot*, %struct.netmap_slot** %17, align 8
  %90 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.netmap_slot*, %struct.netmap_slot** %17, align 8
  %92 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i64 @nm_next(i64 %93, i64 %94)
  store i64 %95, i64* %7, align 8
  %96 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %97 = call i32 @mbq_enqueue(%struct.mbq* %13, %struct.mbuf* %96)
  br label %49

98:                                               ; preds = %57
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %101 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %2
  %103 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %104 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %7, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* %10, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %102
  %110 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i64 @nm_may_forward_down(%struct.netmap_kring* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %116 = call i32 @netmap_sw_to_nic(%struct.netmap_adapter* %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i32, i32* @NR_FORWARD, align 4
  %121 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %122 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  store i32 0, i32* %11, align 4
  br label %125

125:                                              ; preds = %119, %114
  br label %126

126:                                              ; preds = %125, %109
  %127 = load i64, i64* %10, align 8
  %128 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %129 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %128, i32 0, i32 3
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %126, %102
  %131 = load %struct.mbq*, %struct.mbq** %12, align 8
  %132 = call i32 @mbq_unlock(%struct.mbq* %131)
  %133 = call i32 @mbq_purge(%struct.mbq* %13)
  %134 = call i32 @mbq_fini(%struct.mbq* %13)
  %135 = load i32, i32* %11, align 4
  ret i32 %135
}

declare dso_local i32 @mbq_init(%struct.mbq*) #1

declare dso_local i32 @mbq_lock(%struct.mbq*) #1

declare dso_local i64 @mbq_len(%struct.mbq*) #1

declare dso_local i64 @nm_prev(i64, i64) #1

declare dso_local %struct.mbuf* @mbq_dequeue(%struct.mbq*) #1

declare dso_local i32 @MBUF_LEN(%struct.mbuf*) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @NMB(%struct.netmap_adapter*, %struct.netmap_slot*) #1

declare dso_local i32 @nm_prdis(i8*, i64, i32) #1

declare dso_local i32 @nm_prinf(i8*, i32) #1

declare dso_local i32 @nm_dump_buf(i32, i32, i32, i32*) #1

declare dso_local i64 @nm_next(i64, i64) #1

declare dso_local i32 @mbq_enqueue(%struct.mbq*, %struct.mbuf*) #1

declare dso_local i64 @nm_may_forward_down(%struct.netmap_kring*, i32) #1

declare dso_local i32 @netmap_sw_to_nic(%struct.netmap_adapter*) #1

declare dso_local i32 @mbq_unlock(%struct.mbq*) #1

declare dso_local i32 @mbq_purge(%struct.mbq*) #1

declare dso_local i32 @mbq_fini(%struct.mbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
