; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_sent_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_sent_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i64, i64*, i64 }

@FALSE = common dso_local global i32 0, align 4
@MSG_EXTENDED = common dso_local global i64 0, align 8
@AHCMSG_EXT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@MSG_SIMPLE_TASK = common dso_local global i64 0, align 8
@MSG_IGN_WIDE_RESIDUE = common dso_local global i64 0, align 8
@AHCMSG_1B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*, i64, i64, i32)* @ahc_sent_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_sent_msg(%struct.ahc_softc* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %126, %4
  %14 = load i64, i64* %10, align 8
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %16 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %127

19:                                               ; preds = %13
  %20 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MSG_EXTENDED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %76

28:                                               ; preds = %19
  %29 = load i64, i64* %10, align 8
  %30 = add i64 %29, 1
  %31 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %32 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %34, 1
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %30, %37
  store i64 %38, i64* %11, align 8
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %40 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 2
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %28
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @AHCMSG_EXT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %57 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %61, %55
  br label %73

64:                                               ; preds = %52
  %65 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %66 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %64
  br label %73

73:                                               ; preds = %72, %63
  br label %74

74:                                               ; preds = %73, %48, %28
  %75 = load i64, i64* %11, align 8
  store i64 %75, i64* %10, align 8
  br label %122

76:                                               ; preds = %19
  %77 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %78 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MSG_SIMPLE_TASK, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %76
  %86 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %87 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MSG_IGN_WIDE_RESIDUE, align 8
  %93 = icmp sle i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, 2
  store i64 %96, i64* %10, align 8
  br label %121

97:                                               ; preds = %85, %76
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @AHCMSG_1B, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %97
  %102 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %103 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %101
  %111 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %112 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %10, align 8
  %115 = icmp ugt i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %116, %110, %101, %97
  %119 = load i64, i64* %10, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %10, align 8
  br label %121

121:                                              ; preds = %118, %94
  br label %122

122:                                              ; preds = %121, %74
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %127

126:                                              ; preds = %122
  br label %13

127:                                              ; preds = %125, %13
  %128 = load i32, i32* %9, align 4
  ret i32 %128
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
