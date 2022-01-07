; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3c_pcs_force_los.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3c_pcs_force_los.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i64, i32 }

@A_XGM_SERDES_STAT0 = common dso_local global i64 0, align 8
@F_LOWSIGFORCEEN0 = common dso_local global i32 0, align 4
@F_LOWSIGFORCEVALUE0 = common dso_local global i32 0, align 4
@A_XGM_SERDES_STAT1 = common dso_local global i64 0, align 8
@F_LOWSIGFORCEEN1 = common dso_local global i32 0, align 4
@F_LOWSIGFORCEVALUE1 = common dso_local global i32 0, align 4
@A_XGM_SERDES_STAT2 = common dso_local global i64 0, align 8
@F_LOWSIGFORCEEN2 = common dso_local global i32 0, align 4
@F_LOWSIGFORCEVALUE2 = common dso_local global i32 0, align 4
@A_XGM_SERDES_STAT3 = common dso_local global i64 0, align 8
@F_LOWSIGFORCEEN3 = common dso_local global i32 0, align 4
@F_LOWSIGFORCEVALUE3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3c_pcs_force_los(%struct.cmac* %0) #0 {
  %2 = alloca %struct.cmac*, align 8
  store %struct.cmac* %0, %struct.cmac** %2, align 8
  %3 = load %struct.cmac*, %struct.cmac** %2, align 8
  %4 = getelementptr inbounds %struct.cmac, %struct.cmac* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load i64, i64* @A_XGM_SERDES_STAT0, align 8
  %7 = load %struct.cmac*, %struct.cmac** %2, align 8
  %8 = getelementptr inbounds %struct.cmac, %struct.cmac* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  %11 = load i32, i32* @F_LOWSIGFORCEEN0, align 4
  %12 = load i32, i32* @F_LOWSIGFORCEVALUE0, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @F_LOWSIGFORCEEN0, align 4
  %15 = load i32, i32* @F_LOWSIGFORCEVALUE0, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @t3_set_reg_field(i32 %5, i64 %10, i32 %13, i32 %16)
  %18 = load %struct.cmac*, %struct.cmac** %2, align 8
  %19 = getelementptr inbounds %struct.cmac, %struct.cmac* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* @A_XGM_SERDES_STAT1, align 8
  %22 = load %struct.cmac*, %struct.cmac** %2, align 8
  %23 = getelementptr inbounds %struct.cmac, %struct.cmac* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load i32, i32* @F_LOWSIGFORCEEN1, align 4
  %27 = load i32, i32* @F_LOWSIGFORCEVALUE1, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @F_LOWSIGFORCEEN1, align 4
  %30 = load i32, i32* @F_LOWSIGFORCEVALUE1, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @t3_set_reg_field(i32 %20, i64 %25, i32 %28, i32 %31)
  %33 = load %struct.cmac*, %struct.cmac** %2, align 8
  %34 = getelementptr inbounds %struct.cmac, %struct.cmac* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* @A_XGM_SERDES_STAT2, align 8
  %37 = load %struct.cmac*, %struct.cmac** %2, align 8
  %38 = getelementptr inbounds %struct.cmac, %struct.cmac* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load i32, i32* @F_LOWSIGFORCEEN2, align 4
  %42 = load i32, i32* @F_LOWSIGFORCEVALUE2, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @F_LOWSIGFORCEEN2, align 4
  %45 = load i32, i32* @F_LOWSIGFORCEVALUE2, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @t3_set_reg_field(i32 %35, i64 %40, i32 %43, i32 %46)
  %48 = load %struct.cmac*, %struct.cmac** %2, align 8
  %49 = getelementptr inbounds %struct.cmac, %struct.cmac* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* @A_XGM_SERDES_STAT3, align 8
  %52 = load %struct.cmac*, %struct.cmac** %2, align 8
  %53 = getelementptr inbounds %struct.cmac, %struct.cmac* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load i32, i32* @F_LOWSIGFORCEEN3, align 4
  %57 = load i32, i32* @F_LOWSIGFORCEVALUE3, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @F_LOWSIGFORCEEN3, align 4
  %60 = load i32, i32* @F_LOWSIGFORCEVALUE3, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @t3_set_reg_field(i32 %50, i64 %55, i32 %58, i32 %61)
  %63 = load %struct.cmac*, %struct.cmac** %2, align 8
  %64 = getelementptr inbounds %struct.cmac, %struct.cmac* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* @A_XGM_SERDES_STAT0, align 8
  %67 = load %struct.cmac*, %struct.cmac** %2, align 8
  %68 = getelementptr inbounds %struct.cmac, %struct.cmac* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load i32, i32* @F_LOWSIGFORCEEN0, align 4
  %72 = call i32 @t3_set_reg_field(i32 %65, i64 %70, i32 %71, i32 0)
  %73 = load %struct.cmac*, %struct.cmac** %2, align 8
  %74 = getelementptr inbounds %struct.cmac, %struct.cmac* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* @A_XGM_SERDES_STAT1, align 8
  %77 = load %struct.cmac*, %struct.cmac** %2, align 8
  %78 = getelementptr inbounds %struct.cmac, %struct.cmac* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load i32, i32* @F_LOWSIGFORCEEN1, align 4
  %82 = call i32 @t3_set_reg_field(i32 %75, i64 %80, i32 %81, i32 0)
  %83 = load %struct.cmac*, %struct.cmac** %2, align 8
  %84 = getelementptr inbounds %struct.cmac, %struct.cmac* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* @A_XGM_SERDES_STAT2, align 8
  %87 = load %struct.cmac*, %struct.cmac** %2, align 8
  %88 = getelementptr inbounds %struct.cmac, %struct.cmac* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load i32, i32* @F_LOWSIGFORCEEN2, align 4
  %92 = call i32 @t3_set_reg_field(i32 %85, i64 %90, i32 %91, i32 0)
  %93 = load %struct.cmac*, %struct.cmac** %2, align 8
  %94 = getelementptr inbounds %struct.cmac, %struct.cmac* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* @A_XGM_SERDES_STAT3, align 8
  %97 = load %struct.cmac*, %struct.cmac** %2, align 8
  %98 = getelementptr inbounds %struct.cmac, %struct.cmac* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %96, %99
  %101 = load i32, i32* @F_LOWSIGFORCEEN3, align 4
  %102 = call i32 @t3_set_reg_field(i32 %95, i64 %100, i32 %101, i32 0)
  ret void
}

declare dso_local i32 @t3_set_reg_field(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
