; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_move.c_sati_move_small_udma_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_move.c_sati_move_small_udma_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@SATI_DATA_DIRECTION_IN = common dso_local global i64 0, align 8
@SAT_PROTOCOL_UDMA_DATA_IN = common dso_local global i32 0, align 4
@SAT_PROTOCOL_UDMA_DATA_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i8*, i32, i32)* @sati_move_small_udma_translate_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sati_move_small_udma_translate_command(%struct.TYPE_4__* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32* @sati_cb_get_cdb_address(i8* %13)
  store i32* %14, i32** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32* @sati_cb_get_h2d_register_fis_address(i8* %15)
  store i32* %16, i32** %12, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @sati_move_set_ata_command(%struct.TYPE_4__* %17, i8* %18, i32 %19, i32 %20)
  %22 = load i32*, i32** %12, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @sati_get_cdb_byte(i32* %23, i32 4)
  %25 = call i32 @sati_set_ata_sector_count(i32* %22, i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SATI_DATA_DIRECTION_IN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load i32, i32* @SAT_PROTOCOL_UDMA_DATA_IN, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %39

35:                                               ; preds = %5
  %36 = load i32, i32* @SAT_PROTOCOL_UDMA_DATA_OUT, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %31
  ret void
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32* @sati_cb_get_h2d_register_fis_address(i8*) #1

declare dso_local i32 @sati_move_set_ata_command(%struct.TYPE_4__*, i8*, i32, i32) #1

declare dso_local i32 @sati_set_ata_sector_count(i32*, i32) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
