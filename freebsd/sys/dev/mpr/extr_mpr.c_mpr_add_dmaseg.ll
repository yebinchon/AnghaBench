; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_add_dmaseg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr.c_mpr_add_dmaseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_command = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i64, i32 }

@MPR_CM_FLAGS_SGE_SIMPLE = common dso_local global i32 0, align 4
@MPI2_IEEE_SGE_FLAGS_SIMPLE_ELEMENT = common dso_local global i32 0, align 4
@MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR = common dso_local global i32 0, align 4
@MPI2_SGE_FLAGS_SIMPLE_ELEMENT = common dso_local global i64 0, align 8
@MPI2_SGE_FLAGS_64_BIT_ADDRESSING = common dso_local global i64 0, align 8
@MPI2_SGE_FLAGS_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpr_add_dmaseg(%struct.mpr_command* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mpr_command*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca %struct.TYPE_6__, align 8
  store %struct.mpr_command* %0, %struct.mpr_command** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.mpr_command*, %struct.mpr_command** %7, align 8
  %15 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MPR_CM_FLAGS_SGE_SIMPLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @MPI2_IEEE_SGE_FLAGS_SIMPLE_ELEMENT, align 4
  %22 = load i32, i32* @MPI2_IEEE_SGE_FLAGS_SYSTEM_ADDR, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %29 = call i32 @mpr_from_u64(i32 %27, i32* %28)
  %30 = load %struct.mpr_command*, %struct.mpr_command** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @mpr_push_ieee_sge(%struct.mpr_command* %30, %struct.TYPE_6__* %13, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %51

33:                                               ; preds = %5
  %34 = load i64, i64* @MPI2_SGE_FLAGS_SIMPLE_ELEMENT, align 8
  %35 = load i64, i64* @MPI2_SGE_FLAGS_64_BIT_ADDRESSING, align 8
  %36 = or i64 %34, %35
  %37 = load i64, i64* %10, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @MPI2_SGE_FLAGS_SHIFT, align 8
  %42 = shl i64 %40, %41
  %43 = or i64 %39, %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %47 = call i32 @mpr_from_u64(i32 %45, i32* %46)
  %48 = load %struct.mpr_command*, %struct.mpr_command** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @mpr_push_sge(%struct.mpr_command* %48, %struct.TYPE_5__* %12, i32 16, i32 %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %33, %20
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @mpr_from_u64(i32, i32*) #1

declare dso_local i32 @mpr_push_ieee_sge(%struct.mpr_command*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mpr_push_sge(%struct.mpr_command*, %struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
