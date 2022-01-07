; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_icmp6.c_ni6_dnsmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_icmp6.c_ni6_dnsmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @ni6_dnsmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni6_dnsmatch(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @bcmp(i8* %17, i8* %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %252

23:                                               ; preds = %16, %4
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %8, align 8
  store i8* %25, i8** %11, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %23
  store i32 0, i32* %5, align 4
  br label %252

32:                                               ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %32
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41, %32
  store i32 0, i32* %5, align 4
  br label %252

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %221, %51
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %61, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %56
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %70, %72
  br label %74

74:                                               ; preds = %65, %56
  %75 = phi i1 [ false, %56 ], [ %73, %65 ]
  br i1 %75, label %76, label %232

76:                                               ; preds = %74
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = add nsw i64 %81, 1
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp sgt i64 %82, %84
  br i1 %85, label %96, label %86

86:                                               ; preds = %76
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = add nsw i64 %91, 1
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp sgt i64 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %86, %76
  store i32 0, i32* %5, align 4
  br label %252

97:                                               ; preds = %86
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load i8*, i8** %8, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103, %97
  store i32 0, i32* %5, align 4
  br label %252

110:                                              ; preds = %103
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp sge i32 %114, 64
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp sge i32 %120, 64
  br i1 %121, label %122, label %123

122:                                              ; preds = %116, %110
  store i32 0, i32* %5, align 4
  br label %252

123:                                              ; preds = %116
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %123
  %130 = load i8*, i8** %6, align 8
  %131 = load i8*, i8** %10, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = load i32, i32* %7, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  store i32 1, i32* %5, align 4
  br label %252

140:                                              ; preds = %129, %123
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %140
  %147 = load i8*, i8** %8, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = load i32, i32* %9, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = icmp eq i64 %151, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  store i32 1, i32* %5, align 4
  br label %252

157:                                              ; preds = %146, %140
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %163, %157
  store i32 0, i32* %5, align 4
  br label %252

170:                                              ; preds = %163
  %171 = load i8*, i8** %6, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = load i8*, i8** %8, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %174, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %170
  store i32 0, i32* %5, align 4
  br label %252

181:                                              ; preds = %170
  %182 = load i8*, i8** %6, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  store i32 %185, i32* %12, align 4
  %186 = load i8*, i8** %6, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = ptrtoint i8* %186 to i64
  %189 = ptrtoint i8* %187 to i64
  %190 = sub i64 %188, %189
  %191 = add nsw i64 %190, 1
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %191, %193
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = icmp sgt i64 %194, %196
  br i1 %197, label %211, label %198

198:                                              ; preds = %181
  %199 = load i8*, i8** %8, align 8
  %200 = load i8*, i8** %11, align 8
  %201 = ptrtoint i8* %199 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = add nsw i64 %203, 1
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %204, %206
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = icmp sgt i64 %207, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %198, %181
  store i32 0, i32* %5, align 4
  br label %252

212:                                              ; preds = %198
  %213 = load i8*, i8** %6, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  %215 = load i8*, i8** %8, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 1
  %217 = load i32, i32* %12, align 4
  %218 = call i64 @bcmp(i8* %214, i8* %216, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %212
  store i32 0, i32* %5, align 4
  br label %252

221:                                              ; preds = %212
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 1, %222
  %224 = load i8*, i8** %6, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8* %226, i8** %6, align 8
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 1, %227
  %229 = load i8*, i8** %8, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8* %231, i8** %8, align 8
  br label %56

232:                                              ; preds = %74
  %233 = load i8*, i8** %6, align 8
  %234 = load i8*, i8** %10, align 8
  %235 = ptrtoint i8* %233 to i64
  %236 = ptrtoint i8* %234 to i64
  %237 = sub i64 %235, %236
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = icmp eq i64 %237, %239
  br i1 %240, label %241, label %251

241:                                              ; preds = %232
  %242 = load i8*, i8** %8, align 8
  %243 = load i8*, i8** %11, align 8
  %244 = ptrtoint i8* %242 to i64
  %245 = ptrtoint i8* %243 to i64
  %246 = sub i64 %244, %245
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = icmp eq i64 %246, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %241
  store i32 1, i32* %5, align 4
  br label %252

251:                                              ; preds = %241, %232
  store i32 0, i32* %5, align 4
  br label %252

252:                                              ; preds = %251, %250, %220, %211, %180, %169, %156, %139, %122, %109, %96, %50, %31, %22
  %253 = load i32, i32* %5, align 4
  ret i32 %253
}

declare dso_local i64 @bcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
