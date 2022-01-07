; ModuleID = '/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_tmalloc_large.c'
source_filename = "/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_tmalloc_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_22__** }

@SIZE_T_BITSIZE = common dso_local global i64 0, align 8
@SIZE_T_ONE = common dso_local global i64 0, align 8
@MIN_CHUNK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_23__*, i64)* @tmalloc_large to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tmalloc_large(%struct.TYPE_23__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @compute_tree_index(i64 %21, i32 %22)
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.TYPE_22__** @treebin_at(%struct.TYPE_23__* %24, i32 %25)
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %8, align 8
  %28 = icmp ne %struct.TYPE_22__* %27, null
  br i1 %28, label %29, label %82

29:                                               ; preds = %2
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @leftshift_for_tree_index(i32 %31)
  %33 = shl i64 %30, %32
  store i64 %33, i64* %10, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %11, align 8
  br label %34

34:                                               ; preds = %78, %29
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %36 = call i64 @chunksize(%struct.TYPE_22__* %35)
  %37 = load i64, i64* %5, align 8
  %38 = sub i64 %36, %37
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %6, align 8
  %44 = load i64, i64* %13, align 8
  store i64 %44, i64* %7, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %81

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %51, i64 1
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %52, align 8
  store %struct.TYPE_22__* %53, %struct.TYPE_22__** %12, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @SIZE_T_BITSIZE, align 8
  %59 = load i64, i64* @SIZE_T_ONE, align 8
  %60 = sub i64 %58, %59
  %61 = lshr i64 %57, %60
  %62 = and i64 %61, 1
  %63 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %56, i64 %62
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %63, align 8
  store %struct.TYPE_22__* %64, %struct.TYPE_22__** %8, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %66 = icmp ne %struct.TYPE_22__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %48
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %70 = icmp ne %struct.TYPE_22__* %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %72, %struct.TYPE_22__** %11, align 8
  br label %73

73:                                               ; preds = %71, %67, %48
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %75 = icmp eq %struct.TYPE_22__* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %77, %struct.TYPE_22__** %8, align 8
  br label %81

78:                                               ; preds = %73
  %79 = load i64, i64* %10, align 8
  %80 = shl i64 %79, 1
  store i64 %80, i64* %10, align 8
  br label %34

81:                                               ; preds = %76, %46
  br label %82

82:                                               ; preds = %81, %2
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %84 = icmp eq %struct.TYPE_22__* %83, null
  br i1 %84, label %85, label %109

85:                                               ; preds = %82
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %87 = icmp eq %struct.TYPE_22__* %86, null
  br i1 %87, label %88, label %109

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @idx2bit(i32 %89)
  %91 = call i64 @left_bits(i32 %90)
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = and i64 %91, %94
  store i64 %95, i64* %14, align 8
  %96 = load i64, i64* %14, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %88
  %99 = load i64, i64* %14, align 8
  %100 = call i64 @least_bit(i64 %99)
  store i64 %100, i64* %16, align 8
  %101 = load i64, i64* %16, align 8
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @compute_bit2idx(i64 %101, i32 %102)
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call %struct.TYPE_22__** @treebin_at(%struct.TYPE_23__* %104, i32 %105)
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %106, align 8
  store %struct.TYPE_22__* %107, %struct.TYPE_22__** %8, align 8
  br label %108

108:                                              ; preds = %98, %88
  br label %109

109:                                              ; preds = %108, %85, %82
  br label %110

110:                                              ; preds = %124, %109
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %112 = icmp ne %struct.TYPE_22__* %111, null
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %115 = call i64 @chunksize(%struct.TYPE_22__* %114)
  %116 = load i64, i64* %5, align 8
  %117 = sub i64 %115, %116
  store i64 %117, i64* %17, align 8
  %118 = load i64, i64* %17, align 8
  %119 = load i64, i64* %7, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load i64, i64* %17, align 8
  store i64 %122, i64* %7, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %123, %struct.TYPE_22__** %6, align 8
  br label %124

124:                                              ; preds = %121, %113
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %126 = call %struct.TYPE_22__* @leftmost_child(%struct.TYPE_22__* %125)
  store %struct.TYPE_22__* %126, %struct.TYPE_22__** %8, align 8
  br label %110

127:                                              ; preds = %110
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %129 = icmp ne %struct.TYPE_22__* %128, null
  br i1 %129, label %130, label %194

130:                                              ; preds = %127
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %5, align 8
  %136 = sub i64 %134, %135
  %137 = icmp ult i64 %131, %136
  br i1 %137, label %138, label %194

138:                                              ; preds = %130
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %141 = call i32 @ok_address(%struct.TYPE_23__* %139, %struct.TYPE_22__* %140)
  %142 = call i64 @RTCHECK(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %191

144:                                              ; preds = %138
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %146 = load i64, i64* %5, align 8
  %147 = call i32 @chunk_plus_offset(%struct.TYPE_22__* %145, i64 %146)
  store i32 %147, i32* %18, align 4
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %149 = call i64 @chunksize(%struct.TYPE_22__* %148)
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* %5, align 8
  %152 = add i64 %150, %151
  %153 = icmp eq i64 %149, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %157 = load i32, i32* %18, align 4
  %158 = call i32 @ok_next(%struct.TYPE_22__* %156, i32 %157)
  %159 = call i64 @RTCHECK(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %190

161:                                              ; preds = %144
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %164 = call i32 @unlink_large_chunk(%struct.TYPE_23__* %162, %struct.TYPE_22__* %163)
  %165 = load i64, i64* %7, align 8
  %166 = load i64, i64* @MIN_CHUNK_SIZE, align 8
  %167 = icmp ult i64 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %161
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %171 = load i64, i64* %7, align 8
  %172 = load i64, i64* %5, align 8
  %173 = add i64 %171, %172
  %174 = call i32 @set_inuse_and_pinuse(%struct.TYPE_23__* %169, %struct.TYPE_22__* %170, i64 %173)
  br label %187

175:                                              ; preds = %161
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %178 = load i64, i64* %5, align 8
  %179 = call i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_23__* %176, %struct.TYPE_22__* %177, i64 %178)
  %180 = load i32, i32* %18, align 4
  %181 = load i64, i64* %7, align 8
  %182 = call i32 @set_size_and_pinuse_of_free_chunk(i32 %180, i64 %181)
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %184 = load i32, i32* %18, align 4
  %185 = load i64, i64* %7, align 8
  %186 = call i32 @insert_chunk(%struct.TYPE_23__* %183, i32 %184, i64 %185)
  br label %187

187:                                              ; preds = %175, %168
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %189 = call i8* @chunk2mem(%struct.TYPE_22__* %188)
  store i8* %189, i8** %3, align 8
  br label %195

190:                                              ; preds = %144
  br label %191

191:                                              ; preds = %190, %138
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %193 = call i32 @CORRUPTION_ERROR_ACTION(%struct.TYPE_23__* %192)
  br label %194

194:                                              ; preds = %191, %130, %127
  store i8* null, i8** %3, align 8
  br label %195

195:                                              ; preds = %194, %187
  %196 = load i8*, i8** %3, align 8
  ret i8* %196
}

declare dso_local i32 @compute_tree_index(i64, i32) #1

declare dso_local %struct.TYPE_22__** @treebin_at(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @leftshift_for_tree_index(i32) #1

declare dso_local i64 @chunksize(%struct.TYPE_22__*) #1

declare dso_local i64 @left_bits(i32) #1

declare dso_local i32 @idx2bit(i32) #1

declare dso_local i64 @least_bit(i64) #1

declare dso_local i32 @compute_bit2idx(i64, i32) #1

declare dso_local %struct.TYPE_22__* @leftmost_child(%struct.TYPE_22__*) #1

declare dso_local i64 @RTCHECK(i32) #1

declare dso_local i32 @ok_address(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @chunk_plus_offset(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ok_next(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @unlink_large_chunk(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @set_inuse_and_pinuse(%struct.TYPE_23__*, %struct.TYPE_22__*, i64) #1

declare dso_local i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_23__*, %struct.TYPE_22__*, i64) #1

declare dso_local i32 @set_size_and_pinuse_of_free_chunk(i32, i64) #1

declare dso_local i32 @insert_chunk(%struct.TYPE_23__*, i32, i64) #1

declare dso_local i8* @chunk2mem(%struct.TYPE_22__*) #1

declare dso_local i32 @CORRUPTION_ERROR_ACTION(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
