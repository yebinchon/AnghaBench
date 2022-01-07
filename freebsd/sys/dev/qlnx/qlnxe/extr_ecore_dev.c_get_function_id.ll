; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_get_function_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_get_function_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32, i64 }

@PXP_PF_ME_OPAQUE_ADDR = common dso_local global i32 0, align 4
@PXP_PF_ME_CONCRETE_ADDR = common dso_local global i32 0, align 4
@PXP_CONCRETE_FID_PFID = common dso_local global i32 0, align 4
@PXP_CONCRETE_FID_PORT = common dso_local global i32 0, align 4
@ECORE_MSG_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Read ME register: Concrete 0x%08x Opaque 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @get_function_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_function_id(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %3 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %4 = load i32, i32* @PXP_PF_ME_OPAQUE_ADDR, align 4
  %5 = call i32 @REG_RD(%struct.ecore_hwfn* %3, i32 %4)
  %6 = sext i32 %5 to i64
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i64 %6, i64* %9, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %11 = load i32, i32* @PXP_PF_ME_CONCRETE_ADDR, align 4
  %12 = call i32 @REG_RD(%struct.ecore_hwfn* %10, i32 %11)
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 15
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %23 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %25 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PXP_CONCRETE_FID_PFID, align 4
  %29 = call i8* @GET_FIELD(i32 %27, i32 %28)
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %31 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %33 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PXP_CONCRETE_FID_PORT, align 4
  %37 = call i8* @GET_FIELD(i32 %35, i32 %36)
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %39 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %41 = load i32, i32* @ECORE_MSG_PROBE, align 4
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %43 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %47 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %40, i32 %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %49)
  ret void
}

declare dso_local i32 @REG_RD(%struct.ecore_hwfn*, i32) #1

declare dso_local i8* @GET_FIELD(i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
