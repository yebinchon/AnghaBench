; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_util.c_sati_ata_idle_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_util.c_sati_ata_idle_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ATA_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sati_ata_idle_construct(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32* @sati_cb_get_h2d_register_fis_address(i8* %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* @ATA_IDLE, align 4
  %10 = call i32 @sati_set_ata_command(i32* %8, i32 %9)
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @sati_set_ata_features(i32* %11, i32 0)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @sati_set_ata_sector_count(i32* %13, i32 0)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @sati_set_ata_lba_high(i32* %19, i32 0)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @sati_set_ata_lba_mid(i32* %21, i32 0)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @sati_set_ata_lba_low(i32* %23, i32 0)
  %25 = load i8*, i8** %3, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = call i32 @sati_ata_non_data_command(i8* %25, %struct.TYPE_6__* %26)
  ret void
}

declare dso_local i32* @sati_cb_get_h2d_register_fis_address(i8*) #1

declare dso_local i32 @sati_set_ata_command(i32*, i32) #1

declare dso_local i32 @sati_set_ata_features(i32*, i32) #1

declare dso_local i32 @sati_set_ata_sector_count(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_high(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_mid(i32*, i32) #1

declare dso_local i32 @sati_set_ata_lba_low(i32*, i32) #1

declare dso_local i32 @sati_ata_non_data_command(i8*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
