; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_updatelock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_updatelock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfscllockowner = type { i32 }
%struct.nfscllock = type { i64, i64, i64 }

@F_UNLCK = common dso_local global i64 0, align 8
@nfslo_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfscllockowner*, %struct.nfscllock**, %struct.nfscllock**, i32)* @nfscl_updatelock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfscl_updatelock(%struct.nfscllockowner* %0, %struct.nfscllock** %1, %struct.nfscllock** %2, i32 %3) #0 {
  %5 = alloca %struct.nfscllockowner*, align 8
  %6 = alloca %struct.nfscllock**, align 8
  %7 = alloca %struct.nfscllock**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfscllock*, align 8
  %10 = alloca %struct.nfscllock*, align 8
  %11 = alloca %struct.nfscllock*, align 8
  %12 = alloca %struct.nfscllock*, align 8
  %13 = alloca %struct.nfscllock*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.nfscllockowner* %0, %struct.nfscllockowner** %5, align 8
  store %struct.nfscllock** %1, %struct.nfscllock*** %6, align 8
  store %struct.nfscllock** %2, %struct.nfscllock*** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.nfscllock**, %struct.nfscllock*** %6, align 8
  %18 = load %struct.nfscllock*, %struct.nfscllock** %17, align 8
  store %struct.nfscllock* %18, %struct.nfscllock** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %20 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @F_UNLCK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  br label %25

25:                                               ; preds = %24, %4
  %26 = load %struct.nfscllockowner*, %struct.nfscllockowner** %5, align 8
  %27 = bitcast %struct.nfscllockowner* %26 to %struct.nfscllock*
  store %struct.nfscllock* %27, %struct.nfscllock** %12, align 8
  %28 = load %struct.nfscllockowner*, %struct.nfscllockowner** %5, align 8
  %29 = getelementptr inbounds %struct.nfscllockowner, %struct.nfscllockowner* %28, i32 0, i32 0
  %30 = call %struct.nfscllock* @LIST_FIRST(i32* %29)
  store %struct.nfscllock* %30, %struct.nfscllock** %10, align 8
  br label %31

31:                                               ; preds = %232, %181, %128, %25
  %32 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %33 = icmp ne %struct.nfscllock* %32, null
  br i1 %33, label %34, label %233

34:                                               ; preds = %31
  %35 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %36 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %39 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %224

42:                                               ; preds = %34
  %43 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %44 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %47 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %233

51:                                               ; preds = %42
  %52 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %53 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %56 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %75, label %59

59:                                               ; preds = %51
  %60 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %61 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %64 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %62, %65
  br i1 %66, label %67, label %136

67:                                               ; preds = %59
  %68 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %69 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %72 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %70, %73
  br i1 %74, label %75, label %136

75:                                               ; preds = %67, %51
  %76 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %77 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %80 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %99, label %83

83:                                               ; preds = %75
  %84 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %85 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %88 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %99, label %91

91:                                               ; preds = %83
  %92 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %93 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %96 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91, %83, %75
  store i32 1, i32* %15, align 4
  br label %100

100:                                              ; preds = %99, %91
  %101 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %102 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %105 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %103, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %110 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %113 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %108, %100
  %115 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %116 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %119 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %117, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %114
  %123 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %124 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %127 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %122, %114
  %129 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  store %struct.nfscllock* %129, %struct.nfscllock** %11, align 8
  %130 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %131 = load i32, i32* @nfslo_list, align 4
  %132 = call %struct.nfscllock* @LIST_NEXT(%struct.nfscllock* %130, i32 %131)
  store %struct.nfscllock* %132, %struct.nfscllock** %10, align 8
  %133 = load %struct.nfscllock*, %struct.nfscllock** %11, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @nfscl_freelock(%struct.nfscllock* %133, i32 %134)
  br label %31

136:                                              ; preds = %67, %59
  %137 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %138 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %141 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp sle i64 %139, %142
  br i1 %143, label %144, label %159

144:                                              ; preds = %136
  %145 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %146 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %149 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %147, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %154 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %157 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %156, i32 0, i32 2
  store i64 %155, i64* %157, align 8
  store i32 1, i32* %15, align 4
  br label %158

158:                                              ; preds = %152, %144
  br label %233

159:                                              ; preds = %136
  %160 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %161 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %164 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp sge i64 %162, %165
  br i1 %166, label %167, label %186

167:                                              ; preds = %159
  %168 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %169 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %172 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %170, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %167
  %176 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %177 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %180 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %179, i32 0, i32 1
  store i64 %178, i64* %180, align 8
  store i32 1, i32* %15, align 4
  br label %181

181:                                              ; preds = %175, %167
  %182 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  store %struct.nfscllock* %182, %struct.nfscllock** %12, align 8
  %183 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %184 = load i32, i32* @nfslo_list, align 4
  %185 = call %struct.nfscllock* @LIST_NEXT(%struct.nfscllock* %183, i32 %184)
  store %struct.nfscllock* %185, %struct.nfscllock** %10, align 8
  br label %31

186:                                              ; preds = %159
  %187 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %188 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %16, align 8
  %190 = load i32, i32* %14, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  store %struct.nfscllock* %193, %struct.nfscllock** %13, align 8
  %194 = load %struct.nfscllock**, %struct.nfscllock*** %6, align 8
  store %struct.nfscllock* null, %struct.nfscllock** %194, align 8
  br label %199

195:                                              ; preds = %186
  %196 = load %struct.nfscllock**, %struct.nfscllock*** %7, align 8
  %197 = load %struct.nfscllock*, %struct.nfscllock** %196, align 8
  store %struct.nfscllock* %197, %struct.nfscllock** %13, align 8
  %198 = load %struct.nfscllock**, %struct.nfscllock*** %7, align 8
  store %struct.nfscllock* null, %struct.nfscllock** %198, align 8
  br label %199

199:                                              ; preds = %195, %192
  %200 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %201 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.nfscllock*, %struct.nfscllock** %13, align 8
  %204 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %203, i32 0, i32 2
  store i64 %202, i64* %204, align 8
  %205 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %206 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.nfscllock*, %struct.nfscllock** %13, align 8
  %209 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %208, i32 0, i32 1
  store i64 %207, i64* %209, align 8
  %210 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %211 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.nfscllock*, %struct.nfscllock** %13, align 8
  %214 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %213, i32 0, i32 0
  store i64 %212, i64* %214, align 8
  %215 = load i64, i64* %16, align 8
  %216 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %217 = getelementptr inbounds %struct.nfscllock, %struct.nfscllock* %216, i32 0, i32 1
  store i64 %215, i64* %217, align 8
  %218 = load %struct.nfscllockowner*, %struct.nfscllockowner** %5, align 8
  %219 = load %struct.nfscllock*, %struct.nfscllock** %13, align 8
  %220 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @nfscl_insertlock(%struct.nfscllockowner* %218, %struct.nfscllock* %219, %struct.nfscllock* %220, i32 %221)
  %223 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  store %struct.nfscllock* %223, %struct.nfscllock** %12, align 8
  store i32 1, i32* %15, align 4
  br label %233

224:                                              ; preds = %34
  %225 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  store %struct.nfscllock* %225, %struct.nfscllock** %12, align 8
  %226 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %227 = load i32, i32* @nfslo_list, align 4
  %228 = call %struct.nfscllock* @LIST_NEXT(%struct.nfscllock* %226, i32 %227)
  store %struct.nfscllock* %228, %struct.nfscllock** %10, align 8
  %229 = load %struct.nfscllock*, %struct.nfscllock** %10, align 8
  %230 = icmp eq %struct.nfscllock* %229, null
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  br label %233

232:                                              ; preds = %224
  br label %31

233:                                              ; preds = %231, %199, %158, %50, %31
  %234 = load i32, i32* %14, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %243, label %236

236:                                              ; preds = %233
  %237 = load %struct.nfscllockowner*, %struct.nfscllockowner** %5, align 8
  %238 = load %struct.nfscllock*, %struct.nfscllock** %9, align 8
  %239 = load %struct.nfscllock*, %struct.nfscllock** %12, align 8
  %240 = load i32, i32* %8, align 4
  %241 = call i32 @nfscl_insertlock(%struct.nfscllockowner* %237, %struct.nfscllock* %238, %struct.nfscllock* %239, i32 %240)
  %242 = load %struct.nfscllock**, %struct.nfscllock*** %6, align 8
  store %struct.nfscllock* null, %struct.nfscllock** %242, align 8
  store i32 1, i32* %15, align 4
  br label %243

243:                                              ; preds = %236, %233
  %244 = load i32, i32* %15, align 4
  ret i32 %244
}

declare dso_local %struct.nfscllock* @LIST_FIRST(i32*) #1

declare dso_local %struct.nfscllock* @LIST_NEXT(%struct.nfscllock*, i32) #1

declare dso_local i32 @nfscl_freelock(%struct.nfscllock*, i32) #1

declare dso_local i32 @nfscl_insertlock(%struct.nfscllockowner*, %struct.nfscllock*, %struct.nfscllock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
