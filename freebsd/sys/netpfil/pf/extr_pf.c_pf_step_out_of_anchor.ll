; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_step_out_of_anchor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_step_out_of_anchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_anchor_stackframe = type { %struct.pf_ruleset*, %struct.TYPE_9__* }
%struct.pf_ruleset = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.pf_ruleset }
%struct.pf_rule = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.pf_anchor_node }
%struct.pf_anchor_node = type { i32 }

@pf_anchor_node = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_step_out_of_anchor(%struct.pf_anchor_stackframe* %0, i32* %1, %struct.pf_ruleset** %2, i32 %3, %struct.pf_rule** %4, %struct.pf_rule** %5, i32* %6) #0 {
  %8 = alloca %struct.pf_anchor_stackframe*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pf_ruleset**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pf_rule**, align 8
  %13 = alloca %struct.pf_rule**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.pf_anchor_stackframe*, align 8
  %16 = alloca %struct.pf_rule*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.pf_anchor_node*, align 8
  store %struct.pf_anchor_stackframe* %0, %struct.pf_anchor_stackframe** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.pf_ruleset** %2, %struct.pf_ruleset*** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.pf_rule** %4, %struct.pf_rule*** %12, align 8
  store %struct.pf_rule** %5, %struct.pf_rule*** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %17, align 4
  %19 = call i32 (...) @PF_RULES_RASSERT()
  br label %20

20:                                               ; preds = %126, %7
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %130

25:                                               ; preds = %20
  %26 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %26, i64 %29
  %31 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %30, i64 -1
  store %struct.pf_anchor_stackframe* %31, %struct.pf_anchor_stackframe** %15, align 8
  %32 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %15, align 8
  %33 = call %struct.pf_rule* @PF_ANCHOR_RULE(%struct.pf_anchor_stackframe* %32)
  store %struct.pf_rule* %33, %struct.pf_rule** %16, align 8
  %34 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %15, align 8
  %35 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = icmp ne %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %90

38:                                               ; preds = %25
  %39 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %40 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store %struct.pf_anchor_node* %42, %struct.pf_anchor_node** %18, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %15, align 8
  %51 = call i32 @PF_ANCHOR_SET_MATCH(%struct.pf_anchor_stackframe* %50)
  %52 = load i32*, i32** %14, align 8
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %45, %38
  %54 = load i32, i32* @pf_anchor_node, align 4
  %55 = load %struct.pf_anchor_node*, %struct.pf_anchor_node** %18, align 8
  %56 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %15, align 8
  %57 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = call %struct.TYPE_9__* @RB_NEXT(i32 %54, %struct.pf_anchor_node* %55, %struct.TYPE_9__* %58)
  %60 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %15, align 8
  %61 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %60, i32 0, i32 1
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %61, align 8
  %62 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %15, align 8
  %63 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = icmp ne %struct.TYPE_9__* %64, null
  br i1 %65, label %66, label %89

66:                                               ; preds = %53
  %67 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %15, align 8
  %68 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.pf_ruleset**, %struct.pf_ruleset*** %10, align 8
  store %struct.pf_ruleset* %70, %struct.pf_ruleset** %71, align 8
  %72 = load %struct.pf_ruleset**, %struct.pf_ruleset*** %10, align 8
  %73 = load %struct.pf_ruleset*, %struct.pf_ruleset** %72, align 8
  %74 = getelementptr inbounds %struct.pf_ruleset, %struct.pf_ruleset* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.pf_rule* @TAILQ_FIRST(i32 %81)
  %83 = load %struct.pf_rule**, %struct.pf_rule*** %12, align 8
  store %struct.pf_rule* %82, %struct.pf_rule** %83, align 8
  %84 = load %struct.pf_rule**, %struct.pf_rule*** %12, align 8
  %85 = load %struct.pf_rule*, %struct.pf_rule** %84, align 8
  %86 = icmp eq %struct.pf_rule* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %66
  br label %126

88:                                               ; preds = %66
  br label %130

89:                                               ; preds = %53
  br label %90

90:                                               ; preds = %89, %25
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.pf_rule**, %struct.pf_rule*** %13, align 8
  %99 = icmp ne %struct.pf_rule** %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load %struct.pf_rule**, %struct.pf_rule*** %13, align 8
  store %struct.pf_rule* null, %struct.pf_rule** %101, align 8
  br label %102

102:                                              ; preds = %100, %97, %90
  %103 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %15, align 8
  %104 = getelementptr inbounds %struct.pf_anchor_stackframe, %struct.pf_anchor_stackframe* %103, i32 0, i32 0
  %105 = load %struct.pf_ruleset*, %struct.pf_ruleset** %104, align 8
  %106 = load %struct.pf_ruleset**, %struct.pf_ruleset*** %10, align 8
  store %struct.pf_ruleset* %105, %struct.pf_ruleset** %106, align 8
  %107 = load %struct.pf_anchor_stackframe*, %struct.pf_anchor_stackframe** %15, align 8
  %108 = call i64 @PF_ANCHOR_MATCH(%struct.pf_anchor_stackframe* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %102
  %111 = load i32*, i32** %14, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load i32*, i32** %14, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113, %102
  %118 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %119 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %117, %113, %110
  %122 = load %struct.pf_rule*, %struct.pf_rule** %16, align 8
  %123 = load i32, i32* @entries, align 4
  %124 = call %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule* %122, i32 %123)
  %125 = load %struct.pf_rule**, %struct.pf_rule*** %12, align 8
  store %struct.pf_rule* %124, %struct.pf_rule** %125, align 8
  br label %126

126:                                              ; preds = %121, %87
  %127 = load %struct.pf_rule**, %struct.pf_rule*** %12, align 8
  %128 = load %struct.pf_rule*, %struct.pf_rule** %127, align 8
  %129 = icmp eq %struct.pf_rule* %128, null
  br i1 %129, label %20, label %130

130:                                              ; preds = %126, %88, %24
  %131 = load i32, i32* %17, align 4
  ret i32 %131
}

declare dso_local i32 @PF_RULES_RASSERT(...) #1

declare dso_local %struct.pf_rule* @PF_ANCHOR_RULE(%struct.pf_anchor_stackframe*) #1

declare dso_local i32 @PF_ANCHOR_SET_MATCH(%struct.pf_anchor_stackframe*) #1

declare dso_local %struct.TYPE_9__* @RB_NEXT(i32, %struct.pf_anchor_node*, %struct.TYPE_9__*) #1

declare dso_local %struct.pf_rule* @TAILQ_FIRST(i32) #1

declare dso_local i64 @PF_ANCHOR_MATCH(%struct.pf_anchor_stackframe*) #1

declare dso_local %struct.pf_rule* @TAILQ_NEXT(%struct.pf_rule*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
