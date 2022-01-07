; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_blob_iter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_blob_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statsblobv1 = type { %struct.voi* }
%struct.voi = type { i64, i32, i32 }
%struct.voistat = type { i64 }
%struct.sb_iter_ctx = type { i32, i32, i32, i8* }

@SB_IT_FIRST_CB = common dso_local global i32 0, align 4
@SB_IT_FIRST_VOI = common dso_local global i32 0, align 4
@SB_IT_LAST_VOI = common dso_local global i32 0, align 4
@SB_IT_FIRST_VOISTAT = common dso_local global i32 0, align 4
@SB_IT_LAST_VOISTAT = common dso_local global i32 0, align 4
@SB_IT_LAST_CB = common dso_local global i32 0, align 4
@SB_IT_NULLVOI = common dso_local global i32 0, align 4
@SB_IT_NULLVOISTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.statsblobv1*, i64 (%struct.statsblobv1*, %struct.voi*, %struct.voistat*, %struct.sb_iter_ctx*)*, i8*, i32)* @stats_v1_blob_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_v1_blob_iter(%struct.statsblobv1* %0, i64 (%struct.statsblobv1*, %struct.voi*, %struct.voistat*, %struct.sb_iter_ctx*)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.statsblobv1*, align 8
  %6 = alloca i64 (%struct.statsblobv1*, %struct.voi*, %struct.voistat*, %struct.sb_iter_ctx*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.voi*, align 8
  %10 = alloca %struct.voistat*, align 8
  %11 = alloca %struct.sb_iter_ctx, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.statsblobv1* %0, %struct.statsblobv1** %5, align 8
  store i64 (%struct.statsblobv1*, %struct.voi*, %struct.voistat*, %struct.sb_iter_ctx*)* %1, i64 (%struct.statsblobv1*, %struct.voi*, %struct.voistat*, %struct.sb_iter_ctx*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 3
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @SB_IT_FIRST_CB, align 4
  %18 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* @SB_IT_FIRST_VOI, align 4
  %22 = load i32, i32* @SB_IT_LAST_VOI, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SB_IT_FIRST_VOISTAT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SB_IT_LAST_VOISTAT, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %28
  store i32 %31, i32* %29, align 8
  store i32 1, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %181, %4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %35 = call i32 @NVOIS(%struct.statsblobv1* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %184

37:                                               ; preds = %32
  %38 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %39 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %38, i32 0, i32 0
  %40 = load %struct.voi*, %struct.voi** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.voi, %struct.voi* %40, i64 %42
  store %struct.voi* %43, %struct.voi** %9, align 8
  %44 = load i32, i32* %12, align 4
  %45 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 2
  store i32 -1, i32* %46, align 8
  %47 = load i32, i32* @SB_IT_FIRST_VOISTAT, align 4
  %48 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %37
  %54 = load i32, i32* @SB_IT_FIRST_VOI, align 4
  %55 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 8
  br label %72

58:                                               ; preds = %37
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %61 = call i32 @NVOIS(%struct.statsblobv1* %60)
  %62 = sub nsw i32 %61, 1
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* @SB_IT_LAST_VOI, align 4
  %66 = load i32, i32* @SB_IT_LAST_CB, align 4
  %67 = or i32 %65, %66
  %68 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %64, %58
  br label %72

72:                                               ; preds = %71, %53
  %73 = load %struct.voi*, %struct.voi** %9, align 8
  %74 = getelementptr inbounds %struct.voi, %struct.voi* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @SB_IT_NULLVOI, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load i64 (%struct.statsblobv1*, %struct.voi*, %struct.voistat*, %struct.sb_iter_ctx*)*, i64 (%struct.statsblobv1*, %struct.voi*, %struct.voistat*, %struct.sb_iter_ctx*)** %6, align 8
  %84 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %85 = load %struct.voi*, %struct.voi** %9, align 8
  %86 = call i64 %83(%struct.statsblobv1* %84, %struct.voi* %85, %struct.voistat* null, %struct.sb_iter_ctx* %11)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %184

89:                                               ; preds = %82
  store i32 0, i32* %14, align 4
  %90 = load i32, i32* @SB_IT_FIRST_CB, align 4
  %91 = xor i32 %90, -1
  %92 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %91
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %77, %72
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %170, %95
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.voi*, %struct.voi** %9, align 8
  %99 = getelementptr inbounds %struct.voi, %struct.voi* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp sle i32 %97, %100
  br i1 %101, label %102, label %173

102:                                              ; preds = %96
  %103 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %104 = load %struct.voi*, %struct.voi** %9, align 8
  %105 = getelementptr inbounds %struct.voi, %struct.voi* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @BLOB_OFFSET(%struct.statsblobv1* %103, i32 %106)
  %108 = inttoptr i64 %107 to %struct.voistat*
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.voistat, %struct.voistat* %108, i64 %110
  store %struct.voistat* %111, %struct.voistat** %10, align 8
  %112 = load %struct.voistat*, %struct.voistat** %10, align 8
  %113 = getelementptr inbounds %struct.voistat, %struct.voistat* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %102
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @SB_IT_NULLVOISTAT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  br label %170

122:                                              ; preds = %116, %102
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.voi*, %struct.voi** %9, align 8
  %125 = getelementptr inbounds %struct.voi, %struct.voi* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %122
  %129 = load i32, i32* @SB_IT_LAST_VOISTAT, align 4
  %130 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %129
  store i32 %132, i32* %130, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %135 = call i32 @NVOIS(%struct.statsblobv1* %134)
  %136 = sub nsw i32 %135, 1
  %137 = icmp eq i32 %133, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %128
  %139 = load i32, i32* @SB_IT_LAST_CB, align 4
  %140 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %139
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %138, %128
  br label %150

144:                                              ; preds = %122
  %145 = load i32, i32* @SB_IT_LAST_CB, align 4
  %146 = xor i32 %145, -1
  %147 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, %146
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %144, %143
  %151 = load i32, i32* %13, align 4
  %152 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 2
  store i32 %151, i32* %152, align 8
  %153 = load i64 (%struct.statsblobv1*, %struct.voi*, %struct.voistat*, %struct.sb_iter_ctx*)*, i64 (%struct.statsblobv1*, %struct.voi*, %struct.voistat*, %struct.sb_iter_ctx*)** %6, align 8
  %154 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %155 = load %struct.voi*, %struct.voi** %9, align 8
  %156 = load %struct.voistat*, %struct.voistat** %10, align 8
  %157 = call i64 %153(%struct.statsblobv1* %154, %struct.voi* %155, %struct.voistat* %156, %struct.sb_iter_ctx* %11)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %150
  br label %184

160:                                              ; preds = %150
  %161 = load i32, i32* @SB_IT_FIRST_CB, align 4
  %162 = load i32, i32* @SB_IT_FIRST_VOISTAT, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @SB_IT_LAST_VOISTAT, align 4
  %165 = or i32 %163, %164
  %166 = xor i32 %165, -1
  %167 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, %166
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %160, %121
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %96

173:                                              ; preds = %96
  %174 = load i32, i32* @SB_IT_FIRST_VOI, align 4
  %175 = load i32, i32* @SB_IT_LAST_VOI, align 4
  %176 = or i32 %174, %175
  %177 = xor i32 %176, -1
  %178 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %11, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %179, %177
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %173
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %12, align 4
  br label %32

184:                                              ; preds = %88, %159, %32
  ret void
}

declare dso_local i32 @NVOIS(%struct.statsblobv1*) #1

declare dso_local i64 @BLOB_OFFSET(%struct.statsblobv1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
