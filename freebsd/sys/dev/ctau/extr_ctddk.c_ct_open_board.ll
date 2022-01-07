; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_open_board.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_open_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@NBRD = common dso_local global i32 0, align 4
@NCHAN = common dso_local global i32 0, align 4
@ctau_fw_data = common dso_local global i8* null, align 8
@ctau_fw_len = common dso_local global i64 0, align 8
@ctau_fw_tvec = common dso_local global i32* null, align 8
@ctau2_fw_data = common dso_local global i8* null, align 8
@ctaug703_fw_data = common dso_local global i8* null, align 8
@ctaug703_fw_len = common dso_local global i64 0, align 8
@ctaug703_fw_tvec = common dso_local global i32* null, align 8
@ctaue1_fw_data = common dso_local global i8* null, align 8
@ctaue1_fw_len = common dso_local global i64 0, align 8
@ctaue1_fw_tvec = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_open_board(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @NBRD, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @ct_probe_board(i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19, %5
  store i32 0, i32* %6, align 4
  br label %117

26:                                               ; preds = %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %12, align 8
  br label %30

30:                                               ; preds = %50, %26
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* @NCHAN, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = icmp ult %struct.TYPE_6__* %31, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %30
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 11
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 10
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 9
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 8
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %39
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 1
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %12, align 8
  br label %30

53:                                               ; preds = %30
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %12, align 8
  br label %57

57:                                               ; preds = %81, %53
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* @NCHAN, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = icmp ult %struct.TYPE_6__* %58, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %57
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %66
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 1
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %12, align 8
  br label %57

84:                                               ; preds = %57
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i8*, i8** @ctau_fw_data, align 8
  %91 = load i64, i64* @ctau_fw_len, align 8
  %92 = load i32*, i32** @ctau_fw_tvec, align 8
  %93 = load i8*, i8** @ctau2_fw_data, align 8
  %94 = call i32 @ct_init(%struct.TYPE_7__* %85, i32 %86, i32 %87, i32 %88, i32 %89, i8* %90, i64 %91, i32* %92, i8* %93)
  %95 = load i8*, i8** @ctau_fw_data, align 8
  store i8* %95, i8** %13, align 8
  %96 = load i64, i64* @ctau_fw_len, align 8
  store i64 %96, i64* %15, align 8
  %97 = load i32*, i32** @ctau_fw_tvec, align 8
  store i32* %97, i32** %14, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %111 [
    i32 133, label %101
    i32 130, label %101
    i32 132, label %101
    i32 131, label %101
    i32 128, label %103
    i32 129, label %107
  ]

101:                                              ; preds = %84, %84, %84, %84
  %102 = load i8*, i8** @ctau2_fw_data, align 8
  store i8* %102, i8** %13, align 8
  store i64 0, i64* %15, align 8
  store i32* null, i32** %14, align 8
  br label %111

103:                                              ; preds = %84
  %104 = load i8*, i8** @ctaug703_fw_data, align 8
  store i8* %104, i8** %13, align 8
  %105 = load i64, i64* @ctaug703_fw_len, align 8
  store i64 %105, i64* %15, align 8
  %106 = load i32*, i32** @ctaug703_fw_tvec, align 8
  store i32* %106, i32** %14, align 8
  br label %111

107:                                              ; preds = %84
  %108 = load i8*, i8** @ctaue1_fw_data, align 8
  store i8* %108, i8** %13, align 8
  %109 = load i64, i64* @ctaue1_fw_len, align 8
  store i64 %109, i64* %15, align 8
  %110 = load i32*, i32** @ctaue1_fw_tvec, align 8
  store i32* %110, i32** %14, align 8
  br label %111

111:                                              ; preds = %84, %107, %103, %101
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load i64, i64* %15, align 8
  %115 = load i32*, i32** %14, align 8
  %116 = call i32 @ct_setup_board(%struct.TYPE_7__* %112, i8* %113, i64 %114, i32* %115)
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %111, %25
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @ct_probe_board(i32, i32, i32) #1

declare dso_local i32 @ct_init(%struct.TYPE_7__*, i32, i32, i32, i32, i8*, i64, i32*, i8*) #1

declare dso_local i32 @ct_setup_board(%struct.TYPE_7__*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
