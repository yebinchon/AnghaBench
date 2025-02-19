; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_ocs_scsi_dif_set_blocksize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_utils.c_ocs_scsi_dif_set_blocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@OCS_SCSI_DIF_BK_SIZE_512 = common dso_local global i32 0, align 4
@OCS_SCSI_DIF_BK_SIZE_1024 = common dso_local global i32 0, align 4
@OCS_SCSI_DIF_BK_SIZE_2048 = common dso_local global i32 0, align 4
@OCS_SCSI_DIF_BK_SIZE_4096 = common dso_local global i32 0, align 4
@OCS_SCSI_DIF_BK_SIZE_520 = common dso_local global i32 0, align 4
@OCS_SCSI_DIF_BK_SIZE_4104 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_scsi_dif_set_blocksize(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %31 [
    i32 512, label %7
    i32 1024, label %11
    i32 2048, label %15
    i32 4096, label %19
    i32 520, label %23
    i32 4104, label %27
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @OCS_SCSI_DIF_BK_SIZE_512, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  br label %32

11:                                               ; preds = %2
  %12 = load i32, i32* @OCS_SCSI_DIF_BK_SIZE_1024, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %32

15:                                               ; preds = %2
  %16 = load i32, i32* @OCS_SCSI_DIF_BK_SIZE_2048, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load i32, i32* @OCS_SCSI_DIF_BK_SIZE_4096, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load i32, i32* @OCS_SCSI_DIF_BK_SIZE_520, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %32

27:                                               ; preds = %2
  %28 = load i32, i32* @OCS_SCSI_DIF_BK_SIZE_4104, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %32

31:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %27, %23, %19, %15, %11, %7
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
