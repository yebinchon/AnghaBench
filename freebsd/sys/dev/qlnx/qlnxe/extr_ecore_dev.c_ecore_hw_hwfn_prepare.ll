; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_hwfn_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_hwfn_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32 }

@PGLUE_B_REG_PGL_ADDR_E8_F0_K2_E5 = common dso_local global i32 0, align 4
@PGLUE_B_REG_PGL_ADDR_EC_F0_K2_E5 = common dso_local global i32 0, align 4
@PGLUE_B_REG_PGL_ADDR_F0_F0_K2_E5 = common dso_local global i32 0, align 4
@PGLUE_B_REG_PGL_ADDR_F4_F0_K2_E5 = common dso_local global i32 0, align 4
@PGLUE_B_REG_PGL_ADDR_88_F0_BB = common dso_local global i32 0, align 4
@PGLUE_B_REG_PGL_ADDR_8C_F0_BB = common dso_local global i32 0, align 4
@PGLUE_B_REG_PGL_ADDR_90_F0_BB = common dso_local global i32 0, align 4
@PGLUE_B_REG_PGL_ADDR_94_F0_BB = common dso_local global i32 0, align 4
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @ecore_hw_hwfn_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_hw_hwfn_prepare(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %3 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %4 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @ECORE_IS_AH(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @ECORE_IS_E5(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %8, %1
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PGLUE_B_REG_PGL_ADDR_E8_F0_K2_E5, align 4
  %20 = call i32 @ecore_wr(%struct.ecore_hwfn* %15, i32 %18, i32 %19, i32 0)
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %23 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PGLUE_B_REG_PGL_ADDR_EC_F0_K2_E5, align 4
  %26 = call i32 @ecore_wr(%struct.ecore_hwfn* %21, i32 %24, i32 %25, i32 0)
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PGLUE_B_REG_PGL_ADDR_F0_F0_K2_E5, align 4
  %32 = call i32 @ecore_wr(%struct.ecore_hwfn* %27, i32 %30, i32 %31, i32 0)
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %35 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PGLUE_B_REG_PGL_ADDR_F4_F0_K2_E5, align 4
  %38 = call i32 @ecore_wr(%struct.ecore_hwfn* %33, i32 %36, i32 %37, i32 0)
  br label %64

39:                                               ; preds = %8
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %42 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PGLUE_B_REG_PGL_ADDR_88_F0_BB, align 4
  %45 = call i32 @ecore_wr(%struct.ecore_hwfn* %40, i32 %43, i32 %44, i32 0)
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %48 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PGLUE_B_REG_PGL_ADDR_8C_F0_BB, align 4
  %51 = call i32 @ecore_wr(%struct.ecore_hwfn* %46, i32 %49, i32 %50, i32 0)
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %54 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PGLUE_B_REG_PGL_ADDR_90_F0_BB, align 4
  %57 = call i32 @ecore_wr(%struct.ecore_hwfn* %52, i32 %55, i32 %56, i32 0)
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %60 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PGLUE_B_REG_PGL_ADDR_94_F0_BB, align 4
  %63 = call i32 @ecore_wr(%struct.ecore_hwfn* %58, i32 %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %39, %14
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %66 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %67 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ecore_pglueb_clear_err(%struct.ecore_hwfn* %65, i32 %68)
  %70 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %72 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ, align 4
  %75 = call i32 @ecore_wr(%struct.ecore_hwfn* %70, i32 %73, i32 %74, i32 1)
  ret void
}

declare dso_local i64 @ECORE_IS_AH(i32) #1

declare dso_local i64 @ECORE_IS_E5(i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, i32, i32, i32) #1

declare dso_local i32 @ecore_pglueb_clear_err(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
