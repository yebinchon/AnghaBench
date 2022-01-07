; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_received_rstp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_received_rstp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_state = type { i32 }
%struct.bstp_port = type { %struct.bstp_config_unit }
%struct.bstp_config_unit = type { i32 }
%struct.mbuf = type { i64 }
%struct.bstp_tbpdu = type { i64 }
%struct.bstp_cbpdu = type { i32 }

@BSTP_MSGTYPE_RSTP = common dso_local global i64 0, align 8
@BSTP_BPDU_RSTP_LEN = common dso_local global i64 0, align 8
@caddr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_state*, %struct.bstp_port*, %struct.mbuf**, %struct.bstp_tbpdu*)* @bstp_received_rstp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_received_rstp(%struct.bstp_state* %0, %struct.bstp_port* %1, %struct.mbuf** %2, %struct.bstp_tbpdu* %3) #0 {
  %5 = alloca %struct.bstp_state*, align 8
  %6 = alloca %struct.bstp_port*, align 8
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca %struct.bstp_tbpdu*, align 8
  %9 = alloca %struct.bstp_cbpdu, align 4
  %10 = alloca %struct.bstp_config_unit*, align 8
  store %struct.bstp_state* %0, %struct.bstp_state** %5, align 8
  store %struct.bstp_port* %1, %struct.bstp_port** %6, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %7, align 8
  store %struct.bstp_tbpdu* %3, %struct.bstp_tbpdu** %8, align 8
  %11 = load %struct.bstp_port*, %struct.bstp_port** %6, align 8
  %12 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %11, i32 0, i32 0
  store %struct.bstp_config_unit* %12, %struct.bstp_config_unit** %10, align 8
  %13 = load %struct.bstp_tbpdu*, %struct.bstp_tbpdu** %8, align 8
  %14 = getelementptr inbounds %struct.bstp_tbpdu, %struct.bstp_tbpdu* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BSTP_MSGTYPE_RSTP, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %48

19:                                               ; preds = %4
  %20 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BSTP_BPDU_RSTP_LEN, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  %29 = load i64, i64* @BSTP_BPDU_RSTP_LEN, align 8
  %30 = call %struct.mbuf* @m_pullup(%struct.mbuf* %28, i64 %29)
  %31 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %30, %struct.mbuf** %31, align 8
  %32 = icmp eq %struct.mbuf* %30, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %48

34:                                               ; preds = %26, %19
  %35 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %35, align 8
  %37 = load i32, i32* @caddr_t, align 4
  %38 = call i32 @mtod(%struct.mbuf* %36, i32 %37)
  %39 = load i64, i64* @BSTP_BPDU_RSTP_LEN, align 8
  %40 = call i32 @memcpy(%struct.bstp_cbpdu* %9, i32 %38, i64 %39)
  %41 = load %struct.bstp_port*, %struct.bstp_port** %6, align 8
  %42 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %10, align 8
  %43 = call i32 @bstp_decode_bpdu(%struct.bstp_port* %41, %struct.bstp_cbpdu* %9, %struct.bstp_config_unit* %42)
  %44 = load %struct.bstp_state*, %struct.bstp_state** %5, align 8
  %45 = load %struct.bstp_port*, %struct.bstp_port** %6, align 8
  %46 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %10, align 8
  %47 = call i32 @bstp_received_bpdu(%struct.bstp_state* %44, %struct.bstp_port* %45, %struct.bstp_config_unit* %46)
  br label %48

48:                                               ; preds = %34, %33, %18
  ret void
}

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*, i64) #1

declare dso_local i32 @memcpy(%struct.bstp_cbpdu*, i32, i64) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @bstp_decode_bpdu(%struct.bstp_port*, %struct.bstp_cbpdu*, %struct.bstp_config_unit*) #1

declare dso_local i32 @bstp_received_bpdu(%struct.bstp_state*, %struct.bstp_port*, %struct.bstp_config_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
