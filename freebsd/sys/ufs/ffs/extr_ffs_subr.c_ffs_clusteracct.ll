; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_clusteracct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_subr.c_ffs_clusteracct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i32, i32* }
%struct.cg = type { i32, i64 }

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
  store %struct.fs* %0, %struct.fs** %5, align 8
  store %struct.cg* %1, %struct.cg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load %struct.fs*, %struct.fs** %5, align 8
  %21 = getelementptr inbounds %struct.fs, %struct.fs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %238

25:                                               ; preds = %4
  %26 = load %struct.cg*, %struct.cg** %6, align 8
  %27 = call i32* @cg_clustersfree(%struct.cg* %26)
  store i32* %27, i32** %11, align 8
  %28 = load %struct.cg*, %struct.cg** %6, align 8
  %29 = call i32* @cg_clustersum(%struct.cg* %28)
  store i32* %29, i32** %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @setbit(i32* %33, i32 %34)
  br label %40

36:                                               ; preds = %25
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @clrbit(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.fs*, %struct.fs** %5, align 8
  %45 = getelementptr inbounds %struct.fs, %struct.fs* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.cg*, %struct.cg** %6, align 8
  %50 = getelementptr inbounds %struct.cg, %struct.cg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load %struct.cg*, %struct.cg** %6, align 8
  %55 = getelementptr inbounds %struct.cg, %struct.cg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %53, %40
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @NBBY, align 4
  %61 = sdiv i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  store i32* %63, i32** %12, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %12, align 8
  %66 = load i32, i32* %64, align 4
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @NBBY, align 4
  %69 = srem i32 %67, %68
  %70 = shl i32 1, %69
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %98, %57
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %72
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %19, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %101

82:                                               ; preds = %76
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @NBBY, align 4
  %85 = sub nsw i32 %84, 1
  %86 = and i32 %83, %85
  %87 = load i32, i32* @NBBY, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp ne i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* %19, align 4
  %92 = shl i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %97

93:                                               ; preds = %82
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %12, align 8
  %96 = load i32, i32* %94, align 4
  store i32 %96, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %97

97:                                               ; preds = %93, %90
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %72

101:                                              ; preds = %81, %72
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %7, align 4
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.fs*, %struct.fs** %5, align 8
  %109 = getelementptr inbounds %struct.fs, %struct.fs* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %107, %110
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  store i32 -1, i32* %15, align 4
  br label %115

115:                                              ; preds = %114, %101
  %116 = load i32*, i32** %11, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @NBBY, align 4
  %119 = sdiv i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  store i32* %121, i32** %12, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 -1
  store i32* %123, i32** %12, align 8
  %124 = load i32, i32* %122, align 4
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @NBBY, align 4
  %127 = srem i32 %125, %126
  %128 = shl i32 1, %127
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %157, %115
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %160

134:                                              ; preds = %130
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %19, align 4
  %137 = and i32 %135, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %160

140:                                              ; preds = %134
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* @NBBY, align 4
  %143 = sub nsw i32 %142, 1
  %144 = and i32 %141, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32, i32* %19, align 4
  %148 = ashr i32 %147, 1
  store i32 %148, i32* %19, align 4
  br label %156

149:                                              ; preds = %140
  %150 = load i32*, i32** %12, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 -1
  store i32* %151, i32** %12, align 8
  %152 = load i32, i32* %150, align 4
  store i32 %152, i32* %18, align 4
  %153 = load i32, i32* @NBBY, align 4
  %154 = sub nsw i32 %153, 1
  %155 = shl i32 1, %154
  store i32 %155, i32* %19, align 4
  br label %156

156:                                              ; preds = %149, %146
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %13, align 4
  br label %130

160:                                              ; preds = %139, %130
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %13, align 4
  %163 = sub nsw i32 %161, %162
  store i32 %163, i32* %17, align 4
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %164, %165
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.fs*, %struct.fs** %5, align 8
  %170 = getelementptr inbounds %struct.fs, %struct.fs* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sgt i32 %168, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %160
  %174 = load %struct.fs*, %struct.fs** %5, align 8
  %175 = getelementptr inbounds %struct.fs, %struct.fs* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %13, align 4
  br label %177

177:                                              ; preds = %173, %160
  %178 = load i32, i32* %8, align 4
  %179 = load i32*, i32** %9, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %178
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* %17, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %177
  %188 = load i32, i32* %8, align 4
  %189 = load i32*, i32** %9, align 8
  %190 = load i32, i32* %17, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = sub nsw i32 %193, %188
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %187, %177
  %196 = load i32, i32* %16, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %195
  %199 = load i32, i32* %8, align 4
  %200 = load i32*, i32** %9, align 8
  %201 = load i32, i32* %16, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %204, %199
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %198, %195
  %207 = load i32*, i32** %9, align 8
  %208 = load %struct.fs*, %struct.fs** %5, align 8
  %209 = getelementptr inbounds %struct.fs, %struct.fs* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %207, i64 %211
  store i32* %212, i32** %10, align 8
  %213 = load %struct.fs*, %struct.fs** %5, align 8
  %214 = getelementptr inbounds %struct.fs, %struct.fs* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  store i32 %215, i32* %13, align 4
  br label %216

216:                                              ; preds = %226, %206
  %217 = load i32, i32* %13, align 4
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %216
  %220 = load i32*, i32** %10, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 -1
  store i32* %221, i32** %10, align 8
  %222 = load i32, i32* %220, align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  br label %229

225:                                              ; preds = %219
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %13, align 4
  br label %216

229:                                              ; preds = %224, %216
  %230 = load i32, i32* %13, align 4
  %231 = load %struct.fs*, %struct.fs** %5, align 8
  %232 = getelementptr inbounds %struct.fs, %struct.fs* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = load %struct.cg*, %struct.cg** %6, align 8
  %235 = getelementptr inbounds %struct.cg, %struct.cg* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds i32, i32* %233, i64 %236
  store i32 %230, i32* %237, align 4
  br label %238

238:                                              ; preds = %229, %24
  ret void
}

declare dso_local i32* @cg_clustersfree(%struct.cg*) #1

declare dso_local i32* @cg_clustersum(%struct.cg*) #1

declare dso_local i32 @setbit(i32*, i32) #1

declare dso_local i32 @clrbit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
