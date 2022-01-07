; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_send_ioc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_send_ioc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i8*, i64, i32, i32 }

@MPI_FUNCTION_IOC_INIT = common dso_local global i32 0, align 4
@MPI_VERSION = common dso_local global i32 0, align 4
@MPI_HEADER_VERSION = common dso_local global i32 0, align 4
@MPT_REPLY_SIZE = common dso_local global i32 0, align 4
@MPT_REPLY_HANDLER_HANDSHAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, i32)* @mpt_send_ioc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_send_ioc_init(%struct.mpt_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = call i32 @memset(%struct.TYPE_4__* %7, i32 0, i32 48)
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @MPI_FUNCTION_IOC_INIT, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 16, i32* %15, align 8
  %16 = load i32, i32* @MPI_VERSION, align 4
  %17 = call i8* @htole16(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* @MPI_HEADER_VERSION, align 4
  %20 = call i8* @htole16(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* @MPT_REPLY_SIZE, align 4
  %23 = call i8* @htole16(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* @MPT_REPLY_HANDLER_HANDSHAKE, align 4
  %26 = call i32 @htole32(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %29 = call i32 @mpt_send_handshake_cmd(%struct.mpt_softc* %28, i32 48, %struct.TYPE_4__* %7)
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %35 = call i32 @mpt_recv_handshake_reply(%struct.mpt_softc* %34, i32 4, i32* %8)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %31
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @mpt_send_handshake_cmd(%struct.mpt_softc*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @mpt_recv_handshake_reply(%struct.mpt_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
