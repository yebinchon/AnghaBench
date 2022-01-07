; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_handle_mbx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_handle_mbx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.nicvf = type { i32, i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_7__, i8*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%union.nic_mbx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@__const.nicvf_handle_mbx_intr.mbx = private unnamed_addr constant { %struct.TYPE_10__, [16 x i8] } { %struct.TYPE_10__ zeroinitializer, [16 x i8] undef }, align 4
@NIC_VF_PF_MAILBOX_0_1 = common dso_local global i32 0, align 4
@NIC_PF_VF_MAILBOX_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid message from PF, msg 0x%x\0A\00", align 1
@NICVF_INTR_MBOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*)* @nicvf_handle_mbx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_handle_mbx_intr(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  %3 = alloca %union.nic_mbx, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  %7 = bitcast %union.nic_mbx* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ({ %struct.TYPE_10__, [16 x i8] }* @__const.nicvf_handle_mbx_intr.mbx to i8*), i64 20, i1 false)
  %8 = load i32, i32* @NIC_VF_PF_MAILBOX_0_1, align 4
  store i32 %8, i32* %5, align 4
  %9 = bitcast %union.nic_mbx* %3 to i32*
  store i32* %9, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @NIC_PF_VF_MAILBOX_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @nicvf_reg_read(%struct.nicvf* %15, i32 %16)
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %10

28:                                               ; preds = %10
  %29 = bitcast %union.nic_mbx* %3 to %struct.TYPE_10__*
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %146 [
    i32 129, label %32
    i32 133, label %73
    i32 130, label %77
    i32 128, label %81
    i32 131, label %91
    i32 132, label %98
  ]

32:                                               ; preds = %28
  %33 = load i8*, i8** @TRUE, align 8
  %34 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %35 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  %36 = bitcast %union.nic_mbx* %3 to %struct.TYPE_6__*
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 127
  %40 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %41 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = bitcast %union.nic_mbx* %3 to %struct.TYPE_6__*
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 127
  %46 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %47 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = bitcast %union.nic_mbx* %3 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %52 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 8
  %53 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %54 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 4
  %56 = bitcast %union.nic_mbx* %3 to %struct.TYPE_6__*
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %60 = call i32 @memcpy(i32 %55, i32 %58, i32 %59)
  %61 = bitcast %union.nic_mbx* %3 to %struct.TYPE_6__*
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %65 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %64, i32 0, i32 10
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @FALSE, align 4
  %67 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %68 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %70 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %69, i32 0, i32 6
  store i32 0, i32* %70, align 8
  %71 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %72 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %71, i32 0, i32 2
  store i32 0, i32* %72, align 8
  br label %154

73:                                               ; preds = %28
  %74 = load i8*, i8** @TRUE, align 8
  %75 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %76 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %75, i32 0, i32 7
  store i8* %74, i8** %76, align 8
  br label %154

77:                                               ; preds = %28
  %78 = load i8*, i8** @TRUE, align 8
  %79 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %80 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %79, i32 0, i32 9
  store i8* %78, i8** %80, align 8
  br label %154

81:                                               ; preds = %28
  %82 = bitcast %union.nic_mbx* %3 to %struct.TYPE_8__*
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %86 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %85, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load i8*, i8** @TRUE, align 8
  %89 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %90 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %89, i32 0, i32 7
  store i8* %88, i8** %90, align 8
  br label %154

91:                                               ; preds = %28
  %92 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %93 = bitcast %union.nic_mbx* %3 to i32*
  %94 = call i32 @nicvf_read_bgx_stats(%struct.nicvf* %92, i32* %93)
  %95 = load i8*, i8** @TRUE, align 8
  %96 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %97 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %96, i32 0, i32 7
  store i8* %95, i8** %97, align 8
  br label %154

98:                                               ; preds = %28
  %99 = load i8*, i8** @TRUE, align 8
  %100 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %101 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %100, i32 0, i32 7
  store i8* %99, i8** %101, align 8
  %102 = bitcast %union.nic_mbx* %3 to %struct.TYPE_9__*
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %106 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = bitcast %union.nic_mbx* %3 to %struct.TYPE_9__*
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %111 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  %112 = bitcast %union.nic_mbx* %3 to %struct.TYPE_9__*
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %116 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %118 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %98
  %122 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %123 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %126 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %127, 1000000
  %129 = call i32 @if_setbaudrate(i32 %124, i32 %128)
  %130 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %131 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @LINK_STATE_UP, align 4
  %134 = call i32 @if_link_state_change(i32 %132, i32 %133)
  br label %145

135:                                              ; preds = %98
  %136 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %137 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @if_setbaudrate(i32 %138, i32 0)
  %140 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %141 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @LINK_STATE_DOWN, align 4
  %144 = call i32 @if_link_state_change(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %135, %121
  br label %154

146:                                              ; preds = %28
  %147 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %148 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = bitcast %union.nic_mbx* %3 to %struct.TYPE_10__*
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @device_printf(i32 %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %146, %145, %91, %81, %77, %73, %32
  %155 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %156 = load i32, i32* @NICVF_INTR_MBOX, align 4
  %157 = call i32 @nicvf_clear_intr(%struct.nicvf* %155, i32 %156, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nicvf_reg_read(%struct.nicvf*, i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @nicvf_read_bgx_stats(%struct.nicvf*, i32*) #2

declare dso_local i32 @if_setbaudrate(i32, i32) #2

declare dso_local i32 @if_link_state_change(i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*, i32) #2

declare dso_local i32 @nicvf_clear_intr(%struct.nicvf*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
