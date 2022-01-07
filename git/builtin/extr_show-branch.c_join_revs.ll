; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_show-branch.c_join_revs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_show-branch.c_join_revs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit_list*, %struct.commit* }
%struct.commit = type { %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32 }

@REV_SHIFT = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_list**, %struct.commit_list**, i32, i32)* @join_revs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @join_revs(%struct.commit_list** %0, %struct.commit_list** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.commit_list**, align 8
  %6 = alloca %struct.commit_list**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.commit_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.commit*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.commit*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.commit_list*, align 8
  %19 = alloca %struct.commit*, align 8
  %20 = alloca %struct.commit_list*, align 8
  %21 = alloca %struct.commit*, align 8
  store %struct.commit_list** %0, %struct.commit_list*** %5, align 8
  store %struct.commit_list** %1, %struct.commit_list*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load i32, i32* @REV_SHIFT, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  %25 = shl i32 1, %24
  %26 = sub i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @REV_SHIFT, align 4
  %29 = shl i32 1, %28
  %30 = sub i32 %29, 1
  %31 = xor i32 %30, -1
  %32 = and i32 %27, %31
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %119, %4
  %34 = load %struct.commit_list**, %struct.commit_list*** %5, align 8
  %35 = load %struct.commit_list*, %struct.commit_list** %34, align 8
  %36 = icmp ne %struct.commit_list* %35, null
  br i1 %36, label %37, label %120

37:                                               ; preds = %33
  %38 = load %struct.commit_list**, %struct.commit_list*** %5, align 8
  %39 = load %struct.commit_list*, %struct.commit_list** %38, align 8
  %40 = call i32 @interesting(%struct.commit_list* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load %struct.commit_list**, %struct.commit_list*** %5, align 8
  %46 = call %struct.commit* @pop_commit(%struct.commit_list** %45)
  store %struct.commit* %46, %struct.commit** %13, align 8
  %47 = load %struct.commit*, %struct.commit** %13, align 8
  %48 = getelementptr inbounds %struct.commit, %struct.commit* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %37
  %56 = load i32, i32* %8, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %120

59:                                               ; preds = %55, %37
  %60 = load %struct.commit*, %struct.commit** %13, align 8
  %61 = load %struct.commit_list**, %struct.commit_list*** %6, align 8
  %62 = call i64 @mark_seen(%struct.commit* %60, %struct.commit_list** %61)
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @UNINTERESTING, align 4
  %70 = load i32, i32* %14, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %68, %59
  %73 = load %struct.commit*, %struct.commit** %13, align 8
  %74 = getelementptr inbounds %struct.commit, %struct.commit* %73, i32 0, i32 1
  %75 = load %struct.commit_list*, %struct.commit_list** %74, align 8
  store %struct.commit_list* %75, %struct.commit_list** %11, align 8
  br label %76

76:                                               ; preds = %109, %95, %72
  %77 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %78 = icmp ne %struct.commit_list* %77, null
  br i1 %78, label %79, label %119

79:                                               ; preds = %76
  %80 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %81 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %80, i32 0, i32 1
  %82 = load %struct.commit*, %struct.commit** %81, align 8
  store %struct.commit* %82, %struct.commit** %15, align 8
  %83 = load %struct.commit*, %struct.commit** %15, align 8
  %84 = getelementptr inbounds %struct.commit, %struct.commit* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %16, align 4
  %87 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %88 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %87, i32 0, i32 0
  %89 = load %struct.commit_list*, %struct.commit_list** %88, align 8
  store %struct.commit_list* %89, %struct.commit_list** %11, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %14, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* %14, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %79
  br label %76

96:                                               ; preds = %79
  %97 = load %struct.commit*, %struct.commit** %15, align 8
  %98 = call i32 @parse_commit(%struct.commit* %97)
  %99 = load %struct.commit*, %struct.commit** %15, align 8
  %100 = load %struct.commit_list**, %struct.commit_list*** %6, align 8
  %101 = call i64 @mark_seen(%struct.commit* %99, %struct.commit_list** %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %106, %103, %96
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.commit*, %struct.commit** %15, align 8
  %112 = getelementptr inbounds %struct.commit, %struct.commit* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %110
  store i32 %115, i32* %113, align 8
  %116 = load %struct.commit*, %struct.commit** %15, align 8
  %117 = load %struct.commit_list**, %struct.commit_list*** %5, align 8
  %118 = call i32 @commit_list_insert_by_date(%struct.commit* %116, %struct.commit_list** %117)
  br label %76

119:                                              ; preds = %76
  br label %33

120:                                              ; preds = %58, %33
  br label %121

121:                                              ; preds = %186, %120
  store i32 0, i32* %17, align 4
  %122 = load %struct.commit_list**, %struct.commit_list*** %6, align 8
  %123 = load %struct.commit_list*, %struct.commit_list** %122, align 8
  store %struct.commit_list* %123, %struct.commit_list** %18, align 8
  br label %124

124:                                              ; preds = %178, %121
  %125 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  %126 = icmp ne %struct.commit_list* %125, null
  br i1 %126, label %127, label %182

127:                                              ; preds = %124
  %128 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  %129 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %128, i32 0, i32 1
  %130 = load %struct.commit*, %struct.commit** %129, align 8
  store %struct.commit* %130, %struct.commit** %19, align 8
  %131 = load %struct.commit*, %struct.commit** %19, align 8
  %132 = getelementptr inbounds %struct.commit, %struct.commit* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %127
  %140 = load %struct.commit*, %struct.commit** %19, align 8
  %141 = getelementptr inbounds %struct.commit, %struct.commit* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @UNINTERESTING, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %139
  br label %178

148:                                              ; preds = %139, %127
  %149 = load %struct.commit*, %struct.commit** %19, align 8
  %150 = getelementptr inbounds %struct.commit, %struct.commit* %149, i32 0, i32 1
  %151 = load %struct.commit_list*, %struct.commit_list** %150, align 8
  store %struct.commit_list* %151, %struct.commit_list** %20, align 8
  br label %152

152:                                              ; preds = %176, %148
  %153 = load %struct.commit_list*, %struct.commit_list** %20, align 8
  %154 = icmp ne %struct.commit_list* %153, null
  br i1 %154, label %155, label %177

155:                                              ; preds = %152
  %156 = load %struct.commit_list*, %struct.commit_list** %20, align 8
  %157 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %156, i32 0, i32 1
  %158 = load %struct.commit*, %struct.commit** %157, align 8
  store %struct.commit* %158, %struct.commit** %21, align 8
  %159 = load %struct.commit_list*, %struct.commit_list** %20, align 8
  %160 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %159, i32 0, i32 0
  %161 = load %struct.commit_list*, %struct.commit_list** %160, align 8
  store %struct.commit_list* %161, %struct.commit_list** %20, align 8
  %162 = load %struct.commit*, %struct.commit** %21, align 8
  %163 = getelementptr inbounds %struct.commit, %struct.commit* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @UNINTERESTING, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %155
  %170 = load i32, i32* @UNINTERESTING, align 4
  %171 = load %struct.commit*, %struct.commit** %21, align 8
  %172 = getelementptr inbounds %struct.commit, %struct.commit* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %170
  store i32 %175, i32* %173, align 8
  store i32 1, i32* %17, align 4
  br label %176

176:                                              ; preds = %169, %155
  br label %152

177:                                              ; preds = %152
  br label %178

178:                                              ; preds = %177, %147
  %179 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  %180 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %179, i32 0, i32 0
  %181 = load %struct.commit_list*, %struct.commit_list** %180, align 8
  store %struct.commit_list* %181, %struct.commit_list** %18, align 8
  br label %124

182:                                              ; preds = %124
  %183 = load i32, i32* %17, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %182
  br label %187

186:                                              ; preds = %182
  br label %121

187:                                              ; preds = %185
  ret void
}

declare dso_local i32 @interesting(%struct.commit_list*) #1

declare dso_local %struct.commit* @pop_commit(%struct.commit_list**) #1

declare dso_local i64 @mark_seen(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @parse_commit(%struct.commit*) #1

declare dso_local i32 @commit_list_insert_by_date(%struct.commit*, %struct.commit_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
