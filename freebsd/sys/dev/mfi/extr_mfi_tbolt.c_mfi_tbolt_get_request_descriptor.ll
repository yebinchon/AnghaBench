; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_get_request_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_get_request_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.mfi_mpi2_request_descriptor = type { i32 }
%struct.mfi_softc = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Invalid SMID (0x%x)request for descriptor\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.mfi_mpi2_request_descriptor* @mfi_tbolt_get_request_descriptor(%struct.mfi_softc* %0, i32 %1) #0 {
  %3 = alloca %union.mfi_mpi2_request_descriptor*, align 8
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %9 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sge i32 %7, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %14 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %16)
  store %union.mfi_mpi2_request_descriptor* null, %union.mfi_mpi2_request_descriptor** %3, align 8
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @memset(i32* %26, i32 0, i32 4)
  %28 = load i32*, i32** %6, align 8
  %29 = bitcast i32* %28 to %union.mfi_mpi2_request_descriptor*
  store %union.mfi_mpi2_request_descriptor* %29, %union.mfi_mpi2_request_descriptor** %3, align 8
  br label %30

30:                                               ; preds = %18, %12
  %31 = load %union.mfi_mpi2_request_descriptor*, %union.mfi_mpi2_request_descriptor** %3, align 8
  ret %union.mfi_mpi2_request_descriptor* %31
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
