; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_memfree.c_mthca_alloc_icm_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_memfree.c_mthca_alloc_icm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_icm_table = type { i32, i32, i32, i32, i32, %struct.TYPE_4__**, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.mthca_dev = type { i32 }

@MTHCA_TABLE_CHUNK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mthca_icm_table* @mthca_alloc_icm_table(%struct.mthca_dev* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.mthca_icm_table*, align 8
  %9 = alloca %struct.mthca_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mthca_icm_table*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %17, align 4
  %26 = call i32 @DIV_ROUND_UP(i32 %24, i32 %25)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = add i64 48, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.mthca_icm_table* @kmalloc(i32 %31, i32 %32)
  store %struct.mthca_icm_table* %33, %struct.mthca_icm_table** %16, align 8
  %34 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %35 = icmp ne %struct.mthca_icm_table* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %7
  store %struct.mthca_icm_table* null, %struct.mthca_icm_table** %8, align 8
  br label %229

37:                                               ; preds = %7
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %40 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %39, i32 0, i32 7
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %18, align 4
  %42 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %43 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %46 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %49 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %52 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %55 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %57 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %56, i32 0, i32 6
  %58 = call i32 @mutex_init(i32* %57)
  store i32 0, i32* %20, align 4
  br label %59

59:                                               ; preds = %70, %37
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %18, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %65 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %64, i32 0, i32 5
  %66 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %65, align 8
  %67 = load i32, i32* %20, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %66, i64 %68
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %69, align 8
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %20, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %20, align 4
  br label %59

73:                                               ; preds = %59
  store i32 0, i32* %20, align 4
  br label %74

74:                                               ; preds = %179, %73
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %11, align 4
  %80 = mul nsw i32 %78, %79
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %182

82:                                               ; preds = %74
  %83 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %20, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = mul nsw i32 %88, %89
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sub nsw i32 %95, %98
  store i32 %99, i32* %19, align 4
  br label %100

100:                                              ; preds = %92, %82
  %101 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* @PAGE_SHIFT, align 4
  %104 = lshr i32 %102, %103
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @GFP_KERNEL, align 4
  br label %111

109:                                              ; preds = %100
  %110 = load i32, i32* @GFP_HIGHUSER, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load i32, i32* @__GFP_NOWARN, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %15, align 4
  %116 = call %struct.TYPE_4__* @mthca_alloc_icm(%struct.mthca_dev* %101, i32 %104, i32 %114, i32 %115)
  %117 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %118 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %117, i32 0, i32 5
  %119 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %118, align 8
  %120 = load i32, i32* %20, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %119, i64 %121
  store %struct.TYPE_4__* %116, %struct.TYPE_4__** %122, align 8
  %123 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %124 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %123, i32 0, i32 5
  %125 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %124, align 8
  %126 = load i32, i32* %20, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %125, i64 %127
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = icmp ne %struct.TYPE_4__* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %111
  br label %184

132:                                              ; preds = %111
  %133 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %134 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %135 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %134, i32 0, i32 5
  %136 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %135, align 8
  %137 = load i32, i32* %20, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %136, i64 %138
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %141, %145
  %147 = call i64 @mthca_MAP_ICM(%struct.mthca_dev* %133, %struct.TYPE_4__* %140, i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %132
  %150 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %151 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %152 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %151, i32 0, i32 5
  %153 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %152, align 8
  %154 = load i32, i32* %20, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %153, i64 %155
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %159 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @mthca_free_icm(%struct.mthca_dev* %150, %struct.TYPE_4__* %157, i32 %160)
  %162 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %163 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %162, i32 0, i32 5
  %164 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %163, align 8
  %165 = load i32, i32* %20, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %164, i64 %166
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %167, align 8
  br label %184

168:                                              ; preds = %132
  %169 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %170 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %169, i32 0, i32 5
  %171 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %170, align 8
  %172 = load i32, i32* %20, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %171, i64 %173
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %168
  %180 = load i32, i32* %20, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %20, align 4
  br label %74

182:                                              ; preds = %74
  %183 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  store %struct.mthca_icm_table* %183, %struct.mthca_icm_table** %8, align 8
  br label %229

184:                                              ; preds = %149, %131
  store i32 0, i32* %20, align 4
  br label %185

185:                                              ; preds = %223, %184
  %186 = load i32, i32* %20, align 4
  %187 = load i32, i32* %18, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %226

189:                                              ; preds = %185
  %190 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %191 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %190, i32 0, i32 5
  %192 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %191, align 8
  %193 = load i32, i32* %20, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %192, i64 %194
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = icmp ne %struct.TYPE_4__* %196, null
  br i1 %197, label %198, label %222

198:                                              ; preds = %189
  %199 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %200 = load i64, i64* %10, align 8
  %201 = load i32, i32* %20, align 4
  %202 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %203 = mul nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %200, %204
  %206 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %207 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %208 = sdiv i32 %206, %207
  %209 = call i32 @mthca_UNMAP_ICM(%struct.mthca_dev* %199, i64 %205, i32 %208)
  %210 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %211 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %212 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %211, i32 0, i32 5
  %213 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %212, align 8
  %214 = load i32, i32* %20, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %213, i64 %215
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %219 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @mthca_free_icm(%struct.mthca_dev* %210, %struct.TYPE_4__* %217, i32 %220)
  br label %222

222:                                              ; preds = %198, %189
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %20, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %20, align 4
  br label %185

226:                                              ; preds = %185
  %227 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %16, align 8
  %228 = call i32 @kfree(%struct.mthca_icm_table* %227)
  store %struct.mthca_icm_table* null, %struct.mthca_icm_table** %8, align 8
  br label %229

229:                                              ; preds = %226, %182, %36
  %230 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %8, align 8
  ret %struct.mthca_icm_table* %230
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.mthca_icm_table* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_4__* @mthca_alloc_icm(%struct.mthca_dev*, i32, i32, i32) #1

declare dso_local i64 @mthca_MAP_ICM(%struct.mthca_dev*, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @mthca_free_icm(%struct.mthca_dev*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @mthca_UNMAP_ICM(%struct.mthca_dev*, i64, i32) #1

declare dso_local i32 @kfree(%struct.mthca_icm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
