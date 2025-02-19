; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_reassign_blocks.c_sati_reassign_blocks_verify_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_reassign_blocks.c_sati_reassign_blocks_verify_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SATI_DEVICE_CAP_48BIT_ENABLE = common dso_local global i32 0, align 4
@ATA_READ_VERIFY_SECTORS_EXT = common dso_local global i32 0, align 4
@ATA_READ_VERIFY_SECTORS = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*)* @sati_reassign_blocks_verify_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sati_reassign_blocks_verify_command(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32* @sati_cb_get_h2d_register_fis_address(i8* %8)
  store i32* %9, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = call i32 @sati_ata_non_data_command(i8* %10, %struct.TYPE_6__* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SATI_DEVICE_CAP_48BIT_ENABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @ATA_READ_VERIFY_SECTORS_EXT, align 4
  %24 = call i32 @sati_set_ata_command(i32* %22, i32 %23)
  br label %29

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @ATA_READ_VERIFY_SECTORS, align 4
  %28 = call i32 @sati_set_ata_command(i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @SATI_SUCCESS, align 4
  ret i32 %30
}

declare dso_local i32* @sati_cb_get_h2d_register_fis_address(i8*) #1

declare dso_local i32 @sati_ata_non_data_command(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @sati_set_ata_command(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
