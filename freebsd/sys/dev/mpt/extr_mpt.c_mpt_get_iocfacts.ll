; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_get_iocfacts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_get_iocfacts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MPI_FUNCTION_IOC_FACTS = common dso_local global i32 0, align 4
@MPT_REPLY_HANDLER_HANDSHAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, i32*)* @mpt_get_iocfacts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_get_iocfacts(%struct.mpt_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32 @memset(%struct.TYPE_4__* %6, i32 0, i32 8)
  %9 = load i32, i32* @MPI_FUNCTION_IOC_FACTS, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @MPT_REPLY_HANDLER_HANDSHAKE, align 4
  %12 = call i32 @htole32(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %15 = call i32 @mpt_send_handshake_cmd(%struct.mpt_softc* %14, i32 8, %struct.TYPE_4__* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @mpt_recv_handshake_reply(%struct.mpt_softc* %21, i32 4, i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %18
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @mpt_send_handshake_cmd(%struct.mpt_softc*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @mpt_recv_handshake_reply(%struct.mpt_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
