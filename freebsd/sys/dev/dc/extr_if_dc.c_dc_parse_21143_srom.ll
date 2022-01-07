; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_parse_21143_srom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_parse_21143_srom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32* }
%struct.dc_leaf_hdr = type { i32 }
%struct.dc_eblock_hdr = type { i32, i32 }
%struct.dc_eblock_mii = type { i32 }
%struct.dc_eblock_sia = type { i32 }
%struct.dc_eblock_sym = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_softc*)* @dc_parse_21143_srom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_parse_21143_srom(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  %3 = alloca %struct.dc_leaf_hdr*, align 8
  %4 = alloca %struct.dc_eblock_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.dc_softc* %0, %struct.dc_softc** %2, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %11 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 27
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %16 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = bitcast i32* %20 to %struct.dc_leaf_hdr*
  store %struct.dc_leaf_hdr* %21, %struct.dc_leaf_hdr** %3, align 8
  %22 = load %struct.dc_leaf_hdr*, %struct.dc_leaf_hdr** %3, align 8
  %23 = bitcast %struct.dc_leaf_hdr* %22 to i8*
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 3
  store i8* %25, i8** %9, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %52, %1
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.dc_leaf_hdr*, %struct.dc_leaf_hdr** %3, align 8
  %29 = getelementptr inbounds %struct.dc_leaf_hdr, %struct.dc_leaf_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load i8*, i8** %9, align 8
  %34 = bitcast i8* %33 to %struct.dc_eblock_hdr*
  store %struct.dc_eblock_hdr* %34, %struct.dc_eblock_hdr** %4, align 8
  %35 = load %struct.dc_eblock_hdr*, %struct.dc_eblock_hdr** %4, align 8
  %36 = getelementptr inbounds %struct.dc_eblock_hdr, %struct.dc_eblock_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 130
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.dc_eblock_hdr*, %struct.dc_eblock_hdr** %4, align 8
  %44 = getelementptr inbounds %struct.dc_eblock_hdr, %struct.dc_eblock_hdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 127
  %47 = load i8*, i8** %9, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %9, align 8
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %26

55:                                               ; preds = %26
  %56 = load %struct.dc_leaf_hdr*, %struct.dc_leaf_hdr** %3, align 8
  %57 = bitcast %struct.dc_leaf_hdr* %56 to i8*
  store i8* %57, i8** %9, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 3
  store i8* %59, i8** %9, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %106, %55
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.dc_leaf_hdr*, %struct.dc_leaf_hdr** %3, align 8
  %63 = getelementptr inbounds %struct.dc_leaf_hdr, %struct.dc_leaf_hdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %109

66:                                               ; preds = %60
  %67 = load i8*, i8** %9, align 8
  %68 = bitcast i8* %67 to %struct.dc_eblock_hdr*
  store %struct.dc_eblock_hdr* %68, %struct.dc_eblock_hdr** %4, align 8
  %69 = load %struct.dc_eblock_hdr*, %struct.dc_eblock_hdr** %4, align 8
  %70 = getelementptr inbounds %struct.dc_eblock_hdr, %struct.dc_eblock_hdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %95 [
    i32 130, label %72
    i32 129, label %77
    i32 128, label %86
  ]

72:                                               ; preds = %66
  %73 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %74 = load %struct.dc_eblock_hdr*, %struct.dc_eblock_hdr** %4, align 8
  %75 = bitcast %struct.dc_eblock_hdr* %74 to %struct.dc_eblock_mii*
  %76 = call i32 @dc_decode_leaf_mii(%struct.dc_softc* %73, %struct.dc_eblock_mii* %75)
  store i32 %76, i32* %5, align 4
  br label %96

77:                                               ; preds = %66
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %82 = load %struct.dc_eblock_hdr*, %struct.dc_eblock_hdr** %4, align 8
  %83 = bitcast %struct.dc_eblock_hdr* %82 to %struct.dc_eblock_sia*
  %84 = call i32 @dc_decode_leaf_sia(%struct.dc_softc* %81, %struct.dc_eblock_sia* %83)
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %77
  br label %96

86:                                               ; preds = %66
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %91 = load %struct.dc_eblock_hdr*, %struct.dc_eblock_hdr** %4, align 8
  %92 = bitcast %struct.dc_eblock_hdr* %91 to %struct.dc_eblock_sym*
  %93 = call i32 @dc_decode_leaf_sym(%struct.dc_softc* %90, %struct.dc_eblock_sym* %92)
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %89, %86
  br label %96

95:                                               ; preds = %66
  br label %96

96:                                               ; preds = %95, %94, %85, %72
  %97 = load %struct.dc_eblock_hdr*, %struct.dc_eblock_hdr** %4, align 8
  %98 = getelementptr inbounds %struct.dc_eblock_hdr, %struct.dc_eblock_hdr* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 127
  %101 = load i8*, i8** %9, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %9, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %9, align 8
  br label %106

106:                                              ; preds = %96
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %60

109:                                              ; preds = %60
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @dc_decode_leaf_mii(%struct.dc_softc*, %struct.dc_eblock_mii*) #1

declare dso_local i32 @dc_decode_leaf_sia(%struct.dc_softc*, %struct.dc_eblock_sia*) #1

declare dso_local i32 @dc_decode_leaf_sym(%struct.dc_softc*, %struct.dc_eblock_sym*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
