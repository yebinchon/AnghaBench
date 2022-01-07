; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_read_cam_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_read_cam_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ecore_igu_block* }
%struct.ecore_igu_block = type { i32, i8*, i8*, i8* }
%struct.ecore_ptt = type { i32 }

@IGU_REG_MAPPING_MEMORY = common dso_local global i64 0, align 8
@IGU_MAPPING_LINE_FUNCTION_NUMBER = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_PF_VALID = common dso_local global i32 0, align 4
@IGU_MAPPING_LINE_VECTOR_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32)* @ecore_int_igu_read_cam_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_int_igu_read_cam_block(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_igu_block*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %10 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %11 = load i64, i64* @IGU_REG_MAPPING_MEMORY, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = add i64 %11, %14
  %16 = call i32 @ecore_rd(%struct.ecore_hwfn* %9, %struct.ecore_ptt* %10, i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %22, i64 %24
  store %struct.ecore_igu_block* %25, %struct.ecore_igu_block** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IGU_MAPPING_LINE_FUNCTION_NUMBER, align 4
  %28 = call i8* @GET_FIELD(i32 %26, i32 %27)
  %29 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %8, align 8
  %30 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @IGU_MAPPING_LINE_PF_VALID, align 4
  %33 = call i8* @GET_FIELD(i32 %31, i32 %32)
  %34 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %8, align 8
  %35 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @IGU_MAPPING_LINE_VECTOR_NUMBER, align 4
  %38 = call i8* @GET_FIELD(i32 %36, i32 %37)
  %39 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %8, align 8
  %40 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.ecore_igu_block*, %struct.ecore_igu_block** %8, align 8
  %43 = getelementptr inbounds %struct.ecore_igu_block, %struct.ecore_igu_block* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  ret void
}

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64) #1

declare dso_local i8* @GET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
