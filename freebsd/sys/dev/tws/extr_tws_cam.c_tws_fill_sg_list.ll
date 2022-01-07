; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_fill_sg_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_fill_sg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i64 }
%struct.tws_sg_desc64 = type { i32, i32, i64, i64 }
%struct.tws_sg_desc32 = type { i64, i32, i32 }

@tws_use_32bit_sgls = common dso_local global i32 0, align 4
@TWS_MAX_64BIT_SG_ELEMENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"64bit sg overflow\00", align 1
@TWS_MAX_32BIT_SG_ELEMENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"32bit sg overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tws_softc*, i8*, i8*, i32)* @tws_fill_sg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tws_fill_sg_list(%struct.tws_softc* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tws_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tws_sg_desc64*, align 8
  %11 = alloca %struct.tws_sg_desc64*, align 8
  %12 = alloca %struct.tws_sg_desc32*, align 8
  %13 = alloca %struct.tws_sg_desc32*, align 8
  %14 = alloca %struct.tws_sg_desc32*, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %16 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %120

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.tws_sg_desc64*
  store %struct.tws_sg_desc64* %21, %struct.tws_sg_desc64** %10, align 8
  %22 = load i32, i32* @tws_use_32bit_sgls, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %74, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to %struct.tws_sg_desc64*
  store %struct.tws_sg_desc64* %26, %struct.tws_sg_desc64** %11, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @TWS_MAX_64BIT_SG_ELEMENTS, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @TWS_TRACE(%struct.tws_softc* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %32, i32 0)
  br label %34

34:                                               ; preds = %30, %24
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %70, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %73

39:                                               ; preds = %35
  %40 = load %struct.tws_sg_desc64*, %struct.tws_sg_desc64** %10, align 8
  %41 = getelementptr inbounds %struct.tws_sg_desc64, %struct.tws_sg_desc64* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tws_sg_desc64*, %struct.tws_sg_desc64** %11, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.tws_sg_desc64, %struct.tws_sg_desc64* %43, i64 %45
  %47 = getelementptr inbounds %struct.tws_sg_desc64, %struct.tws_sg_desc64* %46, i32 0, i32 1
  store i32 %42, i32* %47, align 4
  %48 = load %struct.tws_sg_desc64*, %struct.tws_sg_desc64** %10, align 8
  %49 = getelementptr inbounds %struct.tws_sg_desc64, %struct.tws_sg_desc64* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.tws_sg_desc64*, %struct.tws_sg_desc64** %11, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.tws_sg_desc64, %struct.tws_sg_desc64* %51, i64 %53
  %55 = getelementptr inbounds %struct.tws_sg_desc64, %struct.tws_sg_desc64* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 8
  %56 = load %struct.tws_sg_desc64*, %struct.tws_sg_desc64** %11, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.tws_sg_desc64, %struct.tws_sg_desc64* %56, i64 %58
  %60 = getelementptr inbounds %struct.tws_sg_desc64, %struct.tws_sg_desc64* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.tws_sg_desc64*, %struct.tws_sg_desc64** %11, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.tws_sg_desc64, %struct.tws_sg_desc64* %61, i64 %63
  %65 = getelementptr inbounds %struct.tws_sg_desc64, %struct.tws_sg_desc64* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.tws_sg_desc64*, %struct.tws_sg_desc64** %10, align 8
  %67 = bitcast %struct.tws_sg_desc64* %66 to i32*
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = bitcast i32* %68 to %struct.tws_sg_desc64*
  store %struct.tws_sg_desc64* %69, %struct.tws_sg_desc64** %10, align 8
  br label %70

70:                                               ; preds = %39
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %35

73:                                               ; preds = %35
  br label %119

74:                                               ; preds = %19
  %75 = load i8*, i8** %7, align 8
  %76 = bitcast i8* %75 to %struct.tws_sg_desc32*
  store %struct.tws_sg_desc32* %76, %struct.tws_sg_desc32** %12, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @TWS_MAX_32BIT_SG_ELEMENTS, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @TWS_TRACE(%struct.tws_softc* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 0)
  br label %84

84:                                               ; preds = %80, %74
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %115, %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %118

89:                                               ; preds = %85
  %90 = load %struct.tws_sg_desc64*, %struct.tws_sg_desc64** %10, align 8
  %91 = getelementptr inbounds %struct.tws_sg_desc64, %struct.tws_sg_desc64* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.tws_sg_desc32*, %struct.tws_sg_desc32** %12, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %93, i64 %95
  %97 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %96, i32 0, i32 2
  store i32 %92, i32* %97, align 4
  %98 = load %struct.tws_sg_desc64*, %struct.tws_sg_desc64** %10, align 8
  %99 = getelementptr inbounds %struct.tws_sg_desc64, %struct.tws_sg_desc64* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.tws_sg_desc32*, %struct.tws_sg_desc32** %12, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %101, i64 %103
  %105 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %104, i32 0, i32 1
  store i32 %100, i32* %105, align 8
  %106 = load %struct.tws_sg_desc32*, %struct.tws_sg_desc32** %12, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %106, i64 %108
  %110 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.tws_sg_desc64*, %struct.tws_sg_desc64** %10, align 8
  %112 = bitcast %struct.tws_sg_desc64* %111 to i32*
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  %114 = bitcast i32* %113 to %struct.tws_sg_desc64*
  store %struct.tws_sg_desc64* %114, %struct.tws_sg_desc64** %10, align 8
  br label %115

115:                                              ; preds = %89
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %85

118:                                              ; preds = %85
  br label %119

119:                                              ; preds = %118, %73
  br label %169

120:                                              ; preds = %4
  %121 = load i8*, i8** %6, align 8
  %122 = bitcast i8* %121 to %struct.tws_sg_desc32*
  store %struct.tws_sg_desc32* %122, %struct.tws_sg_desc32** %13, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = bitcast i8* %123 to %struct.tws_sg_desc32*
  store %struct.tws_sg_desc32* %124, %struct.tws_sg_desc32** %14, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @TWS_MAX_32BIT_SG_ELEMENTS, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @TWS_TRACE(%struct.tws_softc* %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 0)
  br label %132

132:                                              ; preds = %128, %120
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %165, %132
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %168

137:                                              ; preds = %133
  %138 = load %struct.tws_sg_desc32*, %struct.tws_sg_desc32** %13, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %138, i64 %140
  %142 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.tws_sg_desc32*, %struct.tws_sg_desc32** %14, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %144, i64 %146
  %148 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %147, i32 0, i32 2
  store i32 %143, i32* %148, align 4
  %149 = load %struct.tws_sg_desc32*, %struct.tws_sg_desc32** %13, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %149, i64 %151
  %153 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.tws_sg_desc32*, %struct.tws_sg_desc32** %14, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %155, i64 %157
  %159 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %158, i32 0, i32 1
  store i32 %154, i32* %159, align 8
  %160 = load %struct.tws_sg_desc32*, %struct.tws_sg_desc32** %14, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %160, i64 %162
  %164 = getelementptr inbounds %struct.tws_sg_desc32, %struct.tws_sg_desc32* %163, i32 0, i32 0
  store i64 0, i64* %164, align 8
  br label %165

165:                                              ; preds = %137
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %133

168:                                              ; preds = %133
  br label %169

169:                                              ; preds = %168, %119
  ret void
}

declare dso_local i32 @TWS_TRACE(%struct.tws_softc*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
