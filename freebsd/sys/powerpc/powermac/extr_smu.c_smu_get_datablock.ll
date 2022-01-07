; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_get_datablock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_get_datablock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_cmd = type { i32, i32*, i32 }

@SMU_PARTITION = common dso_local global i32 0, align 4
@SMU_PARTITION_LATEST = common dso_local global i32 0, align 4
@SMU_MISC = common dso_local global i32 0, align 4
@SMU_MISC_GET_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i64)* @smu_get_datablock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_get_datablock(i32 %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.smu_cmd, align 8
  %10 = alloca [4 x i32], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* @SMU_PARTITION, align 4
  %12 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 0
  store i32 2, i32* %13, align 8
  %14 = load i32, i32* @SMU_PARTITION_LATEST, align 4
  %15 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @smu_run_cmd(i32 %22, %struct.smu_cmd* %9, i32 1)
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %25, align 16
  %26 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @SMU_MISC, align 4
  %37 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 0
  store i32 7, i32* %38, align 8
  %39 = load i32, i32* @SMU_MISC_GET_DATA, align 4
  %40 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %39, i32* %42, align 4
  %43 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 16, i32* %45, align 4
  %46 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %50 = call i32 @memcpy(i32* %48, i32* %49, i64 16)
  %51 = load i64, i64* %8, align 8
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @smu_run_cmd(i32 %56, %struct.smu_cmd* %9, i32 1)
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @memcpy(i32* %58, i32* %60, i64 %61)
  ret i32 0
}

declare dso_local i32 @smu_run_cmd(i32, %struct.smu_cmd*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
