; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_get_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_get_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_pool = type { i32 }
%struct.pf_ruleset = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.pf_rule = type { i64, %struct.pf_pool }

@PF_RULESET_MAX = common dso_local global i32 0, align 4
@pf_rulequeue = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pf_pool* (i8*, i64, i64, i64, i64, i64, i64)* @pf_get_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pf_pool* @pf_get_pool(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.pf_pool*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.pf_ruleset*, align 8
  %17 = alloca %struct.pf_rule*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call %struct.pf_ruleset* @pf_find_ruleset(i8* %19)
  store %struct.pf_ruleset* %20, %struct.pf_ruleset** %16, align 8
  %21 = load %struct.pf_ruleset*, %struct.pf_ruleset** %16, align 8
  %22 = icmp eq %struct.pf_ruleset* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  store %struct.pf_pool* null, %struct.pf_pool** %8, align 8
  br label %147

24:                                               ; preds = %7
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @pf_get_ruleset_number(i64 %25)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = load i32, i32* @PF_RULESET_MAX, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store %struct.pf_pool* null, %struct.pf_pool** %8, align 8
  br label %147

31:                                               ; preds = %24
  %32 = load i64, i64* %14, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %77

34:                                               ; preds = %31
  %35 = load i64, i64* %15, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.pf_ruleset*, %struct.pf_ruleset** %16, align 8
  %40 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %38, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store %struct.pf_pool* null, %struct.pf_pool** %8, align 8
  br label %147

50:                                               ; preds = %37, %34
  %51 = load i64, i64* %13, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load %struct.pf_ruleset*, %struct.pf_ruleset** %16, align 8
  %55 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @pf_rulequeue, align 4
  %64 = call %struct.pf_rule* @TAILQ_LAST(i32 %62, i32 %63)
  store %struct.pf_rule* %64, %struct.pf_rule** %17, align 8
  br label %76

65:                                               ; preds = %50
  %66 = load %struct.pf_ruleset*, %struct.pf_ruleset** %16, align 8
  %67 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %18, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.pf_rule* @TAILQ_FIRST(i32 %74)
  store %struct.pf_rule* %75, %struct.pf_rule** %17, align 8
  br label %76

76:                                               ; preds = %65, %53
  br label %120

77:                                               ; preds = %31
  %78 = load i64, i64* %15, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.pf_ruleset*, %struct.pf_ruleset** %16, align 8
  %83 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %81, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  store %struct.pf_pool* null, %struct.pf_pool** %8, align 8
  br label %147

93:                                               ; preds = %80, %77
  %94 = load i64, i64* %13, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = load %struct.pf_ruleset*, %struct.pf_ruleset** %16, align 8
  %98 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @pf_rulequeue, align 4
  %107 = call %struct.pf_rule* @TAILQ_LAST(i32 %105, i32 %106)
  store %struct.pf_rule* %107, %struct.pf_rule** %17, align 8
  br label %119

108:                                              ; preds = %93
  %109 = load %struct.pf_ruleset*, %struct.pf_ruleset** %16, align 8
  %110 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call %struct.pf_rule* @TAILQ_FIRST(i32 %117)
  store %struct.pf_rule* %118, %struct.pf_rule** %17, align 8
  br label %119

119:                                              ; preds = %108, %96
  br label %120

120:                                              ; preds = %119, %76
  %121 = load i64, i64* %13, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %140, label %123

123:                                              ; preds = %120
  br label %124

124:                                              ; preds = %135, %123
  %125 = load %struct.pf_rule*, %struct.pf_rule** %17, align 8
  %126 = icmp ne %struct.pf_rule* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load %struct.pf_rule*, %struct.pf_rule** %17, align 8
  %129 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %12, align 8
  %132 = icmp ne i64 %130, %131
  br label %133

133:                                              ; preds = %127, %124
  %134 = phi i1 [ false, %124 ], [ %132, %127 ]
  br i1 %134, label %135, label %139

135:                                              ; preds = %133
  %136 = load %struct.pf_rule*, %struct.pf_rule** %17, align 8
  %137 = load i32, i32* @entries, align 4
  %138 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %136, i32 %137)
  store %struct.pf_rule* %138, %struct.pf_rule** %17, align 8
  br label %124

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %120
  %141 = load %struct.pf_rule*, %struct.pf_rule** %17, align 8
  %142 = icmp eq %struct.pf_rule* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store %struct.pf_pool* null, %struct.pf_pool** %8, align 8
  br label %147

144:                                              ; preds = %140
  %145 = load %struct.pf_rule*, %struct.pf_rule** %17, align 8
  %146 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %145, i32 0, i32 1
  store %struct.pf_pool* %146, %struct.pf_pool** %8, align 8
  br label %147

147:                                              ; preds = %144, %143, %92, %49, %30, %23
  %148 = load %struct.pf_pool*, %struct.pf_pool** %8, align 8
  ret %struct.pf_pool* %148
}

declare dso_local %struct.pf_ruleset* @pf_find_ruleset(i8*) #1

declare dso_local i32 @pf_get_ruleset_number(i64) #1

declare dso_local %struct.pf_rule* @TAILQ_LAST(i32, i32) #1

declare dso_local %struct.pf_rule* @TAILQ_FIRST(i32) #1

declare dso_local %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
