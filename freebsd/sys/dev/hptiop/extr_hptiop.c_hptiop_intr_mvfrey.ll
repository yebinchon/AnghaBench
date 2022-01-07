; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_intr_mvfrey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_intr_mvfrey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@pcie_f0_int_enable = common dso_local global i32 0, align 4
@f0_doorbell = common dso_local global i32 0, align 4
@CPU_TO_F0_DRBL_MSG_A_BIT = common dso_local global i32 0, align 4
@cpu_to_f0_msg_a = common dso_local global i32 0, align 4
@isr_cause = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*)* @hptiop_intr_mvfrey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_intr_mvfrey(%struct.hpt_iop_hba* %0) #0 {
  %2 = alloca %struct.hpt_iop_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %9 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @pcie_f0_int_enable, align 4
  %14 = call i32 @BUS_SPACE_WRT4_MVFREY2(i32 %13, i32 0)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @f0_doorbell, align 4
  %17 = call i32 @BUS_SPACE_RD4_MVFREY2(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i32, i32* @f0_doorbell, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @BUS_SPACE_WRT4_MVFREY2(i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @CPU_TO_F0_DRBL_MSG_A_BIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i32, i32* @cpu_to_f0_msg_a, align 4
  %30 = call i32 @BUS_SPACE_RD4_MVFREY2(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @hptiop_os_message_callback(%struct.hpt_iop_hba* %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %20
  store i32 1, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %15
  %36 = load i32, i32* @isr_cause, align 4
  %37 = call i32 @BUS_SPACE_RD4_MVFREY2(i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %113

40:                                               ; preds = %35
  %41 = load i32, i32* @isr_cause, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @BUS_SPACE_WRT4_MVFREY2(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %102, %40
  %45 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %46 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 255
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %83, %44
  %53 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %54 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %101

60:                                               ; preds = %52
  %61 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %62 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %68 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %73 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %71, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %60
  %79 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %80 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %78, %60
  %84 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %85 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %90 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %4, align 4
  %98 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @hptiop_request_callback_mvfrey(%struct.hpt_iop_hba* %98, i32 %99)
  store i32 2, i32* %6, align 4
  br label %52

101:                                              ; preds = %52
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %105 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 255
  %111 = icmp ne i32 %103, %110
  br i1 %111, label %44, label %112

112:                                              ; preds = %102
  br label %113

113:                                              ; preds = %112, %35
  %114 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %2, align 8
  %115 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32, i32* @pcie_f0_int_enable, align 4
  %120 = call i32 @BUS_SPACE_WRT4_MVFREY2(i32 %119, i32 4112)
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @BUS_SPACE_WRT4_MVFREY2(i32, i32) #1

declare dso_local i32 @BUS_SPACE_RD4_MVFREY2(i32) #1

declare dso_local i32 @hptiop_os_message_callback(%struct.hpt_iop_hba*, i32) #1

declare dso_local i32 @hptiop_request_callback_mvfrey(%struct.hpt_iop_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
