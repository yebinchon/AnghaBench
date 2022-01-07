; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_mx25l.c_mx25l_set_writable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_mx25l.c_mx25l_set_writable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i32, i32, %struct.spi_command*, %struct.spi_command* }
%struct.mx25l_softc = type { i32, i32 }

@CMD_WRITE_ENABLE = common dso_local global %struct.spi_command zeroinitializer, align 8
@CMD_WRITE_DISABLE = common dso_local global %struct.spi_command zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mx25l_softc*, i32)* @mx25l_set_writable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx25l_set_writable(%struct.mx25l_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mx25l_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.spi_command], align 16
  %6 = alloca [1 x %struct.spi_command], align 16
  %7 = alloca %struct.spi_command, align 8
  %8 = alloca i32, align 4
  store %struct.mx25l_softc* %0, %struct.mx25l_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @memset(%struct.spi_command* %7, i32 0, i32 24)
  %10 = getelementptr inbounds [1 x %struct.spi_command], [1 x %struct.spi_command]* %5, i64 0, i64 0
  %11 = call i32 @memset(%struct.spi_command* %10, i32 0, i32 24)
  %12 = getelementptr inbounds [1 x %struct.spi_command], [1 x %struct.spi_command]* %6, i64 0, i64 0
  %13 = call i32 @memset(%struct.spi_command* %12, i32 0, i32 24)
  %14 = getelementptr inbounds [1 x %struct.spi_command], [1 x %struct.spi_command]* %5, i64 0, i64 0
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = bitcast %struct.spi_command* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 8 bitcast (%struct.spi_command* @CMD_WRITE_ENABLE to i8*), i64 24, i1 false)
  br label %21

19:                                               ; preds = %2
  %20 = bitcast %struct.spi_command* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 8 bitcast (%struct.spi_command* @CMD_WRITE_DISABLE to i8*), i64 24, i1 false)
  br label %21

21:                                               ; preds = %19, %17
  %22 = getelementptr inbounds [1 x %struct.spi_command], [1 x %struct.spi_command]* %5, i64 0, i64 0
  %23 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %7, i32 0, i32 3
  store %struct.spi_command* %22, %struct.spi_command** %23, align 8
  %24 = getelementptr inbounds [1 x %struct.spi_command], [1 x %struct.spi_command]* %6, i64 0, i64 0
  %25 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %7, i32 0, i32 2
  store %struct.spi_command* %24, %struct.spi_command** %25, align 8
  %26 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %7, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %7, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %29 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mx25l_softc*, %struct.mx25l_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SPIBUS_TRANSFER(i32 %30, i32 %33, %struct.spi_command* %7)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.spi_command*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SPIBUS_TRANSFER(i32, i32, %struct.spi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
