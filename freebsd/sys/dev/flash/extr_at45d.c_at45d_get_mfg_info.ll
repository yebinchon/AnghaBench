; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_at45d.c_at45d_get_mfg_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_at45d.c_at45d_get_mfg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i32, i32, %struct.spi_command**, %struct.spi_command** }
%struct.at45d_mfg_info = type { i32, i32 }

@MANUFACTURER_ID = common dso_local global %struct.spi_command zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.at45d_mfg_info*)* @at45d_get_mfg_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at45d_get_mfg_info(i32 %0, %struct.at45d_mfg_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.at45d_mfg_info*, align 8
  %6 = alloca [8 x %struct.spi_command], align 16
  %7 = alloca [8 x %struct.spi_command], align 16
  %8 = alloca %struct.spi_command, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.at45d_mfg_info* %1, %struct.at45d_mfg_info** %5, align 8
  %10 = call i32 @memset(%struct.spi_command* %8, i32 0, i32 24)
  %11 = getelementptr inbounds [8 x %struct.spi_command], [8 x %struct.spi_command]* %7, i64 0, i64 0
  %12 = call i32 @memset(%struct.spi_command* %11, i32 0, i32 192)
  %13 = getelementptr inbounds [8 x %struct.spi_command], [8 x %struct.spi_command]* %6, i64 0, i64 0
  %14 = call i32 @memset(%struct.spi_command* %13, i32 0, i32 192)
  %15 = getelementptr inbounds [8 x %struct.spi_command], [8 x %struct.spi_command]* %7, i64 0, i64 0
  %16 = bitcast %struct.spi_command* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 8 bitcast (%struct.spi_command* @MANUFACTURER_ID to i8*), i64 24, i1 false)
  %17 = bitcast [8 x %struct.spi_command]* %7 to %struct.spi_command**
  %18 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %8, i32 0, i32 3
  store %struct.spi_command** %17, %struct.spi_command*** %18, align 8
  %19 = bitcast [8 x %struct.spi_command]* %6 to %struct.spi_command**
  %20 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %8, i32 0, i32 2
  store %struct.spi_command** %19, %struct.spi_command*** %20, align 8
  %21 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %8, i32 0, i32 1
  store i32 7, i32* %21, align 4
  %22 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %8, i32 0, i32 0
  store i32 7, i32* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @device_get_parent(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @SPIBUS_TRANSFER(i32 %24, i32 %25, %struct.spi_command* %8)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %42

31:                                               ; preds = %2
  %32 = getelementptr inbounds [8 x %struct.spi_command], [8 x %struct.spi_command]* %6, i64 0, i64 0
  %33 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %32, i64 1
  %34 = call i32 @be32dec(%struct.spi_command* %33)
  %35 = load %struct.at45d_mfg_info*, %struct.at45d_mfg_info** %5, align 8
  %36 = getelementptr inbounds %struct.at45d_mfg_info, %struct.at45d_mfg_info* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds [8 x %struct.spi_command], [8 x %struct.spi_command]* %6, i64 0, i64 0
  %38 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %37, i64 5
  %39 = call i32 @be16dec(%struct.spi_command* %38)
  %40 = load %struct.at45d_mfg_info*, %struct.at45d_mfg_info** %5, align 8
  %41 = getelementptr inbounds %struct.at45d_mfg_info, %struct.at45d_mfg_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %31, %29
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @memset(%struct.spi_command*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SPIBUS_TRANSFER(i32, i32, %struct.spi_command*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @be32dec(%struct.spi_command*) #1

declare dso_local i32 @be16dec(%struct.spi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
