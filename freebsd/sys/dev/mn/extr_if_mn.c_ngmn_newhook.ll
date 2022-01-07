; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_ngmn_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_ngmn_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn_softc = type { i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%d bits %x\0A\00", align 1
@E1 = common dso_local global i64 0, align 8
@E1U = common dso_local global i64 0, align 8
@UP = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @ngmn_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngmn_newhook(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mn_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.mn_softc* @NG_NODE_PRIVATE(i32 %12)
  store %struct.mn_softc* %13, %struct.mn_softc** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 116
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 115
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %3
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %142

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = call i32 @mn_parse_ts(i8* %29, i32* %11)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %35 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @E1, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %27
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %4, align 4
  br label %142

45:                                               ; preds = %39, %27
  %46 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %47 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @E1U, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 32
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %4, align 4
  br label %142

56:                                               ; preds = %51, %45
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %4, align 4
  br label %142

61:                                               ; preds = %56
  %62 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %63 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @E1, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @ffs(i32 %68)
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %72

71:                                               ; preds = %61
  store i32 1, i32* %9, align 4
  br label %72

72:                                               ; preds = %71, %67
  %73 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %74 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %75, i64 %77
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = icmp ne %struct.TYPE_2__* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %72
  %82 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @mn_create_channel(%struct.mn_softc* %82, i32 %83)
  br label %100

85:                                               ; preds = %72
  %86 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %87 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %88, i64 %90
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @UP, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %85
  %98 = load i32, i32* @EBUSY, align 4
  store i32 %98, i32* %4, align 4
  br label %142

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %81
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %103 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %104, i64 %106
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i32 %101, i32* %109, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %112 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %113, i64 %115
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  store i32 %110, i32* %118, align 8
  %119 = load i32, i32* %11, align 4
  %120 = mul nsw i32 %119, 8
  %121 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %122 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %123, i64 %125
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  store i32 %120, i32* %128, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %131 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %132, i64 %134
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = call i32 @NG_HOOK_SET_PRIVATE(i32 %129, %struct.TYPE_2__* %136)
  %138 = load %struct.mn_softc*, %struct.mn_softc** %10, align 8
  %139 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %100, %97, %59, %54, %43, %25
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local %struct.mn_softc* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @mn_parse_ts(i8*, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @mn_create_channel(%struct.mn_softc*, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
