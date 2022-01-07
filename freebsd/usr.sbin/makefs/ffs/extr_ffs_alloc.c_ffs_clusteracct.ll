; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_alloc.c_ffs_clusteracct.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_alloc.c_ffs_clusteracct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i32, i32* }
%struct.cg = type { i32, i32 }

@NBBY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ffs_clusteracct(%struct.fs* %0, %struct.cg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fs*, align 8
  %6 = alloca %struct.cg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.fs* %0, %struct.fs** %5, align 8
  store %struct.cg* %1, %struct.cg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load %struct.fs*, %struct.fs** %5, align 8
  %22 = call i32 @UFS_FSNEEDSWAP(%struct.fs* %21)
  store i32 %22, i32* %20, align 4
  %23 = load %struct.fs*, %struct.fs** %5, align 8
  %24 = getelementptr inbounds %struct.fs, %struct.fs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %258

28:                                               ; preds = %4
  %29 = load %struct.cg*, %struct.cg** %6, align 8
  %30 = load i32, i32* %20, align 4
  %31 = call i32* @cg_clustersfree_swap(%struct.cg* %29, i32 %30)
  store i32* %31, i32** %11, align 8
  %32 = load %struct.cg*, %struct.cg** %6, align 8
  %33 = load i32, i32* %20, align 4
  %34 = call i32* @cg_clustersum_swap(%struct.cg* %32, i32 %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @setbit(i32* %38, i32 %39)
  br label %45

41:                                               ; preds = %28
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @clrbit(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.fs*, %struct.fs** %5, align 8
  %50 = getelementptr inbounds %struct.fs, %struct.fs* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %48, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = zext i32 %53 to i64
  %55 = load %struct.cg*, %struct.cg** %6, align 8
  %56 = getelementptr inbounds %struct.cg, %struct.cg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %20, align 4
  %59 = call i64 @ufs_rw32(i32 %57, i32 %58)
  %60 = icmp uge i64 %54, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %45
  %62 = load %struct.cg*, %struct.cg** %6, align 8
  %63 = getelementptr inbounds %struct.cg, %struct.cg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %20, align 4
  %66 = call i64 @ufs_rw32(i32 %64, i32 %65)
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %61, %45
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @NBBY, align 4
  %72 = sdiv i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  store i32* %74, i32** %12, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %12, align 8
  %77 = load i32, i32* %75, align 4
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @NBBY, align 4
  %80 = srem i32 %78, %79
  %81 = shl i32 1, %80
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %109, %68
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %112

87:                                               ; preds = %83
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %19, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %112

93:                                               ; preds = %87
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @NBBY, align 4
  %96 = sub nsw i32 %95, 1
  %97 = and i32 %94, %96
  %98 = load i32, i32* @NBBY, align 4
  %99 = sub nsw i32 %98, 1
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* %19, align 4
  %103 = shl i32 %102, 1
  store i32 %103, i32* %19, align 4
  br label %108

104:                                              ; preds = %93
  %105 = load i32*, i32** %12, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %12, align 8
  %107 = load i32, i32* %105, align 4
  store i32 %107, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %108

108:                                              ; preds = %104, %101
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %83

112:                                              ; preds = %92, %83
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %14, align 4
  %115 = sub nsw i32 %113, %114
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %7, align 4
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load %struct.fs*, %struct.fs** %5, align 8
  %120 = getelementptr inbounds %struct.fs, %struct.fs* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %118, %121
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %112
  store i32 -1, i32* %15, align 4
  br label %126

126:                                              ; preds = %125, %112
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @NBBY, align 4
  %130 = sdiv i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  store i32* %132, i32** %12, align 8
  %133 = load i32*, i32** %12, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 -1
  store i32* %134, i32** %12, align 8
  %135 = load i32, i32* %133, align 4
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @NBBY, align 4
  %138 = srem i32 %136, %137
  %139 = shl i32 1, %138
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %168, %126
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %171

145:                                              ; preds = %141
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %19, align 4
  %148 = and i32 %146, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %171

151:                                              ; preds = %145
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @NBBY, align 4
  %154 = sub nsw i32 %153, 1
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i32, i32* %19, align 4
  %159 = ashr i32 %158, 1
  store i32 %159, i32* %19, align 4
  br label %167

160:                                              ; preds = %151
  %161 = load i32*, i32** %12, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 -1
  store i32* %162, i32** %12, align 8
  %163 = load i32, i32* %161, align 4
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* @NBBY, align 4
  %165 = sub nsw i32 %164, 1
  %166 = shl i32 1, %165
  store i32 %166, i32* %19, align 4
  br label %167

167:                                              ; preds = %160, %157
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %13, align 4
  br label %141

171:                                              ; preds = %150, %141
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %13, align 4
  %174 = sub nsw i32 %172, %173
  store i32 %174, i32* %17, align 4
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %175, %176
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.fs*, %struct.fs** %5, align 8
  %181 = getelementptr inbounds %struct.fs, %struct.fs* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp sgt i32 %179, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %171
  %185 = load %struct.fs*, %struct.fs** %5, align 8
  %186 = getelementptr inbounds %struct.fs, %struct.fs* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %184, %171
  %189 = load i32*, i32** %9, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %20, align 4
  %196 = call i32 @ufs_add32(i32 %193, i32 %194, i32 %195)
  %197 = load i32, i32* %17, align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %188
  %200 = load i32*, i32** %9, align 8
  %201 = load i32, i32* %17, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %8, align 4
  %206 = sub nsw i32 0, %205
  %207 = load i32, i32* %20, align 4
  %208 = call i32 @ufs_add32(i32 %204, i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %199, %188
  %210 = load i32, i32* %16, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %209
  %213 = load i32*, i32** %9, align 8
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %8, align 4
  %219 = sub nsw i32 0, %218
  %220 = load i32, i32* %20, align 4
  %221 = call i32 @ufs_add32(i32 %217, i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %212, %209
  %223 = load i32*, i32** %9, align 8
  %224 = load %struct.fs*, %struct.fs** %5, align 8
  %225 = getelementptr inbounds %struct.fs, %struct.fs* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %223, i64 %227
  store i32* %228, i32** %10, align 8
  %229 = load %struct.fs*, %struct.fs** %5, align 8
  %230 = getelementptr inbounds %struct.fs, %struct.fs* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  store i32 %231, i32* %13, align 4
  br label %232

232:                                              ; preds = %244, %222
  %233 = load i32, i32* %13, align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %232
  %236 = load i32*, i32** %10, align 8
  %237 = getelementptr inbounds i32, i32* %236, i32 -1
  store i32* %237, i32** %10, align 8
  %238 = load i32, i32* %236, align 4
  %239 = load i32, i32* %20, align 4
  %240 = call i64 @ufs_rw32(i32 %238, i32 %239)
  %241 = icmp ugt i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %235
  br label %247

243:                                              ; preds = %235
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %13, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %13, align 4
  br label %232

247:                                              ; preds = %242, %232
  %248 = load i32, i32* %13, align 4
  %249 = load %struct.fs*, %struct.fs** %5, align 8
  %250 = getelementptr inbounds %struct.fs, %struct.fs* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load %struct.cg*, %struct.cg** %6, align 8
  %253 = getelementptr inbounds %struct.cg, %struct.cg* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %20, align 4
  %256 = call i64 @ufs_rw32(i32 %254, i32 %255)
  %257 = getelementptr inbounds i32, i32* %251, i64 %256
  store i32 %248, i32* %257, align 4
  br label %258

258:                                              ; preds = %247, %27
  ret void
}

declare dso_local i32 @UFS_FSNEEDSWAP(%struct.fs*) #1

declare dso_local i32* @cg_clustersfree_swap(%struct.cg*, i32) #1

declare dso_local i32* @cg_clustersum_swap(%struct.cg*, i32) #1

declare dso_local i32 @setbit(i32*, i32) #1

declare dso_local i32 @clrbit(i32*, i32) #1

declare dso_local i64 @ufs_rw32(i32, i32) #1

declare dso_local i32 @ufs_add32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
