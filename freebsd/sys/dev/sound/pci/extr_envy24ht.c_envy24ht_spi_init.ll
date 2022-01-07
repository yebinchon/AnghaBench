; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_spi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_spi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envy24ht_spi_codec = type { i64, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@SPICDS_TYPE_AK4524 = common dso_local global i64 0, align 8
@SPICDS_TYPE_AK4528 = common dso_local global i64 0, align 8
@AK452X_FORMAT_I2S = common dso_local global i32 0, align 4
@AK452X_FORMAT_256FSN = common dso_local global i32 0, align 4
@AK452X_FORMAT_1X = common dso_local global i32 0, align 4
@AK452X_DVC_DEMOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @envy24ht_spi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envy24ht_spi_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.envy24ht_spi_codec*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.envy24ht_spi_codec*
  store %struct.envy24ht_spi_codec* %5, %struct.envy24ht_spi_codec** %3, align 8
  %6 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %7 = icmp eq %struct.envy24ht_spi_codec* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %103

9:                                                ; preds = %1
  %10 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %11 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %18 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %20 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %27 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %29 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %36 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %38 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %41 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @spicds_settype(i32 %39, i64 %46)
  %48 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %49 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %52 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @spicds_setcif(i32 %50, i32 %57)
  %59 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %60 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SPICDS_TYPE_AK4524, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %78, label %68

68:                                               ; preds = %9
  %69 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %70 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SPICDS_TYPE_AK4528, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %68, %9
  %79 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %80 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @AK452X_FORMAT_I2S, align 4
  %83 = load i32, i32* @AK452X_FORMAT_256FSN, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @AK452X_FORMAT_1X, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @spicds_setformat(i32 %81, i32 %86)
  %88 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %89 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @AK452X_DVC_DEMOFF, align 4
  %92 = call i32 @spicds_setdvc(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %78, %68
  %94 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %95 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.envy24ht_spi_codec*, %struct.envy24ht_spi_codec** %3, align 8
  %100 = getelementptr inbounds %struct.envy24ht_spi_codec, %struct.envy24ht_spi_codec* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @spicds_init(i32 %101)
  br label %103

103:                                              ; preds = %8, %98, %93
  ret void
}

declare dso_local i32 @spicds_settype(i32, i64) #1

declare dso_local i32 @spicds_setcif(i32, i32) #1

declare dso_local i32 @spicds_setformat(i32, i32) #1

declare dso_local i32 @spicds_setdvc(i32, i32) #1

declare dso_local i32 @spicds_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
