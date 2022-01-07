; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_copyin_mapped.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_image.c_image_copyin_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_END = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@secsz = common dso_local global i64 0, align 8
@image_swap_pgsz = common dso_local global i64 0, align 8
@SEEK_HOLE = common dso_local global i32 0, align 4
@SEEK_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64*)* @image_copyin_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @image_copyin_mapped(i64 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SEEK_END, align 4
  %22 = call i64 @lseek(i32 %20, i64 0, i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i64*, i64** %7, align 8
  %29 = call i32 @image_copyin_stream(i64 %26, i32 %27, i64* %28)
  store i32 %29, i32* %4, align 4
  br label %200

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dup(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %4, align 4
  br label %200

37:                                               ; preds = %30
  %38 = load i64, i64* @secsz, align 8
  %39 = load i64, i64* @image_swap_pgsz, align 8
  %40 = mul nsw i64 %38, %39
  store i64 %40, i64* %17, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %19, align 4
  br label %41

41:                                               ; preds = %182, %37
  %42 = load i32, i32* %19, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp slt i64 %45, %46
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %50, label %183

50:                                               ; preds = %48
  %51 = load i32, i32* %6, align 4
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* @SEEK_HOLE, align 4
  %54 = call i64 @lseek(i32 %51, i64 %52, i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp eq i64 %55, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %57, %50
  %60 = load i32, i32* %6, align 4
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* @SEEK_DATA, align 4
  %63 = call i64 @lseek(i32 %60, i64 %61, i32 %62)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp eq i64 %64, -1
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i64, i64* %10, align 8
  store i64 %67, i64* %9, align 8
  br label %68

68:                                               ; preds = %66, %59
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* %8, align 8
  store i64 %77, i64* %9, align 8
  br label %78

78:                                               ; preds = %76, %72, %68
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @secsz, align 8
  %90 = sub nsw i64 %89, 1
  %91 = xor i64 %90, -1
  %92 = and i64 %88, %91
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %11, align 8
  %95 = sub nsw i64 %93, %94
  %96 = load i64, i64* @secsz, align 8
  %97 = sdiv i64 %95, %96
  %98 = load i64, i64* %5, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @image_chunk_skipto(i64 %100)
  store i32 %101, i32* %19, align 4
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* %11, align 8
  %104 = sub nsw i64 %102, %103
  %105 = load i64, i64* %16, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* %16, align 8
  %107 = load i64, i64* %9, align 8
  store i64 %107, i64* %8, align 8
  br label %182

108:                                              ; preds = %82, %78
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %179

112:                                              ; preds = %108
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %9, align 8
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %179

116:                                              ; preds = %112
  %117 = load i64, i64* %12, align 8
  store i64 %117, i64* %9, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* @secsz, align 8
  %120 = add nsw i64 %118, %119
  %121 = sub nsw i64 %120, 1
  %122 = load i64, i64* @secsz, align 8
  %123 = sub nsw i64 %122, 1
  %124 = xor i64 %123, -1
  %125 = and i64 %121, %124
  store i64 %125, i64* %12, align 8
  br label %126

126:                                              ; preds = %165, %116
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* %12, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %177

130:                                              ; preds = %126
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* %9, align 8
  %133 = sub nsw i64 %131, %132
  %134 = load i64, i64* %17, align 8
  %135 = icmp sgt i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i64, i64* %17, align 8
  br label %142

138:                                              ; preds = %130
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* %9, align 8
  %141 = sub nsw i64 %139, %140
  br label %142

142:                                              ; preds = %138, %136
  %143 = phi i64 [ %137, %136 ], [ %141, %138 ]
  store i64 %143, i64* %18, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i64, i64* %9, align 8
  %146 = load i64, i64* %18, align 8
  %147 = call i8* @image_file_map(i32 %144, i64 %145, i64 %146, i64* %13)
  store i8* %147, i8** %14, align 8
  store i8* %147, i8** %15, align 8
  %148 = load i8*, i8** %14, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %163

150:                                              ; preds = %142
  %151 = load i64, i64* %13, align 8
  %152 = load i8*, i8** %15, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 %151
  store i8* %153, i8** %15, align 8
  %154 = load i64, i64* %5, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = load i64, i64* %18, align 8
  %157 = load i64, i64* %9, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @image_chunk_copyin(i64 %154, i8* %155, i64 %156, i64 %157, i32 %158)
  store i32 %159, i32* %19, align 4
  %160 = load i8*, i8** %14, align 8
  %161 = load i64, i64* %18, align 8
  %162 = call i32 @image_file_unmap(i8* %160, i64 %161)
  br label %165

163:                                              ; preds = %142
  %164 = load i32, i32* @errno, align 4
  store i32 %164, i32* %19, align 4
  br label %165

165:                                              ; preds = %163, %150
  %166 = load i64, i64* %18, align 8
  %167 = load i64, i64* @secsz, align 8
  %168 = udiv i64 %166, %167
  %169 = load i64, i64* %5, align 8
  %170 = add i64 %169, %168
  store i64 %170, i64* %5, align 8
  %171 = load i64, i64* %18, align 8
  %172 = load i64, i64* %16, align 8
  %173 = add i64 %172, %171
  store i64 %173, i64* %16, align 8
  %174 = load i64, i64* %18, align 8
  %175 = load i64, i64* %9, align 8
  %176 = add i64 %175, %174
  store i64 %176, i64* %9, align 8
  br label %126

177:                                              ; preds = %126
  %178 = load i64, i64* %11, align 8
  store i64 %178, i64* %8, align 8
  br label %181

179:                                              ; preds = %112, %108
  %180 = call i32 @assert(i32 0)
  br label %181

181:                                              ; preds = %179, %177
  br label %182

182:                                              ; preds = %181, %86
  br label %41

183:                                              ; preds = %48
  %184 = load i32, i32* %19, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @close(i32 %187)
  br label %189

189:                                              ; preds = %186, %183
  %190 = load i32, i32* %19, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %189
  %193 = load i64*, i64** %7, align 8
  %194 = icmp ne i64* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i64, i64* %16, align 8
  %197 = load i64*, i64** %7, align 8
  store i64 %196, i64* %197, align 8
  br label %198

198:                                              ; preds = %195, %192, %189
  %199 = load i32, i32* %19, align 4
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %198, %35, %25
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @image_copyin_stream(i64, i32, i64*) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @image_chunk_skipto(i64) #1

declare dso_local i8* @image_file_map(i32, i64, i64, i64*) #1

declare dso_local i32 @image_chunk_copyin(i64, i8*, i64, i64, i32) #1

declare dso_local i32 @image_file_unmap(i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
