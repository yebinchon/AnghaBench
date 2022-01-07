; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_slew_cpu_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_slew_cpu_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_cmd = type { i32, i8*, i32 }

@SMU_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @smu_slew_cpu_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu_slew_cpu_voltage(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_cmd, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SMU_POWER, align 4
  %7 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 2
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 0
  store i32 8, i32* %8, align 8
  %9 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 86, i8* %11, align 1
  %12 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 83, i8* %14, align 1
  %15 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  store i8 76, i8* %17, align 1
  %18 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  store i8 69, i8* %20, align 1
  %21 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  store i8 87, i8* %23, align 1
  %24 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 5
  store i8 -1, i8* %26, align 1
  %27 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 6
  store i8 1, i8* %29, align 1
  %30 = load i32, i32* %4, align 4
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 7
  store i8 %31, i8* %34, align 1
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @smu_run_cmd(i32 %35, %struct.smu_cmd* %5, i32 1)
  ret void
}

declare dso_local i32 @smu_run_cmd(i32, %struct.smu_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
