; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_delta_ak4524_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_delta_ak4524_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.envy24_delta_ak4524_codec = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32**, i32**, i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@M_ENVY24 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @envy24_delta_ak4524_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envy24_delta_ak4524_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.envy24_delta_ak4524_codec*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.envy24_delta_ak4524_codec*
  store %struct.envy24_delta_ak4524_codec* %5, %struct.envy24_delta_ak4524_codec** %3, align 8
  %6 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %7 = icmp eq %struct.envy24_delta_ak4524_codec* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %55

9:                                                ; preds = %1
  %10 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %11 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCMDIR_PLAY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  %16 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %17 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %22 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32*, i32** %20, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %29 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @spicds_destroy(i32 %30)
  br label %32

32:                                               ; preds = %27, %15
  br label %51

33:                                               ; preds = %9
  %34 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %35 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %40 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32*, i32** %38, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %3, align 8
  %47 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @spicds_destroy(i32 %48)
  br label %50

50:                                               ; preds = %45, %33
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i8*, i8** %2, align 8
  %53 = load i32, i32* @M_ENVY24, align 4
  %54 = call i32 @free(i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %8
  ret void
}

declare dso_local i32 @spicds_destroy(i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
