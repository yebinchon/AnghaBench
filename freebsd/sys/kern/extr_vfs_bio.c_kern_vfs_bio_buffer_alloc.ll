; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_kern_vfs_bio_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_kern_vfs_bio_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@nbuf = common dso_local global i32 0, align 4
@BKVASIZE = common dso_local global i32 0, align 4
@maxbcache = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Warning: nbufs lowered from %d to %ld\0A\00", align 1
@bio_transient_maxcnt = common dso_local global i32 0, align 4
@unmapped_buf_allowed = common dso_local global i64 0, align 8
@TRANSIENT_DENOM = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@MAXPHYS = common dso_local global i64 0, align 8
@nswbuf = common dso_local global i64 0, align 8
@NSWBUF_MIN = common dso_local global i64 0, align 8
@buf = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kern_vfs_bio_buffer_alloc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = sdiv i32 %12, 1024
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %11, %14
  store i64 %15, i64* %4, align 8
  %16 = call i32 (...) @maxbcachebuf_adjust()
  %17 = load i32, i32* @nbuf, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %73

19:                                               ; preds = %2
  %20 = load i32, i32* @BKVASIZE, align 4
  %21 = mul nsw i32 4, %20
  %22 = sdiv i32 %21, 1024
  store i32 %22, i32* %10, align 4
  store i32 50, i32* @nbuf, align 4
  %23 = load i64, i64* %4, align 8
  %24 = icmp sgt i64 %23, 4096
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load i64, i64* %4, align 8
  %27 = sub nsw i64 %26, 4096
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = sdiv i64 %27, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %10, align 4
  %33 = sdiv i32 65536, %32
  %34 = call i64 @min(i32 %31, i32 %33)
  %35 = load i32, i32* @nbuf, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* @nbuf, align 4
  br label %39

39:                                               ; preds = %25, %19
  %40 = load i64, i64* %4, align 8
  %41 = icmp sgt i64 %40, 65536
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load i64, i64* %4, align 8
  %44 = sub nsw i64 %43, 65536
  %45 = mul nsw i64 %44, 2
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %46, 5
  %48 = sext i32 %47 to i64
  %49 = sdiv i64 %45, %48
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 %51, 5
  %53 = sdiv i32 33554432, %52
  %54 = call i64 @min(i32 %50, i32 %53)
  %55 = load i32, i32* @nbuf, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* @nbuf, align 4
  br label %59

59:                                               ; preds = %42, %39
  %60 = load i32, i32* @maxbcache, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i32, i32* @nbuf, align 4
  %64 = load i32, i32* @maxbcache, align 4
  %65 = load i32, i32* @BKVASIZE, align 4
  %66 = sdiv i32 %64, %65
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @maxbcache, align 4
  %70 = load i32, i32* @BKVASIZE, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* @nbuf, align 4
  br label %72

72:                                               ; preds = %68, %62, %59
  store i32 1, i32* %5, align 4
  br label %74

73:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %72
  %75 = load i32, i32* @LONG_MAX, align 4
  %76 = sdiv i32 %75, 3
  %77 = load i32, i32* @BKVASIZE, align 4
  %78 = sdiv i32 %76, %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %6, align 8
  %80 = load i32, i32* @nbuf, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %6, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %74
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @nbuf, align 4
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %88, i64 %89)
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i64, i64* %6, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* @nbuf, align 4
  br label %94

94:                                               ; preds = %91, %74
  %95 = load i32, i32* @bio_transient_maxcnt, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %165

97:                                               ; preds = %94
  %98 = load i64, i64* @unmapped_buf_allowed, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %165

100:                                              ; preds = %97
  %101 = load i32, i32* @maxbcache, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @maxbcache, align 4
  %105 = sext i32 %104 to i64
  br label %111

106:                                              ; preds = %100
  %107 = load i64, i64* %6, align 8
  %108 = load i32, i32* @BKVASIZE, align 4
  %109 = sext i32 %108 to i64
  %110 = mul nsw i64 %107, %109
  br label %111

111:                                              ; preds = %106, %103
  %112 = phi i64 [ %105, %103 ], [ %110, %106 ]
  store i64 %112, i64* %7, align 8
  %113 = load i32, i32* @nbuf, align 4
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* @BKVASIZE, align 4
  %116 = sext i32 %115 to i64
  %117 = mul nsw i64 %114, %116
  store i64 %117, i64* %8, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* @TRANSIENT_DENOM, align 8
  %121 = sdiv i64 %119, %120
  %122 = load i64, i64* @TRANSIENT_DENOM, align 8
  %123 = sub nsw i64 %122, 1
  %124 = mul nsw i64 %121, %123
  %125 = icmp slt i64 %118, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %111
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* %8, align 8
  %129 = sub nsw i64 %127, %128
  store i64 %129, i64* %9, align 8
  br label %137

130:                                              ; preds = %111
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* @TRANSIENT_DENOM, align 8
  %133 = sdiv i64 %131, %132
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* %8, align 8
  %136 = sub nsw i64 %135, %134
  store i64 %136, i64* %8, align 8
  br label %137

137:                                              ; preds = %130, %126
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* @INT_MAX, align 8
  %140 = sdiv i64 %138, %139
  %141 = load i64, i64* @MAXPHYS, align 8
  %142 = icmp sgt i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i64, i64* @INT_MAX, align 8
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* @bio_transient_maxcnt, align 4
  br label %151

146:                                              ; preds = %137
  %147 = load i64, i64* %9, align 8
  %148 = load i64, i64* @MAXPHYS, align 8
  %149 = sdiv i64 %147, %148
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* @bio_transient_maxcnt, align 4
  br label %151

151:                                              ; preds = %146, %143
  %152 = load i32, i32* @bio_transient_maxcnt, align 4
  %153 = icmp sgt i32 %152, 1024
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 1024, i32* @bio_transient_maxcnt, align 4
  br label %155

155:                                              ; preds = %154, %151
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i64, i64* %8, align 8
  %160 = load i32, i32* @BKVASIZE, align 4
  %161 = sext i32 %160 to i64
  %162 = sdiv i64 %159, %161
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* @nbuf, align 4
  br label %164

164:                                              ; preds = %158, %155
  br label %165

165:                                              ; preds = %164, %97, %94
  %166 = load i64, i64* @nswbuf, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = load i32, i32* @nbuf, align 4
  %170 = sdiv i32 %169, 4
  %171 = call i64 @min(i32 %170, i32 256)
  store i64 %171, i64* @nswbuf, align 8
  %172 = load i64, i64* @nswbuf, align 8
  %173 = load i64, i64* @NSWBUF_MIN, align 8
  %174 = icmp slt i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = load i64, i64* @NSWBUF_MIN, align 8
  store i64 %176, i64* @nswbuf, align 8
  br label %177

177:                                              ; preds = %175, %168
  br label %178

178:                                              ; preds = %177, %165
  %179 = load i64, i64* %3, align 8
  %180 = inttoptr i64 %179 to i8*
  store i8* %180, i8** @buf, align 8
  %181 = load i8*, i8** @buf, align 8
  %182 = load i32, i32* @nbuf, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr i8, i8* %181, i64 %183
  %185 = ptrtoint i8* %184 to i64
  store i64 %185, i64* %3, align 8
  %186 = load i64, i64* %3, align 8
  ret i64 %186
}

declare dso_local i32 @maxbcachebuf_adjust(...) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
