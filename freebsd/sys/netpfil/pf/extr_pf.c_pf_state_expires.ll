; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_state_expires.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_state_expires.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.pf_state = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }

@PFTM_PURGE = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@PFTM_UNLINKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"pf_state_expires: timeout == PFTM_UNLINKED\00", align 1
@PFTM_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"pf_state_expires: timeout > PFTM_MAX\00", align 1
@V_pf_default_rule = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PFTM_ADAPTIVE_START = common dso_local global i64 0, align 8
@PFTM_ADAPTIVE_END = common dso_local global i64 0, align 8
@V_pf_status = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pf_state_expires(%struct.pf_state* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pf_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pf_state* %0, %struct.pf_state** %3, align 8
  %8 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %9 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PFTM_PURGE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @time_uptime, align 8
  store i64 %14, i64* %2, align 8
  br label %133

15:                                               ; preds = %1
  %16 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %17 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PFTM_UNLINKED, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %24 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PFTM_MAX, align 8
  %27 = icmp ult i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %31 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %37 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %15
  %44 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_pf_default_rule, i32 0, i32 0), align 8
  %45 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %46 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %43, %15
  %51 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %52 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @PFTM_ADAPTIVE_START, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %50
  %63 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %64 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = icmp ne %struct.TYPE_6__* %66, @V_pf_default_rule
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %70 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @PFTM_ADAPTIVE_END, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %6, align 8
  %78 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %79 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @counter_u64_fetch(i32 %83)
  store i64 %84, i64* %7, align 8
  br label %95

85:                                               ; preds = %62, %50
  %86 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_pf_default_rule, i32 0, i32 0), align 8
  %87 = load i64, i64* @PFTM_ADAPTIVE_START, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %5, align 8
  %90 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_pf_default_rule, i32 0, i32 0), align 8
  %91 = load i64, i64* @PFTM_ADAPTIVE_END, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @V_pf_status, i32 0, i32 0), align 8
  store i64 %94, i64* %7, align 8
  br label %95

95:                                               ; preds = %85, %68
  %96 = load i64, i64* %6, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %127

98:                                               ; preds = %95
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %5, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %127

102:                                              ; preds = %98
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* %6, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %127

106:                                              ; preds = %102
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %6, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %106
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %7, align 8
  %114 = sub nsw i64 %112, %113
  %115 = mul nsw i64 %111, %114
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* %5, align 8
  %118 = sub nsw i64 %116, %117
  %119 = sdiv i64 %115, %118
  store i64 %119, i64* %4, align 8
  %120 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %121 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %4, align 8
  %124 = add nsw i64 %122, %123
  store i64 %124, i64* %2, align 8
  br label %133

125:                                              ; preds = %106
  %126 = load i64, i64* @time_uptime, align 8
  store i64 %126, i64* %2, align 8
  br label %133

127:                                              ; preds = %102, %98, %95
  %128 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %129 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %4, align 8
  %132 = add nsw i64 %130, %131
  store i64 %132, i64* %2, align 8
  br label %133

133:                                              ; preds = %127, %125, %110, %13
  %134 = load i64, i64* %2, align 8
  ret i64 %134
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @counter_u64_fetch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
