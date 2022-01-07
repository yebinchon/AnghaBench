; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_codec_constructor.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_codec_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_softc = type { i64, %struct.hda_codec_inst** }
%struct.hda_codec_inst = type { i64, %struct.hda_codec_class*, i32*, %struct.hda_softc* }
%struct.hda_codec_class = type { i32 (%struct.hda_codec_inst*, i8*, i8*, i8*)* }

@HDA_CODEC_MAX = common dso_local global i64 0, align 8
@hops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"This codec does not implement the init function\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_softc*, %struct.hda_codec_class*, i8*, i8*, i8*)* @hda_codec_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_codec_constructor(%struct.hda_softc* %0, %struct.hda_codec_class* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_softc*, align 8
  %8 = alloca %struct.hda_codec_class*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hda_codec_inst*, align 8
  store %struct.hda_softc* %0, %struct.hda_softc** %7, align 8
  store %struct.hda_codec_class* %1, %struct.hda_codec_class** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.hda_codec_inst* null, %struct.hda_codec_inst** %12, align 8
  %13 = load %struct.hda_softc*, %struct.hda_softc** %7, align 8
  %14 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HDA_CODEC_MAX, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %62

19:                                               ; preds = %5
  %20 = call %struct.hda_codec_inst* @calloc(i32 1, i32 32)
  store %struct.hda_codec_inst* %20, %struct.hda_codec_inst** %12, align 8
  %21 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %12, align 8
  %22 = icmp ne %struct.hda_codec_inst* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 -1, i32* %6, align 4
  br label %62

24:                                               ; preds = %19
  %25 = load %struct.hda_softc*, %struct.hda_softc** %7, align 8
  %26 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %12, align 8
  %27 = getelementptr inbounds %struct.hda_codec_inst, %struct.hda_codec_inst* %26, i32 0, i32 3
  store %struct.hda_softc* %25, %struct.hda_softc** %27, align 8
  %28 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %12, align 8
  %29 = getelementptr inbounds %struct.hda_codec_inst, %struct.hda_codec_inst* %28, i32 0, i32 2
  store i32* @hops, i32** %29, align 8
  %30 = load %struct.hda_softc*, %struct.hda_softc** %7, align 8
  %31 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %12, align 8
  %34 = getelementptr inbounds %struct.hda_codec_inst, %struct.hda_codec_inst* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.hda_codec_class*, %struct.hda_codec_class** %8, align 8
  %36 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %12, align 8
  %37 = getelementptr inbounds %struct.hda_codec_inst, %struct.hda_codec_inst* %36, i32 0, i32 1
  store %struct.hda_codec_class* %35, %struct.hda_codec_class** %37, align 8
  %38 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %12, align 8
  %39 = load %struct.hda_softc*, %struct.hda_softc** %7, align 8
  %40 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %39, i32 0, i32 1
  %41 = load %struct.hda_codec_inst**, %struct.hda_codec_inst*** %40, align 8
  %42 = load %struct.hda_softc*, %struct.hda_softc** %7, align 8
  %43 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds %struct.hda_codec_inst*, %struct.hda_codec_inst** %41, i64 %44
  store %struct.hda_codec_inst* %38, %struct.hda_codec_inst** %46, align 8
  %47 = load %struct.hda_codec_class*, %struct.hda_codec_class** %8, align 8
  %48 = getelementptr inbounds %struct.hda_codec_class, %struct.hda_codec_class* %47, i32 0, i32 0
  %49 = load i32 (%struct.hda_codec_inst*, i8*, i8*, i8*)*, i32 (%struct.hda_codec_inst*, i8*, i8*, i8*)** %48, align 8
  %50 = icmp ne i32 (%struct.hda_codec_inst*, i8*, i8*, i8*)* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %24
  %52 = call i32 @DPRINTF(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %62

53:                                               ; preds = %24
  %54 = load %struct.hda_codec_class*, %struct.hda_codec_class** %8, align 8
  %55 = getelementptr inbounds %struct.hda_codec_class, %struct.hda_codec_class* %54, i32 0, i32 0
  %56 = load i32 (%struct.hda_codec_inst*, i8*, i8*, i8*)*, i32 (%struct.hda_codec_inst*, i8*, i8*, i8*)** %55, align 8
  %57 = load %struct.hda_codec_inst*, %struct.hda_codec_inst** %12, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 %56(%struct.hda_codec_inst* %57, i8* %58, i8* %59, i8* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %53, %51, %23, %18
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.hda_codec_inst* @calloc(i32, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
