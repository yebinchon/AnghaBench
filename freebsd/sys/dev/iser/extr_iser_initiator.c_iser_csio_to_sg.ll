; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_csio_to_sg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_csio_to_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { i64, %struct.ccb_hdr }
%struct.ccb_hdr = type { i32 }
%struct.iser_data_buf = type { i32 }
%struct.bio = type { i32 }

@CAM_DATA_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"flags 0x%X unimplemented\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccb_scsiio*, %struct.iser_data_buf*)* @iser_csio_to_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_csio_to_sg(%struct.ccb_scsiio* %0, %struct.iser_data_buf* %1) #0 {
  %3 = alloca %struct.ccb_scsiio*, align 8
  %4 = alloca %struct.iser_data_buf*, align 8
  %5 = alloca %struct.ccb_hdr*, align 8
  %6 = alloca i32, align 4
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %3, align 8
  store %struct.iser_data_buf* %1, %struct.iser_data_buf** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %8 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %7, i32 0, i32 1
  store %struct.ccb_hdr* %8, %struct.ccb_hdr** %5, align 8
  %9 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %10 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CAM_DATA_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %27 [
    i32 129, label %14
    i32 128, label %21
  ]

14:                                               ; preds = %2
  %15 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %16 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.bio*
  %19 = load %struct.iser_data_buf*, %struct.iser_data_buf** %4, align 8
  %20 = call i32 @iser_bio_to_sg(%struct.bio* %18, %struct.iser_data_buf* %19)
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %23 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.iser_data_buf*, %struct.iser_data_buf** %4, align 8
  %26 = call i32 @iser_buf_to_sg(i64 %24, %struct.iser_data_buf* %25)
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.ccb_hdr*, %struct.ccb_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ISER_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %27, %21, %14
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @iser_bio_to_sg(%struct.bio*, %struct.iser_data_buf*) #1

declare dso_local i32 @iser_buf_to_sg(i64, %struct.iser_data_buf*) #1

declare dso_local i32 @ISER_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
