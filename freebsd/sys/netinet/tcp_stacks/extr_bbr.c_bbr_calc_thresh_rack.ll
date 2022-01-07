; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_calc_thresh_rack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_calc_thresh_rack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.bbr_sendmap = type { i32 }

@BBR_INITIAL_RTO = common dso_local global i32 0, align 4
@USECS_IN_SECOND = common dso_local global i32 0, align 4
@BBR_TO_FRM_RACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_bbr*, i32, i32, %struct.bbr_sendmap*)* @bbr_calc_thresh_rack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_calc_thresh_rack(%struct.tcp_bbr* %0, i32 %1, i32 %2, %struct.bbr_sendmap* %3) #0 {
  %5 = alloca %struct.tcp_bbr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bbr_sendmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.bbr_sendmap* %3, %struct.bbr_sendmap** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 1, i32* %6, align 4
  br label %15

15:                                               ; preds = %14, %4
  %16 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %17 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %15
  %22 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %23 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %30 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @SEQ_GEQ(i32 %28, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %38 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %36, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %35
  br label %47

46:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %50 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %48, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %56 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %47
  br label %60

59:                                               ; preds = %21
  store i32 1, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %58
  br label %62

61:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %65 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %63, %67
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %62
  %72 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %73 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %80 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %78, %82
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %91

86:                                               ; preds = %71
  %87 = load i32, i32* %6, align 4
  %88 = ashr i32 %87, 2
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %86, %77
  br label %95

92:                                               ; preds = %62
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1000
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %92, %91
  %96 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %97 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @BBR_INITIAL_RTO, align 4
  store i32 %103, i32* %11, align 4
  br label %111

104:                                              ; preds = %95
  %105 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %106 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @TICKS_2_USEC(i32 %109)
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %104, %102
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %115, %111
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %120 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i32, i32* @USECS_IN_SECOND, align 4
  %124 = mul nsw i32 %122, %123
  %125 = icmp sgt i32 %118, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %117
  %127 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %128 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = load i32, i32* @USECS_IN_SECOND, align 4
  %132 = mul nsw i32 %130, %131
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %126, %117
  %134 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %140 = load i32, i32* @BBR_TO_FRM_RACK, align 4
  %141 = call i32 @bbr_log_thresh_choice(%struct.tcp_bbr* %134, i32 %135, i32 %136, i32 %137, i32 %138, %struct.bbr_sendmap* %139, i32 %140)
  %142 = load i32, i32* %10, align 4
  ret i32 %142
}

declare dso_local i64 @SEQ_GEQ(i32, i32) #1

declare dso_local i32 @TICKS_2_USEC(i32) #1

declare dso_local i32 @bbr_log_thresh_choice(%struct.tcp_bbr*, i32, i32, i32, i32, %struct.bbr_sendmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
