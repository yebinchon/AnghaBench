; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcc_4_7.c_gcov_info_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcc_4_7.c_gcov_info_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_info = type { i32, %struct.TYPE_2__**, i32*, i32* }
%struct.TYPE_2__ = type { %struct.gcov_ctr_info* }
%struct.gcov_ctr_info = type { i32, %struct.gcov_info* }

@M_GCOV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gcov_info* @gcov_info_dup(%struct.gcov_info* %0) #0 {
  %2 = alloca %struct.gcov_info*, align 8
  %3 = alloca %struct.gcov_info*, align 8
  %4 = alloca %struct.gcov_info*, align 8
  %5 = alloca %struct.gcov_ctr_info*, align 8
  %6 = alloca %struct.gcov_ctr_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.gcov_info* %0, %struct.gcov_info** %3, align 8
  %12 = load i32, i32* @M_GCOV, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @malloc(i64 32, i32 %12, i32 %15)
  %17 = bitcast i8* %16 to %struct.gcov_info*
  store %struct.gcov_info* %17, %struct.gcov_info** %4, align 8
  %18 = icmp eq %struct.gcov_info* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.gcov_info* null, %struct.gcov_info** %2, align 8
  br label %186

20:                                               ; preds = %1
  %21 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %22 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %23 = call i32 @memcpy(%struct.gcov_info* %21, %struct.gcov_info* %22, i64 32)
  %24 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %25 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %27 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %29 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %28, i32 0, i32 1
  store %struct.TYPE_2__** null, %struct.TYPE_2__*** %29, align 8
  %30 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %31 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @M_GCOV, align 4
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = call i32* @strdup_flags(i32* %32, i32 %33, i32 %34)
  %36 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %37 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %39 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  br label %183

43:                                               ; preds = %20
  %44 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %45 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = load i32, i32* @M_GCOV, align 4
  %50 = load i32, i32* @M_NOWAIT, align 4
  %51 = load i32, i32* @M_ZERO, align 4
  %52 = or i32 %50, %51
  %53 = call i8* @malloc(i64 %48, i32 %49, i32 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_2__**
  %55 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %56 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %55, i32 0, i32 1
  store %struct.TYPE_2__** %54, %struct.TYPE_2__*** %56, align 8
  %57 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %58 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %58, align 8
  %60 = icmp eq %struct.TYPE_2__** %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  br label %183

62:                                               ; preds = %43
  %63 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %64 = call i32 @num_counter_active(%struct.gcov_info* %63)
  store i32 %64, i32* %7, align 4
  store i64 4, i64* %10, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = mul i64 16, %66
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %178, %62
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %73 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %181

76:                                               ; preds = %70
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* @M_GCOV, align 4
  %79 = load i32, i32* @M_NOWAIT, align 4
  %80 = load i32, i32* @M_ZERO, align 4
  %81 = or i32 %79, %80
  %82 = call i8* @malloc(i64 %77, i32 %78, i32 %81)
  %83 = bitcast i8* %82 to %struct.TYPE_2__*
  %84 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %85 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %86, i64 %88
  store %struct.TYPE_2__* %83, %struct.TYPE_2__** %89, align 8
  %90 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %91 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %92, i64 %94
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = icmp ne %struct.TYPE_2__* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %76
  br label %183

99:                                               ; preds = %76
  %100 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %101 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %102, i64 %104
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %108 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %109, i64 %111
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = bitcast %struct.TYPE_2__* %106 to i8*
  %115 = bitcast %struct.TYPE_2__* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 8, i1 false)
  %116 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %117 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %118, i64 %120
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %123, align 8
  store %struct.gcov_ctr_info* %124, %struct.gcov_ctr_info** %6, align 8
  %125 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %126 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %127, i64 %129
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %132, align 8
  store %struct.gcov_ctr_info* %133, %struct.gcov_ctr_info** %5, align 8
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %174, %99
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %177

138:                                              ; preds = %134
  %139 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %6, align 8
  %140 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = mul i64 4, %142
  store i64 %143, i64* %11, align 8
  %144 = load i64, i64* %11, align 8
  %145 = load i32, i32* @M_GCOV, align 4
  %146 = load i32, i32* @M_NOWAIT, align 4
  %147 = call i8* @malloc(i64 %144, i32 %145, i32 %146)
  %148 = bitcast i8* %147 to %struct.gcov_info*
  %149 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %5, align 8
  %150 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %149, i32 0, i32 1
  store %struct.gcov_info* %148, %struct.gcov_info** %150, align 8
  %151 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %5, align 8
  %152 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %151, i32 0, i32 1
  %153 = load %struct.gcov_info*, %struct.gcov_info** %152, align 8
  %154 = icmp ne %struct.gcov_info* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %138
  br label %183

156:                                              ; preds = %138
  %157 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %6, align 8
  %158 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %5, align 8
  %161 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %5, align 8
  %163 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %162, i32 0, i32 1
  %164 = load %struct.gcov_info*, %struct.gcov_info** %163, align 8
  %165 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %6, align 8
  %166 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %165, i32 0, i32 1
  %167 = load %struct.gcov_info*, %struct.gcov_info** %166, align 8
  %168 = load i64, i64* %11, align 8
  %169 = call i32 @memcpy(%struct.gcov_info* %164, %struct.gcov_info* %167, i64 %168)
  %170 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %6, align 8
  %171 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %170, i32 1
  store %struct.gcov_ctr_info* %171, %struct.gcov_ctr_info** %6, align 8
  %172 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %5, align 8
  %173 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %172, i32 1
  store %struct.gcov_ctr_info* %173, %struct.gcov_ctr_info** %5, align 8
  br label %174

174:                                              ; preds = %156
  %175 = load i32, i32* %9, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %9, align 4
  br label %134

177:                                              ; preds = %134
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %8, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %70

181:                                              ; preds = %70
  %182 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  store %struct.gcov_info* %182, %struct.gcov_info** %2, align 8
  br label %186

183:                                              ; preds = %155, %98, %61, %42
  %184 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %185 = call i32 @gcov_info_free(%struct.gcov_info* %184)
  store %struct.gcov_info* null, %struct.gcov_info** %2, align 8
  br label %186

186:                                              ; preds = %183, %181, %19
  %187 = load %struct.gcov_info*, %struct.gcov_info** %2, align 8
  ret %struct.gcov_info* %187
}

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @memcpy(%struct.gcov_info*, %struct.gcov_info*, i64) #1

declare dso_local i32* @strdup_flags(i32*, i32, i32) #1

declare dso_local i32 @num_counter_active(%struct.gcov_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gcov_info_free(%struct.gcov_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
