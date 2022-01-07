; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscop/extr_ng_sscop.c_flow_upper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscop/extr_ng_sscop.c_flow_upper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ngm_queue_state = type { i64, i64, i64 }
%struct.priv = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SSCOP_DBG_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"flow control stopped\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"flow control opened window by %u messages\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ng_mesg*)* @flow_upper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_upper(i32 %0, %struct.ng_mesg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ng_mesg*, align 8
  %6 = alloca %struct.ngm_queue_state*, align 8
  %7 = alloca %struct.priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ng_mesg* %1, %struct.ng_mesg** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.priv* @NG_NODE_PRIVATE(i32 %10)
  store %struct.priv* %11, %struct.priv** %7, align 8
  %12 = load %struct.ng_mesg*, %struct.ng_mesg** %5, align 8
  %13 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 24
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %145

20:                                               ; preds = %2
  %21 = load %struct.ng_mesg*, %struct.ng_mesg** %5, align 8
  %22 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ngm_queue_state*
  store %struct.ngm_queue_state* %24, %struct.ngm_queue_state** %6, align 8
  %25 = load %struct.ng_mesg*, %struct.ng_mesg** %5, align 8
  %26 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %142 [
    i32 130, label %29
    i32 129, label %45
    i32 128, label %82
  ]

29:                                               ; preds = %20
  %30 = load %struct.priv*, %struct.priv** %7, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.priv*, %struct.priv** %7, align 8
  %36 = load i32, i32* @SSCOP_DBG_FLOW, align 4
  %37 = load %struct.priv*, %struct.priv** %7, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.priv*, %struct.priv** %7, align 8
  %41 = call i32 @VERBOSE(%struct.priv* %35, i32 %36, i32 ptrtoint ([21 x i8]* @.str to i32))
  %42 = load %struct.priv*, %struct.priv** %7, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %34, %29
  br label %144

45:                                               ; preds = %20
  %46 = load %struct.priv*, %struct.priv** %7, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @sscop_window(i32 %48, i64 0)
  store i64 %49, i64* %8, align 8
  %50 = load %struct.ngm_queue_state*, %struct.ngm_queue_state** %6, align 8
  %51 = getelementptr inbounds %struct.ngm_queue_state, %struct.ngm_queue_state* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ngm_queue_state*, %struct.ngm_queue_state** %6, align 8
  %54 = getelementptr inbounds %struct.ngm_queue_state, %struct.ngm_queue_state* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %45
  %61 = load %struct.priv*, %struct.priv** %7, align 8
  %62 = load i32, i32* @SSCOP_DBG_FLOW, align 4
  %63 = load %struct.priv*, %struct.priv** %7, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.priv*, %struct.priv** %7, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %8, align 8
  %69 = sub nsw i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @VERBOSE(%struct.priv* %61, i32 %62, i32 %70)
  %72 = load %struct.priv*, %struct.priv** %7, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %8, align 8
  %77 = sub nsw i64 %75, %76
  %78 = call i64 @sscop_window(i32 %74, i64 %77)
  br label %79

79:                                               ; preds = %60, %45
  %80 = load %struct.priv*, %struct.priv** %7, align 8
  %81 = getelementptr inbounds %struct.priv, %struct.priv* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  br label %144

82:                                               ; preds = %20
  %83 = load %struct.ngm_queue_state*, %struct.ngm_queue_state** %6, align 8
  %84 = getelementptr inbounds %struct.ngm_queue_state, %struct.ngm_queue_state* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ngm_queue_state*, %struct.ngm_queue_state** %6, align 8
  %87 = getelementptr inbounds %struct.ngm_queue_state, %struct.ngm_queue_state* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sle i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %144

91:                                               ; preds = %82
  %92 = load %struct.priv*, %struct.priv** %7, align 8
  %93 = getelementptr inbounds %struct.priv, %struct.priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @sscop_window(i32 %94, i64 0)
  store i64 %95, i64* %8, align 8
  %96 = load %struct.priv*, %struct.priv** %7, align 8
  %97 = getelementptr inbounds %struct.priv, %struct.priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %91
  %101 = load %struct.ngm_queue_state*, %struct.ngm_queue_state** %6, align 8
  %102 = getelementptr inbounds %struct.ngm_queue_state, %struct.ngm_queue_state* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ngm_queue_state*, %struct.ngm_queue_state** %6, align 8
  %105 = getelementptr inbounds %struct.ngm_queue_state, %struct.ngm_queue_state* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  store i64 %107, i64* %9, align 8
  br label %116

108:                                              ; preds = %91
  %109 = load %struct.ngm_queue_state*, %struct.ngm_queue_state** %6, align 8
  %110 = getelementptr inbounds %struct.ngm_queue_state, %struct.ngm_queue_state* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ngm_queue_state*, %struct.ngm_queue_state** %6, align 8
  %113 = getelementptr inbounds %struct.ngm_queue_state, %struct.ngm_queue_state* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %111, %114
  store i64 %115, i64* %9, align 8
  br label %116

116:                                              ; preds = %108, %100
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* %8, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %139

120:                                              ; preds = %116
  %121 = load %struct.priv*, %struct.priv** %7, align 8
  %122 = load i32, i32* @SSCOP_DBG_FLOW, align 4
  %123 = load %struct.priv*, %struct.priv** %7, align 8
  %124 = getelementptr inbounds %struct.priv, %struct.priv* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.priv*, %struct.priv** %7, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* %8, align 8
  %129 = sub nsw i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = call i32 @VERBOSE(%struct.priv* %121, i32 %122, i32 %130)
  %132 = load %struct.priv*, %struct.priv** %7, align 8
  %133 = getelementptr inbounds %struct.priv, %struct.priv* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* %8, align 8
  %137 = sub nsw i64 %135, %136
  %138 = call i64 @sscop_window(i32 %134, i64 %137)
  br label %139

139:                                              ; preds = %120, %116
  %140 = load %struct.priv*, %struct.priv** %7, align 8
  %141 = getelementptr inbounds %struct.priv, %struct.priv* %140, i32 0, i32 0
  store i32 1, i32* %141, align 4
  br label %144

142:                                              ; preds = %20
  %143 = load i32, i32* @EINVAL, align 4
  store i32 %143, i32* %3, align 4
  br label %145

144:                                              ; preds = %139, %90, %79, %44
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %142, %18
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.priv* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @VERBOSE(%struct.priv*, i32, i32) #1

declare dso_local i64 @sscop_window(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
