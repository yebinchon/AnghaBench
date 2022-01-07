; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_delta_ak4524_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_delta_ak4524_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32**, i32**, i32 }
%struct.envy24_delta_ak4524_codec = type { i32, i32, %struct.sc_info*, i32* }

@M_ENVY24 = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@envy24_delta_ak4524_ctl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i32, i32)* @envy24_delta_ak4524_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @envy24_delta_ak4524_create(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sc_info*, align 8
  %11 = alloca %struct.envy24_delta_ak4524_codec*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.sc_info*
  store %struct.sc_info* %13, %struct.sc_info** %10, align 8
  store %struct.envy24_delta_ak4524_codec* null, %struct.envy24_delta_ak4524_codec** %11, align 8
  %14 = load i32, i32* @M_ENVY24, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = call %struct.envy24_delta_ak4524_codec* @malloc(i32 24, i32 %14, i32 %15)
  store %struct.envy24_delta_ak4524_codec* %16, %struct.envy24_delta_ak4524_codec** %11, align 8
  %17 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %18 = icmp eq %struct.envy24_delta_ak4524_codec* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %102

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @PCMDIR_REC, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %26 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %24
  %34 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %35 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = bitcast i32* %40 to %struct.envy24_delta_ak4524_codec*
  %42 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %45 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %44, i32 0, i32 3
  store i32* %43, i32** %45, align 8
  br label %81

46:                                               ; preds = %24, %20
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @PCMDIR_PLAY, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %52 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %50
  %60 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %61 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = bitcast i32* %66 to %struct.envy24_delta_ak4524_codec*
  %68 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %71 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %70, i32 0, i32 3
  store i32* %69, i32** %71, align 8
  br label %80

72:                                               ; preds = %50, %46
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @envy24_delta_ak4524_ctl, align 4
  %77 = call i32* @spicds_create(i32 %73, %struct.envy24_delta_ak4524_codec* %74, i32 %75, i32 %76)
  %78 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %79 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %78, i32 0, i32 3
  store i32* %77, i32** %79, align 8
  br label %80

80:                                               ; preds = %72, %59
  br label %81

81:                                               ; preds = %80, %33
  %82 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %83 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %88 = load i32, i32* @M_ENVY24, align 4
  %89 = call i32 @free(%struct.envy24_delta_ak4524_codec* %87, i32 %88)
  store i8* null, i8** %5, align 8
  br label %102

90:                                               ; preds = %81
  %91 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %92 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %93 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %92, i32 0, i32 2
  store %struct.sc_info* %91, %struct.sc_info** %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %96 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %99 = getelementptr inbounds %struct.envy24_delta_ak4524_codec, %struct.envy24_delta_ak4524_codec* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.envy24_delta_ak4524_codec*, %struct.envy24_delta_ak4524_codec** %11, align 8
  %101 = bitcast %struct.envy24_delta_ak4524_codec* %100 to i8*
  store i8* %101, i8** %5, align 8
  br label %102

102:                                              ; preds = %90, %86, %19
  %103 = load i8*, i8** %5, align 8
  ret i8* %103
}

declare dso_local %struct.envy24_delta_ak4524_codec* @malloc(i32, i32, i32) #1

declare dso_local i32* @spicds_create(i32, %struct.envy24_delta_ak4524_codec*, i32, i32) #1

declare dso_local i32 @free(%struct.envy24_delta_ak4524_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
