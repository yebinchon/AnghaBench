; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_setup_1588_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_setup_1588_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nae_port_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@NAE_1588_PTP_USER_VALUE_HI = common dso_local global i32 0, align 4
@NAE_1588_PTP_USER_VALUE_LO = common dso_local global i32 0, align 4
@NAE_1588_PTP_OFFSET_HI = common dso_local global i32 0, align 4
@NAE_1588_PTP_OFFSET_LO = common dso_local global i32 0, align 4
@NAE_1588_PTP_TMR1_HI = common dso_local global i32 0, align 4
@NAE_1588_PTP_TMR1_LO = common dso_local global i32 0, align 4
@NAE_1588_PTP_TMR2_HI = common dso_local global i32 0, align 4
@NAE_1588_PTP_TMR2_LO = common dso_local global i32 0, align 4
@NAE_1588_PTP_TMR3_HI = common dso_local global i32 0, align 4
@NAE_1588_PTP_TMR3_LO = common dso_local global i32 0, align 4
@NAE_1588_PTP_INC_INTG = common dso_local global i32 0, align 4
@NAE_1588_PTP_INC_NUM = common dso_local global i32 0, align 4
@NAE_1588_PTP_INC_DEN = common dso_local global i32 0, align 4
@NAE_1588_PTP_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_setup_1588_timer(i32 %0, %struct.nae_port_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nae_port_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.nae_port_config* %1, %struct.nae_port_config** %4, align 8
  %8 = load %struct.nae_port_config*, %struct.nae_port_config** %4, align 8
  %9 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %8, i64 0
  %10 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.nae_port_config*, %struct.nae_port_config** %4, align 8
  %14 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %13, i64 0
  %15 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @NAE_1588_PTP_USER_VALUE_HI, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @nlm_write_nae_reg(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @NAE_1588_PTP_USER_VALUE_LO, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @nlm_write_nae_reg(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.nae_port_config*, %struct.nae_port_config** %4, align 8
  %26 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %25, i64 0
  %27 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 32
  store i32 %29, i32* %5, align 4
  %30 = load %struct.nae_port_config*, %struct.nae_port_config** %4, align 8
  %31 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %30, i64 0
  %32 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @NAE_1588_PTP_OFFSET_HI, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @nlm_write_nae_reg(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @NAE_1588_PTP_OFFSET_LO, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @nlm_write_nae_reg(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.nae_port_config*, %struct.nae_port_config** %4, align 8
  %43 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %42, i64 0
  %44 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 32
  store i32 %46, i32* %5, align 4
  %47 = load %struct.nae_port_config*, %struct.nae_port_config** %4, align 8
  %48 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %47, i64 0
  %49 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @NAE_1588_PTP_TMR1_HI, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @nlm_write_nae_reg(i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @NAE_1588_PTP_TMR1_LO, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @nlm_write_nae_reg(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.nae_port_config*, %struct.nae_port_config** %4, align 8
  %60 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %59, i64 0
  %61 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 32
  store i32 %63, i32* %5, align 4
  %64 = load %struct.nae_port_config*, %struct.nae_port_config** %4, align 8
  %65 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %64, i64 0
  %66 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @NAE_1588_PTP_TMR2_HI, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @nlm_write_nae_reg(i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @NAE_1588_PTP_TMR2_LO, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @nlm_write_nae_reg(i32 %72, i32 %73, i32 %74)
  %76 = load %struct.nae_port_config*, %struct.nae_port_config** %4, align 8
  %77 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %76, i64 0
  %78 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 32
  store i32 %80, i32* %5, align 4
  %81 = load %struct.nae_port_config*, %struct.nae_port_config** %4, align 8
  %82 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %81, i64 0
  %83 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @NAE_1588_PTP_TMR3_HI, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @nlm_write_nae_reg(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @NAE_1588_PTP_TMR3_LO, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @nlm_write_nae_reg(i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @NAE_1588_PTP_INC_INTG, align 4
  %95 = load %struct.nae_port_config*, %struct.nae_port_config** %4, align 8
  %96 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %95, i64 0
  %97 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @nlm_write_nae_reg(i32 %93, i32 %94, i32 %98)
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @NAE_1588_PTP_INC_NUM, align 4
  %102 = load %struct.nae_port_config*, %struct.nae_port_config** %4, align 8
  %103 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %102, i64 0
  %104 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @nlm_write_nae_reg(i32 %100, i32 %101, i32 %105)
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @NAE_1588_PTP_INC_DEN, align 4
  %109 = load %struct.nae_port_config*, %struct.nae_port_config** %4, align 8
  %110 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %109, i64 0
  %111 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @nlm_write_nae_reg(i32 %107, i32 %108, i32 %112)
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @NAE_1588_PTP_CONTROL, align 4
  %116 = call i32 @nlm_read_nae_reg(i32 %114, i32 %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @NAE_1588_PTP_CONTROL, align 4
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, 2
  %121 = call i32 @nlm_write_nae_reg(i32 %117, i32 %118, i32 %120)
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @NAE_1588_PTP_CONTROL, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @nlm_write_nae_reg(i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @NAE_1588_PTP_CONTROL, align 4
  %128 = load i32, i32* %7, align 4
  %129 = or i32 %128, 64
  %130 = call i32 @nlm_write_nae_reg(i32 %126, i32 %127, i32 %129)
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @NAE_1588_PTP_CONTROL, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @nlm_write_nae_reg(i32 %131, i32 %132, i32 %133)
  ret void
}

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
