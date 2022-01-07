; ModuleID = '/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_ialloc.c'
source_filename = "/home/carl/AnghaBench/git/compat/nedmalloc/extr_malloc.c.h_ialloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHUNK_OVERHEAD = common dso_local global i64 0, align 8
@SIZE_T_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i32, i64, i64*, i32, i8**)* @ialloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @ialloc(i32 %0, i64 %1, i64* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %24 = call i32 (...) @ensure_initialization()
  %25 = load i8**, i8*** %11, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8**, i8*** %11, align 8
  store i8** %31, i8*** %6, align 8
  br label %187

32:                                               ; preds = %27
  %33 = load i8**, i8*** %11, align 8
  store i8** %33, i8*** %18, align 8
  store i64 0, i64* %14, align 8
  br label %45

34:                                               ; preds = %5
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @internal_malloc(i32 %38, i64 0)
  %40 = bitcast i8* %39 to i8**
  store i8** %40, i8*** %6, align 8
  br label %187

41:                                               ; preds = %34
  store i8** null, i8*** %18, align 8
  %42 = load i64, i64* %8, align 8
  %43 = mul i64 %42, 8
  %44 = call i64 @request2size(i64 %43)
  store i64 %44, i64* %14, align 8
  br label %45

45:                                               ; preds = %41, %32
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i64*, i64** %9, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @request2size(i64 %51)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %12, align 8
  %55 = mul i64 %53, %54
  store i64 %55, i64* %13, align 8
  br label %73

56:                                               ; preds = %45
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %22, align 8
  br label %57

57:                                               ; preds = %69, %56
  %58 = load i64, i64* %22, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i64*, i64** %9, align 8
  %63 = load i64, i64* %22, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @request2size(i64 %65)
  %67 = load i64, i64* %13, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %13, align 8
  br label %69

69:                                               ; preds = %61
  %70 = load i64, i64* %22, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %22, align 8
  br label %57

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %49
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = add i64 %74, %75
  store i64 %76, i64* %21, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @use_mmap(i32 %77)
  store i64 %78, i64* %20, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @disable_mmap(i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i64, i64* %21, align 8
  %83 = load i64, i64* @CHUNK_OVERHEAD, align 8
  %84 = sub i64 %82, %83
  %85 = call i8* @internal_malloc(i32 %81, i64 %84)
  store i8* %85, i8** %15, align 8
  %86 = load i64, i64* %20, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %73
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @enable_mmap(i32 %89)
  br label %91

91:                                               ; preds = %88, %73
  %92 = load i8*, i8** %15, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i8** null, i8*** %6, align 8
  br label %187

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @PREACTION(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i8** null, i8*** %6, align 8
  br label %187

100:                                              ; preds = %95
  %101 = load i8*, i8** %15, align 8
  %102 = call i32 @mem2chunk(i8* %101)
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i64 @chunksize(i32 %103)
  store i64 %104, i64* %17, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @is_mmapped(i32 %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = and i32 %111, 2
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %100
  %115 = load i8*, i8** %15, align 8
  %116 = bitcast i8* %115 to i64*
  %117 = load i64, i64* %17, align 8
  %118 = load i64, i64* @SIZE_T_SIZE, align 8
  %119 = sub i64 %117, %118
  %120 = load i64, i64* %14, align 8
  %121 = sub i64 %119, %120
  %122 = call i32 @memset(i64* %116, i32 0, i64 %121)
  br label %123

123:                                              ; preds = %114, %100
  %124 = load i8**, i8*** %18, align 8
  %125 = icmp eq i8** %124, null
  br i1 %125, label %126, label %141

126:                                              ; preds = %123
  %127 = load i32, i32* %16, align 4
  %128 = load i64, i64* %13, align 8
  %129 = call i32 @chunk_plus_offset(i32 %127, i64 %128)
  store i32 %129, i32* %19, align 4
  %130 = load i64, i64* %17, align 8
  %131 = load i64, i64* %13, align 8
  %132 = sub i64 %130, %131
  store i64 %132, i64* %23, align 8
  %133 = load i32, i32* %19, align 4
  %134 = call i8* @chunk2mem(i32 %133)
  %135 = bitcast i8* %134 to i8**
  store i8** %135, i8*** %18, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %19, align 4
  %138 = load i64, i64* %23, align 8
  %139 = call i32 @set_size_and_pinuse_of_inuse_chunk(i32 %136, i32 %137, i64 %138)
  %140 = load i64, i64* %13, align 8
  store i64 %140, i64* %17, align 8
  br label %141

141:                                              ; preds = %126, %123
  store i64 0, i64* %22, align 8
  br label %142

142:                                              ; preds = %180, %141
  %143 = load i32, i32* %16, align 4
  %144 = call i8* @chunk2mem(i32 %143)
  %145 = load i8**, i8*** %18, align 8
  %146 = load i64, i64* %22, align 8
  %147 = getelementptr inbounds i8*, i8** %145, i64 %146
  store i8* %144, i8** %147, align 8
  %148 = load i64, i64* %22, align 8
  %149 = load i64, i64* %8, align 8
  %150 = sub i64 %149, 1
  %151 = icmp ne i64 %148, %150
  br i1 %151, label %152, label %174

152:                                              ; preds = %142
  %153 = load i64, i64* %12, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i64, i64* %12, align 8
  store i64 %156, i64* %21, align 8
  br label %163

157:                                              ; preds = %152
  %158 = load i64*, i64** %9, align 8
  %159 = load i64, i64* %22, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @request2size(i64 %161)
  store i64 %162, i64* %21, align 8
  br label %163

163:                                              ; preds = %157, %155
  %164 = load i64, i64* %21, align 8
  %165 = load i64, i64* %17, align 8
  %166 = sub i64 %165, %164
  store i64 %166, i64* %17, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load i64, i64* %21, align 8
  %170 = call i32 @set_size_and_pinuse_of_inuse_chunk(i32 %167, i32 %168, i64 %169)
  %171 = load i32, i32* %16, align 4
  %172 = load i64, i64* %21, align 8
  %173 = call i32 @chunk_plus_offset(i32 %171, i64 %172)
  store i32 %173, i32* %16, align 4
  br label %179

174:                                              ; preds = %142
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load i64, i64* %17, align 8
  %178 = call i32 @set_size_and_pinuse_of_inuse_chunk(i32 %175, i32 %176, i64 %177)
  br label %183

179:                                              ; preds = %163
  br label %180

180:                                              ; preds = %179
  %181 = load i64, i64* %22, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %22, align 8
  br label %142

183:                                              ; preds = %174
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @POSTACTION(i32 %184)
  %186 = load i8**, i8*** %18, align 8
  store i8** %186, i8*** %6, align 8
  br label %187

187:                                              ; preds = %183, %99, %94, %37, %30
  %188 = load i8**, i8*** %6, align 8
  ret i8** %188
}

declare dso_local i32 @ensure_initialization(...) #1

declare dso_local i8* @internal_malloc(i32, i64) #1

declare dso_local i64 @request2size(i64) #1

declare dso_local i64 @use_mmap(i32) #1

declare dso_local i32 @disable_mmap(i32) #1

declare dso_local i32 @enable_mmap(i32) #1

declare dso_local i64 @PREACTION(i32) #1

declare dso_local i32 @mem2chunk(i8*) #1

declare dso_local i64 @chunksize(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_mmapped(i32) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @chunk_plus_offset(i32, i64) #1

declare dso_local i8* @chunk2mem(i32) #1

declare dso_local i32 @set_size_and_pinuse_of_inuse_chunk(i32, i32, i64) #1

declare dso_local i32 @POSTACTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
