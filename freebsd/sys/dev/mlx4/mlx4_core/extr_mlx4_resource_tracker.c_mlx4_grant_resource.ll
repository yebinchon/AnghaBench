; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_grant_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_grant_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.resource_allocator* }
%struct.resource_allocator = type { i32*, i32*, i32, i32*, i32, i32*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"VF %d port %d res %s: quota exceeded, count %d alloc %d quota %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"VF %d port %d res %s: free pool empty, free %d from_free %d rsvd %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32)* @mlx4_grant_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_grant_resource(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx4_priv*, align 8
  %13 = alloca %struct.resource_allocator*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %22 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %21)
  store %struct.mlx4_priv* %22, %struct.mlx4_priv** %12, align 8
  %23 = load %struct.mlx4_priv*, %struct.mlx4_priv** %12, align 8
  %24 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.resource_allocator*, %struct.resource_allocator** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %28, i64 %30
  store %struct.resource_allocator* %31, %struct.resource_allocator** %13, align 8
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %36 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %34, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %5
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %261

44:                                               ; preds = %5
  %45 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %46 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %45, i32 0, i32 7
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load i32, i32* %11, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %52 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %57 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  %62 = mul nsw i32 %55, %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %53, i64 %65
  %67 = load i32, i32* %66, align 4
  br label %76

68:                                               ; preds = %44
  %69 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %70 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  br label %76

76:                                               ; preds = %68, %50
  %77 = phi i32 [ %67, %50 ], [ %75, %68 ]
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %82 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  br label %93

89:                                               ; preds = %76
  %90 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %91 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  br label %93

93:                                               ; preds = %89, %80
  %94 = phi i32 [ %88, %80 ], [ %92, %89 ]
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %99 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  br label %110

106:                                              ; preds = %93
  %107 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %108 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  br label %110

110:                                              ; preds = %106, %97
  %111 = phi i32 [ %105, %97 ], [ %109, %106 ]
  store i32 %111, i32* %17, align 4
  %112 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %113 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %119, %120
  %122 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %123 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %121, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %110
  %131 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @resource_str(i32 %134)
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %139 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @mlx4_warn(%struct.mlx4_dev* %131, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %132, i32 %133, i32 %135, i32 %136, i32 %137, i32 %144)
  br label %256

146:                                              ; preds = %110
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %18, align 4
  %151 = icmp sle i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  store i32 0, i32* %14, align 4
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %20, align 4
  br label %188

154:                                              ; preds = %146
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %15, align 4
  %157 = sub nsw i32 %155, %156
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* %15, align 4
  %163 = sub nsw i32 %161, %162
  %164 = sub nsw i32 %160, %163
  store i32 %164, i32* %19, align 4
  br label %167

165:                                              ; preds = %154
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %19, align 4
  br label %167

167:                                              ; preds = %165, %159
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %19, align 4
  %170 = sub nsw i32 %168, %169
  store i32 %170, i32* %20, align 4
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %19, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load i32, i32* %17, align 4
  %175 = icmp sge i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %167
  store i32 0, i32* %14, align 4
  br label %187

177:                                              ; preds = %167
  %178 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @resource_str(i32 %181)
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* %17, align 4
  %186 = call i32 @mlx4_warn(%struct.mlx4_dev* %178, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %179, i32 %180, i32 %182, i32 %183, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %177, %176
  br label %188

188:                                              ; preds = %187, %152
  %189 = load i32, i32* %14, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %255, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %11, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %234

194:                                              ; preds = %191
  %195 = load i32, i32* %10, align 4
  %196 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %197 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sub nsw i32 %199, 1
  %201 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %202 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %201, i32 0, i32 0
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  %207 = mul nsw i32 %200, %206
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %198, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, %195
  store i32 %213, i32* %211, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %216 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = sub nsw i32 %222, %214
  store i32 %223, i32* %221, align 4
  %224 = load i32, i32* %20, align 4
  %225 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %226 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %225, i32 0, i32 3
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sub nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %227, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = sub nsw i32 %232, %224
  store i32 %233, i32* %231, align 4
  br label %254

234:                                              ; preds = %191
  %235 = load i32, i32* %10, align 4
  %236 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %237 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, %235
  store i32 %243, i32* %241, align 4
  %244 = load i32, i32* %10, align 4
  %245 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %246 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = sub nsw i32 %247, %244
  store i32 %248, i32* %246, align 8
  %249 = load i32, i32* %20, align 4
  %250 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %251 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = sub nsw i32 %252, %249
  store i32 %253, i32* %251, align 8
  br label %254

254:                                              ; preds = %234, %194
  br label %255

255:                                              ; preds = %254, %188
  br label %256

256:                                              ; preds = %255, %130
  %257 = load %struct.resource_allocator*, %struct.resource_allocator** %13, align 8
  %258 = getelementptr inbounds %struct.resource_allocator, %struct.resource_allocator* %257, i32 0, i32 7
  %259 = call i32 @spin_unlock(i32* %258)
  %260 = load i32, i32* %14, align 4
  store i32 %260, i32* %6, align 4
  br label %261

261:                                              ; preds = %256, %41
  %262 = load i32, i32* %6, align 4
  ret i32 %262
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @resource_str(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
