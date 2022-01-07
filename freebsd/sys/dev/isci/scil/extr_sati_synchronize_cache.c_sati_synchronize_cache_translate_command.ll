; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_synchronize_cache.c_sati_synchronize_cache_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_synchronize_cache.c_sati_synchronize_cache_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@SATI_SEQUENCE_SYNCHRONIZE_CACHE = common dso_local global i32 0, align 4
@SAT_PROTOCOL_NON_DATA = common dso_local global i32 0, align 4
@SATI_DATA_DIRECTION_NONE = common dso_local global i32 0, align 4
@SCSI_SYNCHRONIZE_CACHE_IMMED_ENABLED = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_48BIT_ENABLE = common dso_local global i32 0, align 4
@ATA_FLUSH_CACHE_EXT = common dso_local global i32 0, align 4
@ATA_FLUSH_CACHE = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_synchronize_cache_translate_command(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32* @sati_cb_get_cdb_address(i8* %9)
  store i32* %10, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32* @sati_cb_get_h2d_register_fis_address(i8* %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* @SATI_SEQUENCE_SYNCHRONIZE_CACHE, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @SAT_PROTOCOL_NON_DATA, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @SATI_DATA_DIRECTION_NONE, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @sati_get_cdb_byte(i32* %22, i32 1)
  %24 = load i32, i32* @SCSI_SYNCHRONIZE_CACHE_IMMED_ENABLED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SATI_DEVICE_CAP_48BIT_ENABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @ATA_FLUSH_CACHE_EXT, align 4
  %40 = call i32 @sati_set_ata_command(i32* %38, i32 %39)
  br label %45

41:                                               ; preds = %28
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* @ATA_FLUSH_CACHE, align 4
  %44 = call i32 @sati_set_ata_command(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* @SATI_SUCCESS, align 4
  ret i32 %46
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32* @sati_cb_get_h2d_register_fis_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_set_ata_command(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
