; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_mx25l.c_mx25l_set_4b_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_mx25l.c_mx25l_set_4b_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx25l_softc = type { i32, i32 }
%struct.spi_command = type { i32, i32, %struct.spi_command*, %struct.spi_command* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mx25l_softc*, %struct.spi_command*)* @mx25l_set_4b_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx25l_set_4b_mode(%struct.mx25l_softc* %0, %struct.spi_command* byval(%struct.spi_command) align 8 %1) #0 {
  %3 = alloca %struct.mx25l_softc*, align 8
  %4 = alloca [1 x %struct.spi_command], align 16
  %5 = alloca [1 x %struct.spi_command], align 16
  %6 = alloca %struct.spi_command, align 8
  %7 = alloca i32, align 4
  store %struct.mx25l_softc* %0, %struct.mx25l_softc** %3, align 8
  %8 = call i32 @memset(%struct.spi_command* %6, i32 0, i32 24)
  %9 = getelementptr inbounds [1 x %struct.spi_command], [1 x %struct.spi_command]* %4, i64 0, i64 0
  %10 = call i32 @memset(%struct.spi_command* %9, i32 0, i32 24)
  %11 = getelementptr inbounds [1 x %struct.spi_command], [1 x %struct.spi_command]* %5, i64 0, i64 0
  %12 = call i32 @memset(%struct.spi_command* %11, i32 0, i32 24)
  %13 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds [1 x %struct.spi_command], [1 x %struct.spi_command]* %4, i64 0, i64 0
  %16 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 3
  store %struct.spi_command* %15, %struct.spi_command** %16, align 8
  %17 = getelementptr inbounds [1 x %struct.spi_command], [1 x %struct.spi_command]* %5, i64 0, i64 0
  %18 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %6, i32 0, i32 2
  store %struct.spi_command* %17, %struct.spi_command** %18, align 8
  %19 = getelementptr inbounds [1 x %struct.spi_command], [1 x %struct.spi_command]* %4, i64 0, i64 0
  %20 = bitcast %struct.spi_command* %19 to i8*
  %21 = bitcast %struct.spi_command* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 8 %21, i64 24, i1 false)
  %22 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %23 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SPIBUS_TRANSFER(i32 %24, i32 %27, %struct.spi_command* %6)
  store i32 %28, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %32 = call i32 @mx25l_wait_for_device_ready(%struct.mx25l_softc* %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %2
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @memset(%struct.spi_command*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SPIBUS_TRANSFER(i32, i32, %struct.spi_command*) #1

declare dso_local i32 @mx25l_wait_for_device_ready(%struct.mx25l_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
