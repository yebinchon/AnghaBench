; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_complete_nvme_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_complete_nvme_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32 }
%struct.mpr_command = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.nvme_completion = type { i32 }

@MPI2_SCSI_STATUS_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_softc*, %struct.mpr_command*)* @mprsas_complete_nvme_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mprsas_complete_nvme_unmap(%struct.mpr_softc* %0, %struct.mpr_command* %1) #0 {
  %3 = alloca %struct.mpr_softc*, align 8
  %4 = alloca %struct.mpr_command*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca %struct.nvme_completion*, align 8
  %7 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %3, align 8
  store %struct.mpr_command* %1, %struct.mpr_command** %4, align 8
  store %struct.nvme_completion* null, %struct.nvme_completion** %6, align 8
  %8 = load i32, i32* @MPI2_SCSI_STATUS_GOOD, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %10 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %5, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @le16toh(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %20 = getelementptr inbounds %struct.mpr_command, %struct.mpr_command* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.nvme_completion*
  store %struct.nvme_completion* %22, %struct.nvme_completion** %6, align 8
  %23 = load %struct.nvme_completion*, %struct.nvme_completion** %6, align 8
  %24 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mpr_command*, %struct.mpr_command** %4, align 8
  %27 = call i32 @mprsas_nvme_trans_status_code(i32 %25, %struct.mpr_command* %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %18, %2
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i64 @le16toh(i32) #1

declare dso_local i32 @mprsas_nvme_trans_status_code(i32, %struct.mpr_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
