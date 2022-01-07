; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_passthrough.c_sati_passthrough_multiple_count_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_passthrough.c_sati_passthrough_multiple_count_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCSI_ATA_PASSTHRU_12 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sati_passthrough_multiple_count_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sati_passthrough_multiple_count_error(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @PASSTHROUGH_CDB_MULTIPLE_COUNT(i32* %5)
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @sati_get_cdb_byte(i32* %9, i32 0)
  %11 = load i64, i64* @SCSI_ATA_PASSTHRU_12, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @PASSTHROUGH_CDB_COMMAND(i32* %14, i32 9)
  store i32 %15, i32* %4, align 4
  br label %19

16:                                               ; preds = %8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @PASSTHROUGH_CDB_COMMAND(i32* %17, i32 14)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %23 [
    i32 132, label %21
    i32 131, label %21
    i32 130, label %21
    i32 129, label %21
    i32 128, label %21
  ]

21:                                               ; preds = %19, %19, %19, %19, %19
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %23, %21
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @PASSTHROUGH_CDB_MULTIPLE_COUNT(i32*) #1

declare dso_local i64 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @PASSTHROUGH_CDB_COMMAND(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
