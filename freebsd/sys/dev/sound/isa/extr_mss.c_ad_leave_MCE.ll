; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_ad_leave_MCE.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_ad_leave_MCE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i32 }

@BD_F_MCE_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"--- hey, leave_MCE: MCE bit was not set!\0A\00", align 1
@MSS_INDEX = common dso_local global i32 0, align 4
@MSS_TRD = common dso_local global i32 0, align 4
@MSS_MCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mss_info*)* @ad_leave_MCE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_leave_MCE(%struct.mss_info* %0) #0 {
  %2 = alloca %struct.mss_info*, align 8
  %3 = alloca i32, align 4
  store %struct.mss_info* %0, %struct.mss_info** %2, align 8
  %4 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %5 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @BD_F_MCE_BIT, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @DEB(i32 %11)
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %15 = call i32 @ad_wait_init(%struct.mss_info* %14, i32 1000000)
  %16 = load i32, i32* @BD_F_MCE_BIT, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %19 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %23 = load i32, i32* @MSS_INDEX, align 4
  %24 = call i32 @io_rd(%struct.mss_info* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @MSS_TRD, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %30 = load i32, i32* @MSS_INDEX, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @MSS_MCE, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i32 @io_wr(%struct.mss_info* %29, i32 %30, i32 %34)
  %36 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %37 = call i32 @wait_for_calibration(%struct.mss_info* %36)
  br label %38

38:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ad_wait_init(%struct.mss_info*, i32) #1

declare dso_local i32 @io_rd(%struct.mss_info*, i32) #1

declare dso_local i32 @io_wr(%struct.mss_info*, i32, i32) #1

declare dso_local i32 @wait_for_calibration(%struct.mss_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
