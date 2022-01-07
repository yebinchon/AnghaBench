; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_init_beacon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_init_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpi_vap = type { %struct.wpi_buf }
%struct.wpi_buf = type { i32, i32, i32, i32 }
%struct.wpi_cmd_beacon = type { i32, i32, i8*, i8*, i32 }

@WPI_ID_BROADCAST = common dso_local global i32 0, align 4
@WPI_LIFETIME_INFINITE = common dso_local global i32 0, align 4
@WPI_TX_NEED_ACK = common dso_local global i32 0, align 4
@WPI_TX_INSERT_TSTAMP = common dso_local global i32 0, align 4
@WPI_CMD_SET_BEACON = common dso_local global i32 0, align 4
@WPI_CMD_QUEUE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpi_vap*)* @wpi_init_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpi_init_beacon(%struct.wpi_vap* %0) #0 {
  %2 = alloca %struct.wpi_vap*, align 8
  %3 = alloca %struct.wpi_buf*, align 8
  %4 = alloca %struct.wpi_cmd_beacon*, align 8
  store %struct.wpi_vap* %0, %struct.wpi_vap** %2, align 8
  %5 = load %struct.wpi_vap*, %struct.wpi_vap** %2, align 8
  %6 = getelementptr inbounds %struct.wpi_vap, %struct.wpi_vap* %5, i32 0, i32 0
  store %struct.wpi_buf* %6, %struct.wpi_buf** %3, align 8
  %7 = load %struct.wpi_buf*, %struct.wpi_buf** %3, align 8
  %8 = getelementptr inbounds %struct.wpi_buf, %struct.wpi_buf* %7, i32 0, i32 3
  %9 = bitcast i32* %8 to %struct.wpi_cmd_beacon*
  store %struct.wpi_cmd_beacon* %9, %struct.wpi_cmd_beacon** %4, align 8
  %10 = load i32, i32* @WPI_ID_BROADCAST, align 4
  %11 = load %struct.wpi_cmd_beacon*, %struct.wpi_cmd_beacon** %4, align 8
  %12 = getelementptr inbounds %struct.wpi_cmd_beacon, %struct.wpi_cmd_beacon* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load %struct.wpi_cmd_beacon*, %struct.wpi_cmd_beacon** %4, align 8
  %14 = getelementptr inbounds %struct.wpi_cmd_beacon, %struct.wpi_cmd_beacon* %13, i32 0, i32 0
  store i32 255, i32* %14, align 8
  %15 = load %struct.wpi_cmd_beacon*, %struct.wpi_cmd_beacon** %4, align 8
  %16 = getelementptr inbounds %struct.wpi_cmd_beacon, %struct.wpi_cmd_beacon* %15, i32 0, i32 1
  store i32 15, i32* %16, align 4
  %17 = load i32, i32* @WPI_LIFETIME_INFINITE, align 4
  %18 = call i8* @htole32(i32 %17)
  %19 = load %struct.wpi_cmd_beacon*, %struct.wpi_cmd_beacon** %4, align 8
  %20 = getelementptr inbounds %struct.wpi_cmd_beacon, %struct.wpi_cmd_beacon* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @WPI_TX_NEED_ACK, align 4
  %22 = load i32, i32* @WPI_TX_INSERT_TSTAMP, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @htole32(i32 %23)
  %25 = load %struct.wpi_cmd_beacon*, %struct.wpi_cmd_beacon** %4, align 8
  %26 = getelementptr inbounds %struct.wpi_cmd_beacon, %struct.wpi_cmd_beacon* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @WPI_CMD_SET_BEACON, align 4
  %28 = load %struct.wpi_buf*, %struct.wpi_buf** %3, align 8
  %29 = getelementptr inbounds %struct.wpi_buf, %struct.wpi_buf* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @WPI_CMD_QUEUE_NUM, align 4
  %31 = load %struct.wpi_buf*, %struct.wpi_buf** %3, align 8
  %32 = getelementptr inbounds %struct.wpi_buf, %struct.wpi_buf* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.wpi_buf*, %struct.wpi_buf** %3, align 8
  %34 = getelementptr inbounds %struct.wpi_buf, %struct.wpi_buf* %33, i32 0, i32 0
  store i32 32, i32* %34, align 4
  ret void
}

declare dso_local i8* @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
