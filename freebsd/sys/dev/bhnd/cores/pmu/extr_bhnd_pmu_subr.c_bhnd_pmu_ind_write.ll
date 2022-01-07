; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_ind_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_ind_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_io = type { i32 (i32, i8*)*, i32 (i32, i32, i8*)* }

@UINT32_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bhnd_pmu_ind_write(%struct.bhnd_pmu_io* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.bhnd_pmu_io*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bhnd_pmu_io* %0, %struct.bhnd_pmu_io** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.bhnd_pmu_io*, %struct.bhnd_pmu_io** %8, align 8
  %17 = getelementptr inbounds %struct.bhnd_pmu_io, %struct.bhnd_pmu_io* %16, i32 0, i32 1
  %18 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 %18(i32 %19, i32 %20, i8* %21)
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* @UINT32_MAX, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %7
  %27 = load %struct.bhnd_pmu_io*, %struct.bhnd_pmu_io** %8, align 8
  %28 = getelementptr inbounds %struct.bhnd_pmu_io, %struct.bhnd_pmu_io* %27, i32 0, i32 0
  %29 = load i32 (i32, i8*)*, i32 (i32, i8*)** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 %29(i32 %30, i8* %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %14, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = and i32 %35, %36
  %38 = or i32 %34, %37
  %39 = load i32, i32* %15, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %15, align 4
  br label %43

41:                                               ; preds = %7
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %41, %26
  %44 = load %struct.bhnd_pmu_io*, %struct.bhnd_pmu_io** %8, align 8
  %45 = getelementptr inbounds %struct.bhnd_pmu_io, %struct.bhnd_pmu_io* %44, i32 0, i32 1
  %46 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 %46(i32 %47, i32 %48, i8* %49)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
