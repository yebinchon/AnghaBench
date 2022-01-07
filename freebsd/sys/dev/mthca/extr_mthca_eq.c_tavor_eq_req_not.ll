; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_eq.c_tavor_eq_req_not.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_eq.c_tavor_eq_req_not.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, i64 }

@MTHCA_EQ_DB_REQ_NOT = common dso_local global i32 0, align 4
@MTHCA_EQ_DOORBELL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, i32)* @tavor_eq_req_not to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tavor_eq_req_not(%struct.mthca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @MTHCA_EQ_DB_REQ_NOT, align 4
  %6 = load i32, i32* %4, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MTHCA_EQ_DOORBELL, align 8
  %12 = add nsw i64 %10, %11
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %13, i32 0, i32 0
  %15 = call i32 @MTHCA_GET_DOORBELL_LOCK(i32* %14)
  %16 = call i32 @mthca_write64(i32 %7, i32 0, i64 %12, i32 %15)
  ret void
}

declare dso_local i32 @mthca_write64(i32, i32, i64, i32) #1

declare dso_local i32 @MTHCA_GET_DOORBELL_LOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
