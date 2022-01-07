; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_assign_blame.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_assign_blame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i64, %struct.blame_entry*, i32, i32 (%struct.blame_entry*, i32)*, i32, i64, i32, %struct.rev_info* }
%struct.blame_entry = type { %struct.blame_entry* }
%struct.rev_info = type { i32 }
%struct.commit = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.blame_origin = type { i32, %struct.blame_entry*, %struct.commit*, %struct.blame_origin* }

@UNINTERESTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assign_blame(%struct.blame_scoreboard* %0, i32 %1) #0 {
  %3 = alloca %struct.blame_scoreboard*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.blame_entry*, align 8
  %8 = alloca %struct.blame_origin*, align 8
  %9 = alloca %struct.blame_entry*, align 8
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %11 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %10, i32 0, i32 7
  %12 = load %struct.rev_info*, %struct.rev_info** %11, align 8
  store %struct.rev_info* %12, %struct.rev_info** %5, align 8
  %13 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %14 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %13, i32 0, i32 6
  %15 = call %struct.commit* @prio_queue_get(i32* %14)
  store %struct.commit* %15, %struct.commit** %6, align 8
  br label %16

16:                                               ; preds = %174, %40, %2
  %17 = load %struct.commit*, %struct.commit** %6, align 8
  %18 = icmp ne %struct.commit* %17, null
  br i1 %18, label %19, label %175

19:                                               ; preds = %16
  %20 = load %struct.commit*, %struct.commit** %6, align 8
  %21 = call %struct.blame_origin* @get_blame_suspects(%struct.commit* %20)
  store %struct.blame_origin* %21, %struct.blame_origin** %8, align 8
  br label %22

22:                                               ; preds = %33, %19
  %23 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %24 = icmp ne %struct.blame_origin* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %27 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %26, i32 0, i32 1
  %28 = load %struct.blame_entry*, %struct.blame_entry** %27, align 8
  %29 = icmp ne %struct.blame_entry* %28, null
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i1 [ false, %22 ], [ %30, %25 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %35 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %34, i32 0, i32 3
  %36 = load %struct.blame_origin*, %struct.blame_origin** %35, align 8
  store %struct.blame_origin* %36, %struct.blame_origin** %8, align 8
  br label %22

37:                                               ; preds = %31
  %38 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %39 = icmp ne %struct.blame_origin* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %42 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %41, i32 0, i32 6
  %43 = call %struct.commit* @prio_queue_get(i32* %42)
  store %struct.commit* %43, %struct.commit** %6, align 8
  br label %16

44:                                               ; preds = %37
  %45 = load %struct.commit*, %struct.commit** %6, align 8
  %46 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %47 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %46, i32 0, i32 2
  %48 = load %struct.commit*, %struct.commit** %47, align 8
  %49 = icmp eq %struct.commit* %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %53 = call i32 @blame_origin_incref(%struct.blame_origin* %52)
  %54 = load %struct.commit*, %struct.commit** %6, align 8
  %55 = call i32 @parse_commit(%struct.commit* %54)
  %56 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %57 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %44
  %61 = load %struct.commit*, %struct.commit** %6, align 8
  %62 = getelementptr inbounds %struct.commit, %struct.commit* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @UNINTERESTING, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %60
  %69 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %70 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.commit*, %struct.commit** %6, align 8
  %75 = getelementptr inbounds %struct.commit, %struct.commit* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %78 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %73, %68, %44
  %82 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %83 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @pass_blame(%struct.blame_scoreboard* %82, %struct.blame_origin* %83, i32 %84)
  br label %102

86:                                               ; preds = %73, %60
  %87 = load i32, i32* @UNINTERESTING, align 4
  %88 = load %struct.commit*, %struct.commit** %6, align 8
  %89 = getelementptr inbounds %struct.commit, %struct.commit* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %87
  store i32 %92, i32* %90, align 8
  %93 = load %struct.commit*, %struct.commit** %6, align 8
  %94 = getelementptr inbounds %struct.commit, %struct.commit* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %86
  %99 = load %struct.commit*, %struct.commit** %6, align 8
  %100 = call i32 @mark_parents_uninteresting(%struct.commit* %99)
  br label %101

101:                                              ; preds = %98, %86
  br label %102

102:                                              ; preds = %101, %81
  %103 = load %struct.commit*, %struct.commit** %6, align 8
  %104 = getelementptr inbounds %struct.commit, %struct.commit* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %102
  %108 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %109 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @UNINTERESTING, align 4
  %114 = load %struct.commit*, %struct.commit** %6, align 8
  %115 = getelementptr inbounds %struct.commit, %struct.commit* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %113
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %112, %107, %102
  %120 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %121 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %120, i32 0, i32 1
  %122 = load %struct.blame_entry*, %struct.blame_entry** %121, align 8
  store %struct.blame_entry* %122, %struct.blame_entry** %7, align 8
  %123 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %124 = icmp ne %struct.blame_entry* %123, null
  br i1 %124, label %125, label %164

125:                                              ; preds = %119
  %126 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %127 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  br label %128

128:                                              ; preds = %148, %125
  %129 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %130 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %129, i32 0, i32 0
  %131 = load %struct.blame_entry*, %struct.blame_entry** %130, align 8
  store %struct.blame_entry* %131, %struct.blame_entry** %9, align 8
  %132 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %133 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %132, i32 0, i32 3
  %134 = load i32 (%struct.blame_entry*, i32)*, i32 (%struct.blame_entry*, i32)** %133, align 8
  %135 = icmp ne i32 (%struct.blame_entry*, i32)* %134, null
  br i1 %135, label %136, label %145

136:                                              ; preds = %128
  %137 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %138 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %137, i32 0, i32 3
  %139 = load i32 (%struct.blame_entry*, i32)*, i32 (%struct.blame_entry*, i32)** %138, align 8
  %140 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %141 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %142 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 %139(%struct.blame_entry* %140, i32 %143)
  br label %145

145:                                              ; preds = %136, %128
  %146 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  %147 = icmp ne %struct.blame_entry* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load %struct.blame_entry*, %struct.blame_entry** %9, align 8
  store %struct.blame_entry* %149, %struct.blame_entry** %7, align 8
  br label %128

150:                                              ; preds = %145
  %151 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %152 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %151, i32 0, i32 1
  %153 = load %struct.blame_entry*, %struct.blame_entry** %152, align 8
  %154 = load %struct.blame_entry*, %struct.blame_entry** %7, align 8
  %155 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %154, i32 0, i32 0
  store %struct.blame_entry* %153, %struct.blame_entry** %155, align 8
  %156 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %157 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %156, i32 0, i32 1
  %158 = load %struct.blame_entry*, %struct.blame_entry** %157, align 8
  %159 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %160 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %159, i32 0, i32 1
  store %struct.blame_entry* %158, %struct.blame_entry** %160, align 8
  %161 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %162 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %161, i32 0, i32 1
  store %struct.blame_entry* null, %struct.blame_entry** %162, align 8
  br label %163

163:                                              ; preds = %150
  br label %164

164:                                              ; preds = %163, %119
  %165 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %166 = call i32 @blame_origin_decref(%struct.blame_origin* %165)
  %167 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %168 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %173 = call i32 @sanity_check_refcnt(%struct.blame_scoreboard* %172)
  br label %174

174:                                              ; preds = %171, %164
  br label %16

175:                                              ; preds = %16
  ret void
}

declare dso_local %struct.commit* @prio_queue_get(i32*) #1

declare dso_local %struct.blame_origin* @get_blame_suspects(%struct.commit*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @blame_origin_incref(%struct.blame_origin*) #1

declare dso_local i32 @parse_commit(%struct.commit*) #1

declare dso_local i32 @pass_blame(%struct.blame_scoreboard*, %struct.blame_origin*, i32) #1

declare dso_local i32 @mark_parents_uninteresting(%struct.commit*) #1

declare dso_local i32 @blame_origin_decref(%struct.blame_origin*) #1

declare dso_local i32 @sanity_check_refcnt(%struct.blame_scoreboard*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
