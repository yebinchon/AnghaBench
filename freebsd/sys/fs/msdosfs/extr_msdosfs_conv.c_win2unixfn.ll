; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_win2unixfn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_win2unixfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbnambuf = type { i32 }
%struct.winentry = type { i32, i32, i32*, i32*, i32* }
%struct.msdosfsmount = type { i32 }

@WIN_CHARS = common dso_local global i32 0, align 4
@WIN_CNT = common dso_local global i32 0, align 4
@WIN_MAXLEN = common dso_local global i32 0, align 4
@WIN_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @win2unixfn(%struct.mbnambuf* %0, %struct.winentry* %1, i32 %2, %struct.msdosfsmount* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbnambuf*, align 8
  %7 = alloca %struct.winentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.msdosfsmount*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [5 x i8], align 1
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mbnambuf* %0, %struct.mbnambuf** %6, align 8
  store %struct.winentry* %1, %struct.winentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.msdosfsmount* %3, %struct.msdosfsmount** %9, align 8
  %19 = load i32, i32* @WIN_CHARS, align 4
  %20 = mul nsw i32 %19, 3
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load %struct.winentry*, %struct.winentry** %7, align 8
  %26 = getelementptr inbounds %struct.winentry, %struct.winentry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @WIN_CNT, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @WIN_MAXLEN, align 4
  %31 = load i32, i32* @WIN_CHARS, align 4
  %32 = call i32 @howmany(i32 %30, i32 %31)
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %4
  %35 = load %struct.winentry*, %struct.winentry** %7, align 8
  %36 = getelementptr inbounds %struct.winentry, %struct.winentry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @WIN_CNT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34, %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %244

42:                                               ; preds = %34
  %43 = load %struct.winentry*, %struct.winentry** %7, align 8
  %44 = getelementptr inbounds %struct.winentry, %struct.winentry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @WIN_LAST, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.winentry*, %struct.winentry** %7, align 8
  %51 = getelementptr inbounds %struct.winentry, %struct.winentry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  br label %61

53:                                               ; preds = %42
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.winentry*, %struct.winentry** %7, align 8
  %56 = getelementptr inbounds %struct.winentry, %struct.winentry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 -1, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %53
  br label %61

61:                                               ; preds = %60, %49
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %244

65:                                               ; preds = %61
  store i32* %24, i32** %13, align 8
  %66 = load %struct.winentry*, %struct.winentry** %7, align 8
  %67 = getelementptr inbounds %struct.winentry, %struct.winentry* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %12, align 8
  store i32 4, i32* %17, align 4
  br label %69

69:                                               ; preds = %117, %65
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %17, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %120

73:                                               ; preds = %69
  %74 = load i32*, i32** %12, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 8
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %77, %80
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  switch i32 %82, label %99 [
    i32 0, label %83
    i32 47, label %97
  ]

83:                                               ; preds = %73
  %84 = load i32*, i32** %13, align 8
  store i32 0, i32* %84, align 4
  %85 = load %struct.mbnambuf*, %struct.mbnambuf** %6, align 8
  %86 = load %struct.winentry*, %struct.winentry** %7, align 8
  %87 = getelementptr inbounds %struct.winentry, %struct.winentry* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @WIN_CNT, align 4
  %90 = and i32 %88, %89
  %91 = sub nsw i32 %90, 1
  %92 = call i64 @mbnambuf_write(%struct.mbnambuf* %85, i32* %24, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %244

95:                                               ; preds = %83
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %244

97:                                               ; preds = %73
  %98 = load i32*, i32** %13, align 8
  store i32 0, i32* %98, align 4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %244

99:                                               ; preds = %73
  %100 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.msdosfsmount*, %struct.msdosfsmount** %9, align 8
  %103 = call i8* @win2unixchr(i8* %100, i32 %101, %struct.msdosfsmount* %102)
  store i8* %103, i8** %10, align 8
  br label %104

104:                                              ; preds = %109, %99
  %105 = load i8*, i8** %10, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %10, align 8
  %112 = load i8, i8* %110, align 1
  %113 = sext i8 %112 to i32
  %114 = load i32*, i32** %13, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %13, align 8
  store i32 %113, i32* %114, align 4
  br label %104

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116
  %118 = load i32*, i32** %12, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  store i32* %119, i32** %12, align 8
  br label %69

120:                                              ; preds = %69
  %121 = load %struct.winentry*, %struct.winentry** %7, align 8
  %122 = getelementptr inbounds %struct.winentry, %struct.winentry* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  store i32* %123, i32** %12, align 8
  store i32 4, i32* %17, align 4
  br label %124

124:                                              ; preds = %172, %120
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %17, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %175

128:                                              ; preds = %124
  %129 = load i32*, i32** %12, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 8
  %133 = load i32*, i32** %12, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %132, %135
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  switch i32 %137, label %154 [
    i32 0, label %138
    i32 47, label %152
  ]

138:                                              ; preds = %128
  %139 = load i32*, i32** %13, align 8
  store i32 0, i32* %139, align 4
  %140 = load %struct.mbnambuf*, %struct.mbnambuf** %6, align 8
  %141 = load %struct.winentry*, %struct.winentry** %7, align 8
  %142 = getelementptr inbounds %struct.winentry, %struct.winentry* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @WIN_CNT, align 4
  %145 = and i32 %143, %144
  %146 = sub nsw i32 %145, 1
  %147 = call i64 @mbnambuf_write(%struct.mbnambuf* %140, i32* %24, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %244

150:                                              ; preds = %138
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %244

152:                                              ; preds = %128
  %153 = load i32*, i32** %13, align 8
  store i32 0, i32* %153, align 4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %244

154:                                              ; preds = %128
  %155 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %156 = load i32, i32* %16, align 4
  %157 = load %struct.msdosfsmount*, %struct.msdosfsmount** %9, align 8
  %158 = call i8* @win2unixchr(i8* %155, i32 %156, %struct.msdosfsmount* %157)
  store i8* %158, i8** %10, align 8
  br label %159

159:                                              ; preds = %164, %154
  %160 = load i8*, i8** %10, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %159
  %165 = load i8*, i8** %10, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %10, align 8
  %167 = load i8, i8* %165, align 1
  %168 = sext i8 %167 to i32
  %169 = load i32*, i32** %13, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %13, align 8
  store i32 %168, i32* %169, align 4
  br label %159

171:                                              ; preds = %159
  br label %172

172:                                              ; preds = %171
  %173 = load i32*, i32** %12, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 2
  store i32* %174, i32** %12, align 8
  br label %124

175:                                              ; preds = %124
  %176 = load %struct.winentry*, %struct.winentry** %7, align 8
  %177 = getelementptr inbounds %struct.winentry, %struct.winentry* %176, i32 0, i32 4
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %12, align 8
  store i32 4, i32* %17, align 4
  br label %179

179:                                              ; preds = %227, %175
  %180 = load i32, i32* %17, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %17, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %230

183:                                              ; preds = %179
  %184 = load i32*, i32** %12, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 %186, 8
  %188 = load i32*, i32** %12, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %187, %190
  store i32 %191, i32* %16, align 4
  %192 = load i32, i32* %16, align 4
  switch i32 %192, label %209 [
    i32 0, label %193
    i32 47, label %207
  ]

193:                                              ; preds = %183
  %194 = load i32*, i32** %13, align 8
  store i32 0, i32* %194, align 4
  %195 = load %struct.mbnambuf*, %struct.mbnambuf** %6, align 8
  %196 = load %struct.winentry*, %struct.winentry** %7, align 8
  %197 = getelementptr inbounds %struct.winentry, %struct.winentry* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @WIN_CNT, align 4
  %200 = and i32 %198, %199
  %201 = sub nsw i32 %200, 1
  %202 = call i64 @mbnambuf_write(%struct.mbnambuf* %195, i32* %24, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %193
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %244

205:                                              ; preds = %193
  %206 = load i32, i32* %8, align 4
  store i32 %206, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %244

207:                                              ; preds = %183
  %208 = load i32*, i32** %13, align 8
  store i32 0, i32* %208, align 4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %244

209:                                              ; preds = %183
  %210 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %211 = load i32, i32* %16, align 4
  %212 = load %struct.msdosfsmount*, %struct.msdosfsmount** %9, align 8
  %213 = call i8* @win2unixchr(i8* %210, i32 %211, %struct.msdosfsmount* %212)
  store i8* %213, i8** %10, align 8
  br label %214

214:                                              ; preds = %219, %209
  %215 = load i8*, i8** %10, align 8
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %214
  %220 = load i8*, i8** %10, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %10, align 8
  %222 = load i8, i8* %220, align 1
  %223 = sext i8 %222 to i32
  %224 = load i32*, i32** %13, align 8
  %225 = getelementptr inbounds i32, i32* %224, i32 1
  store i32* %225, i32** %13, align 8
  store i32 %223, i32* %224, align 4
  br label %214

226:                                              ; preds = %214
  br label %227

227:                                              ; preds = %226
  %228 = load i32*, i32** %12, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 2
  store i32* %229, i32** %12, align 8
  br label %179

230:                                              ; preds = %179
  %231 = load i32*, i32** %13, align 8
  store i32 0, i32* %231, align 4
  %232 = load %struct.mbnambuf*, %struct.mbnambuf** %6, align 8
  %233 = load %struct.winentry*, %struct.winentry** %7, align 8
  %234 = getelementptr inbounds %struct.winentry, %struct.winentry* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @WIN_CNT, align 4
  %237 = and i32 %235, %236
  %238 = sub nsw i32 %237, 1
  %239 = call i64 @mbnambuf_write(%struct.mbnambuf* %232, i32* %24, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %230
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %244

242:                                              ; preds = %230
  %243 = load i32, i32* %8, align 4
  store i32 %243, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %244

244:                                              ; preds = %242, %241, %207, %205, %204, %152, %150, %149, %97, %95, %94, %64, %41
  %245 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %245)
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @howmany(i32, i32) #2

declare dso_local i64 @mbnambuf_write(%struct.mbnambuf*, i32*, i32) #2

declare dso_local i8* @win2unixchr(i8*, i32, %struct.msdosfsmount*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
