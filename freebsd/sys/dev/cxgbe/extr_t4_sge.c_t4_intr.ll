; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_iq = type { i32 }

@IQS_IDLE = common dso_local global i32 0, align 4
@IQS_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sge_iq*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sge_iq*
  store %struct.sge_iq* %5, %struct.sge_iq** %3, align 8
  %6 = load %struct.sge_iq*, %struct.sge_iq** %3, align 8
  %7 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %6, i32 0, i32 0
  %8 = load i32, i32* @IQS_IDLE, align 4
  %9 = load i32, i32* @IQS_BUSY, align 4
  %10 = call i64 @atomic_cmpset_int(i32* %7, i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.sge_iq*, %struct.sge_iq** %3, align 8
  %14 = call i32 @service_iq_fl(%struct.sge_iq* %13, i32 0)
  %15 = load %struct.sge_iq*, %struct.sge_iq** %3, align 8
  %16 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %15, i32 0, i32 0
  %17 = load i32, i32* @IQS_BUSY, align 4
  %18 = load i32, i32* @IQS_IDLE, align 4
  %19 = call i64 @atomic_cmpset_int(i32* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %12, %1
  ret void
}

declare dso_local i64 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @service_iq_fl(%struct.sge_iq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
