; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_move.c_sati_move_set_sector_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_move.c_sati_move_set_sector_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SATI_DEVICE_CAP_48BIT_ENABLE = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_move_set_sector_count(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i64* @sati_cb_get_h2d_register_fis_address(i8* %14)
  store i64* %15, i64** %13, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SATI_DEVICE_CAP_48BIT_ENABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 65536, i32* %12, align 4
  br label %26

25:                                               ; preds = %5
  store i32 256, i32* %12, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 0, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %30, i32* %6, align 4
  br label %68

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %35, %31
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %11, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i64*, i64** %13, align 8
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 255
  %50 = call i32 @sati_set_ata_features(i64* %47, i32 %49)
  %51 = load i64*, i64** %13, align 8
  %52 = load i32, i32* %10, align 4
  %53 = ashr i32 %52, 8
  %54 = and i32 %53, 255
  %55 = call i32 @sati_set_ata_features_exp(i64* %51, i32 %54)
  br label %66

56:                                               ; preds = %43
  %57 = load i64*, i64** %13, align 8
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 255
  %60 = call i32 @sati_set_ata_sector_count(i64* %57, i32 %59)
  %61 = load i64*, i64** %13, align 8
  %62 = load i32, i32* %10, align 4
  %63 = ashr i32 %62, 8
  %64 = and i32 %63, 255
  %65 = call i32 @sati_set_ata_sector_count_exp(i64* %61, i32 %64)
  br label %66

66:                                               ; preds = %56, %46
  %67 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %29
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i64* @sati_cb_get_h2d_register_fis_address(i8*) #1

declare dso_local i32 @sati_set_ata_features(i64*, i32) #1

declare dso_local i32 @sati_set_ata_features_exp(i64*, i32) #1

declare dso_local i32 @sati_set_ata_sector_count(i64*, i32) #1

declare dso_local i32 @sati_set_ata_sector_count_exp(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
