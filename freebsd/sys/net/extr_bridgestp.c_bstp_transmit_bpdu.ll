; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_transmit_bpdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_transmit_bpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_state = type { i32 }
%struct.bstp_port = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bstp_cbpdu = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i8* }

@BSTP_MSGTYPE_CFG = common dso_local global i32 0, align 4
@BSTP_MSGTYPE_RSTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_state*, %struct.bstp_port*)* @bstp_transmit_bpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_transmit_bpdu(%struct.bstp_state* %0, %struct.bstp_port* %1) #0 {
  %3 = alloca %struct.bstp_state*, align 8
  %4 = alloca %struct.bstp_port*, align 8
  %5 = alloca %struct.bstp_cbpdu, align 8
  store %struct.bstp_state* %0, %struct.bstp_state** %3, align 8
  store %struct.bstp_port* %1, %struct.bstp_port** %4, align 8
  %6 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %7 = call i32 @BSTP_LOCK_ASSERT(%struct.bstp_state* %6)
  %8 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %9 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 48
  %13 = call i8* @htons(i32 %12)
  %14 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %5, i32 0, i32 11
  store i8* %13, i8** %14, align 8
  %15 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %16 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %5, i32 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PV2ADDR(i32 %18, i32 %20)
  %22 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %23 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @htonl(i32 %25)
  %27 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %5, i32 0, i32 9
  store i32 %26, i32* %27, align 8
  %28 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %29 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 48
  %33 = call i8* @htons(i32 %32)
  %34 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %5, i32 0, i32 8
  store i8* %33, i8** %34, align 8
  %35 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %36 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %5, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @PV2ADDR(i32 %38, i32 %40)
  %42 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %43 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @htons(i32 %44)
  %46 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %5, i32 0, i32 6
  store i8* %45, i8** %46, align 8
  %47 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %48 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @htons(i32 %49)
  %51 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %5, i32 0, i32 5
  store i8* %50, i8** %51, align 8
  %52 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %53 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @htons(i32 %54)
  %56 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %5, i32 0, i32 4
  store i8* %55, i8** %56, align 8
  %57 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %58 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @htons(i32 %59)
  %61 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %5, i32 0, i32 3
  store i8* %60, i8** %61, align 8
  %62 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %63 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @htons(i32 %64)
  %66 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %5, i32 0, i32 2
  store i8* %65, i8** %66, align 8
  %67 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %68 = call i32 @bstp_pdu_flags(%struct.bstp_port* %67)
  %69 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %5, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %71 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %79 [
    i32 128, label %73
    i32 129, label %76
  ]

73:                                               ; preds = %2
  %74 = load i32, i32* @BSTP_MSGTYPE_CFG, align 4
  %75 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %5, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  br label %79

76:                                               ; preds = %2
  %77 = load i32, i32* @BSTP_MSGTYPE_RSTP, align 4
  %78 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %5, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  br label %79

79:                                               ; preds = %2, %76, %73
  %80 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %81 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %82 = call i32 @bstp_send_bpdu(%struct.bstp_state* %80, %struct.bstp_port* %81, %struct.bstp_cbpdu* %5)
  ret void
}

declare dso_local i32 @BSTP_LOCK_ASSERT(%struct.bstp_state*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @PV2ADDR(i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @bstp_pdu_flags(%struct.bstp_port*) #1

declare dso_local i32 @bstp_send_bpdu(%struct.bstp_state*, %struct.bstp_port*, %struct.bstp_cbpdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
