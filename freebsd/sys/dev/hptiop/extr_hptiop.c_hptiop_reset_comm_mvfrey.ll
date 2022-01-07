; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_reset_comm_mvfrey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_reset_comm_mvfrey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@IOPMU_INBOUND_MSG0_RESET_COMM = common dso_local global i32 0, align 4
@inbound_base = common dso_local global i32 0, align 4
@inbound_base_high = common dso_local global i32 0, align 4
@outbound_base = common dso_local global i32 0, align 4
@outbound_base_high = common dso_local global i32 0, align 4
@outbound_shadow_base = common dso_local global i32 0, align 4
@outbound_shadow_base_high = common dso_local global i32 0, align 4
@CL_POINTER_TOGGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*)* @hptiop_reset_comm_mvfrey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_reset_comm_mvfrey(%struct.hpt_iop_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpt_iop_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %3, align 8
  store i32 100, i32* %4, align 4
  %5 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %6 = load i32, i32* @IOPMU_INBOUND_MSG0_RESET_COMM, align 4
  %7 = call i64 @hptiop_send_sync_msg(%struct.hpt_iop_hba* %5, i32 %6, i32 3000)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %101

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %15, %10
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @DELAY(i32 1000)
  br label %11

17:                                               ; preds = %11
  %18 = load i32, i32* @inbound_base, align 4
  %19 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %20 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @BUS_SPACE_WRT4_MVFREY2(i32 %18, i32 %23)
  %25 = load i32, i32* @inbound_base_high, align 4
  %26 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %27 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 16
  %32 = ashr i32 %31, 16
  %33 = call i32 @BUS_SPACE_WRT4_MVFREY2(i32 %25, i32 %32)
  %34 = load i32, i32* @outbound_base, align 4
  %35 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %36 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BUS_SPACE_WRT4_MVFREY2(i32 %34, i32 %39)
  %41 = load i32, i32* @outbound_base_high, align 4
  %42 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %43 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 16
  %48 = ashr i32 %47, 16
  %49 = call i32 @BUS_SPACE_WRT4_MVFREY2(i32 %41, i32 %48)
  %50 = load i32, i32* @outbound_shadow_base, align 4
  %51 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %52 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @BUS_SPACE_WRT4_MVFREY2(i32 %50, i32 %55)
  %57 = load i32, i32* @outbound_shadow_base_high, align 4
  %58 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %59 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = ashr i32 %62, 16
  %64 = ashr i32 %63, 16
  %65 = call i32 @BUS_SPACE_WRT4_MVFREY2(i32 %57, i32 %64)
  %66 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %67 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* @CL_POINTER_TOGGLE, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %75 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  store i32 %73, i32* %77, align 4
  %78 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %79 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* @CL_POINTER_TOGGLE, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %87 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  store i32 %85, i32* %90, align 4
  %91 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %92 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %98 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 6
  store i32 %96, i32* %100, align 8
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %17, %9
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @hptiop_send_sync_msg(%struct.hpt_iop_hba*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BUS_SPACE_WRT4_MVFREY2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
