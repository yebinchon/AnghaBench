; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_mpa_v2_set_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_mpa_v2_set_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_iwarp_ep = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.mpa_v2_hdr = type { i8*, i8* }

@MPA_RTR_TYPE_NONE = common dso_local global i32 0, align 4
@MPA_V2_PEER2PEER_MODEL = common dso_local global i32 0, align 4
@MPA_RTR_TYPE_ZERO_SEND = common dso_local global i32 0, align 4
@MPA_V2_SEND_RTR = common dso_local global i32 0, align 4
@MPA_RTR_TYPE_ZERO_WRITE = common dso_local global i32 0, align 4
@MPA_V2_WRITE_RTR = common dso_local global i32 0, align 4
@MPA_RTR_TYPE_ZERO_READ = common dso_local global i32 0, align 4
@MPA_V2_READ_RTR = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [106 x i8] c"MPA_NEGOTIATE Header: [%x ord:%x ird] %x ord:%x ird:%x peer2peer:%x rtr_send:%x rtr_write:%x rtr_read:%x\0A\00", align 1
@MPA_V2_IRD_ORD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*, i32*)* @ecore_iwarp_mpa_v2_set_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iwarp_mpa_v2_set_private(%struct.ecore_hwfn* %0, %struct.ecore_iwarp_ep* %1, i32* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_iwarp_ep*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mpa_v2_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_iwarp_ep* %1, %struct.ecore_iwarp_ep** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @MPA_REV2(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %131

16:                                               ; preds = %3
  %17 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %18 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.mpa_v2_hdr*
  store %struct.mpa_v2_hdr* %22, %struct.mpa_v2_hdr** %7, align 8
  %23 = load i32*, i32** %6, align 8
  store i32 16, i32* %23, align 4
  %24 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %25 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %30 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %35 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MPA_RTR_TYPE_NONE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %76

39:                                               ; preds = %16
  %40 = load i32, i32* @MPA_V2_PEER2PEER_MODEL, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %44 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MPA_RTR_TYPE_ZERO_SEND, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, i32* @MPA_V2_SEND_RTR, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %39
  %54 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %55 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MPA_RTR_TYPE_ZERO_WRITE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @MPA_V2_WRITE_RTR, align 4
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %66 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MPA_RTR_TYPE_ZERO_READ, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @MPA_V2_READ_RTR, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %71, %64
  br label %76

76:                                               ; preds = %75, %16
  %77 = load i32, i32* %8, align 4
  %78 = call i8* @htons(i32 %77)
  %79 = load %struct.mpa_v2_hdr*, %struct.mpa_v2_hdr** %7, align 8
  %80 = getelementptr inbounds %struct.mpa_v2_hdr, %struct.mpa_v2_hdr* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i8* @htons(i32 %81)
  %83 = load %struct.mpa_v2_hdr*, %struct.mpa_v2_hdr** %7, align 8
  %84 = getelementptr inbounds %struct.mpa_v2_hdr, %struct.mpa_v2_hdr* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %86 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %87 = load %struct.mpa_v2_hdr*, %struct.mpa_v2_hdr** %7, align 8
  %88 = getelementptr inbounds %struct.mpa_v2_hdr, %struct.mpa_v2_hdr* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.mpa_v2_hdr*, %struct.mpa_v2_hdr** %7, align 8
  %91 = getelementptr inbounds %struct.mpa_v2_hdr, %struct.mpa_v2_hdr* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.mpa_v2_hdr*, %struct.mpa_v2_hdr** %7, align 8
  %94 = bitcast %struct.mpa_v2_hdr* %93 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @MPA_V2_IRD_ORD_MASK, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @MPA_V2_IRD_ORD_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @MPA_V2_PEER2PEER_MODEL, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @MPA_V2_SEND_RTR, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @MPA_V2_WRITE_RTR, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @MPA_V2_READ_RTR, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %85, i32 %86, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i8* %89, i8* %92, i32 %95, i32 %98, i32 %101, i32 %108, i32 %115, i32 %122, i32 %129)
  br label %131

131:                                              ; preds = %76, %3
  ret void
}

declare dso_local i64 @MPA_REV2(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
