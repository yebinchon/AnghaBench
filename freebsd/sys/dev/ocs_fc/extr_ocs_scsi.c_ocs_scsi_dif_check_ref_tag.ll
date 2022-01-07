; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_dif_check_ref_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_dif_check_ref_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"expected ref tag 0x%x, actual 0x%x\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_5__*, i64, %struct.TYPE_6__*)* @ocs_scsi_dif_check_ref_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocs_scsi_dif_check_ref_tag(i32* %0, %struct.TYPE_5__* %1, i64 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %4
  %18 = load i64, i64* @TRUE, align 8
  store i64 %18, i64* %5, align 8
  br label %37

19:                                               ; preds = %12
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ocs_be32toh(i32 %23)
  %25 = icmp ne i64 %20, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ocs_be32toh(i32 %31)
  %33 = call i32 @ocs_log_debug(i32* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %32)
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %5, align 8
  br label %37

35:                                               ; preds = %19
  %36 = load i64, i64* @TRUE, align 8
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %35, %26, %17
  %38 = load i64, i64* %5, align 8
  ret i64 %38
}

declare dso_local i64 @ocs_be32toh(i32) #1

declare dso_local i32 @ocs_log_debug(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
