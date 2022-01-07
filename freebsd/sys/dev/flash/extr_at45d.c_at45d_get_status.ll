; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_at45d.c_at45d_get_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_at45d.c_at45d_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i32, i32, %struct.spi_command*, %struct.spi_command* }

@STATUS_REGISTER_READ = common dso_local global %struct.spi_command zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.spi_command*)* @at45d_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at45d_get_status(i32 %0, %struct.spi_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_command*, align 8
  %5 = alloca [8 x %struct.spi_command], align 16
  %6 = alloca [8 x %struct.spi_command], align 16
  %7 = alloca %struct.spi_command, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.spi_command* %1, %struct.spi_command** %4, align 8
  %9 = call i32 @memset(%struct.spi_command* %7, i32 0, i32 24)
  %10 = getelementptr inbounds [8 x %struct.spi_command], [8 x %struct.spi_command]* %6, i64 0, i64 0
  %11 = call i32 @memset(%struct.spi_command* %10, i32 0, i32 192)
  %12 = getelementptr inbounds [8 x %struct.spi_command], [8 x %struct.spi_command]* %5, i64 0, i64 0
  %13 = call i32 @memset(%struct.spi_command* %12, i32 0, i32 192)
  %14 = getelementptr inbounds [8 x %struct.spi_command], [8 x %struct.spi_command]* %6, i64 0, i64 0
  %15 = bitcast %struct.spi_command* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 8 bitcast (%struct.spi_command* @STATUS_REGISTER_READ to i8*), i64 24, i1 false)
  %16 = getelementptr inbounds [8 x %struct.spi_command], [8 x %struct.spi_command]* %6, i64 0, i64 0
  %17 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %7, i32 0, i32 3
  store %struct.spi_command* %16, %struct.spi_command** %17, align 8
  %18 = getelementptr inbounds [8 x %struct.spi_command], [8 x %struct.spi_command]* %5, i64 0, i64 0
  %19 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %7, i32 0, i32 2
  store %struct.spi_command* %18, %struct.spi_command** %19, align 8
  %20 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %7, i32 0, i32 1
  store i32 2, i32* %20, align 4
  %21 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %7, i32 0, i32 0
  store i32 2, i32* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_get_parent(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @SPIBUS_TRANSFER(i32 %23, i32 %24, %struct.spi_command* %7)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.spi_command*, %struct.spi_command** %4, align 8
  %27 = getelementptr inbounds [8 x %struct.spi_command], [8 x %struct.spi_command]* %5, i64 0, i64 1
  %28 = bitcast %struct.spi_command* %26 to i8*
  %29 = bitcast %struct.spi_command* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 24, i1 false)
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local i32 @memset(%struct.spi_command*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SPIBUS_TRANSFER(i32, i32, %struct.spi_command*) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
