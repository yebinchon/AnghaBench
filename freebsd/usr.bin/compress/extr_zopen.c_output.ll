; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_zopen.c_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_zopen.c_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_zstate = type { i32 }

@offset = common dso_local global i32 0, align 4
@n_bits = common dso_local global i32 0, align 4
@buf = common dso_local global i32* null, align 8
@rmask = common dso_local global i32* null, align 8
@lmask = common dso_local global i32* null, align 8
@bytes_out = common dso_local global i32 0, align 4
@fp = common dso_local global i32 0, align 4
@free_ent = common dso_local global i64 0, align 8
@maxcode = common dso_local global i64 0, align 8
@clear_flg = common dso_local global i64 0, align 8
@INIT_BITS = common dso_local global i32 0, align 4
@maxbits = common dso_local global i32 0, align 4
@maxmaxcode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_zstate*, i32)* @output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output(%struct.s_zstate* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s_zstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.s_zstate* %0, %struct.s_zstate** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @offset, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @n_bits, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** @buf, align 8
  store i32* %11, i32** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %135

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 3
  %17 = load i32*, i32** %8, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32* %19, i32** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 7
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @rmask, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %23, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 %30, %31
  %33 = load i32*, i32** @lmask, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %32, %37
  %39 = or i32 %29, %38
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 8, %43
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 8, %47
  %49 = load i32, i32* %5, align 4
  %50 = ashr i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp sge i32 %51, 8
  br i1 %52, label %53, label %61

53:                                               ; preds = %14
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = ashr i32 %57, 8
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %59, 8
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %53, %14
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* @n_bits, align 4
  %69 = load i32, i32* @offset, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* @offset, align 4
  %71 = load i32, i32* @offset, align 4
  %72 = load i32, i32* @n_bits, align 4
  %73 = shl i32 %72, 3
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %67
  %76 = load i32*, i32** @buf, align 8
  store i32* %76, i32** %8, align 8
  %77 = load i32, i32* @n_bits, align 4
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @bytes_out, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* @bytes_out, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @fp, align 4
  %84 = call i32 @fwrite(i32* %81, i32 1, i32 %82, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  store i32 -1, i32* %3, align 4
  br label %155

88:                                               ; preds = %75
  %89 = load i32, i32* %7, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %8, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* @offset, align 4
  br label %93

93:                                               ; preds = %88, %67
  %94 = load i64, i64* @free_ent, align 8
  %95 = load i64, i64* @maxcode, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* @clear_flg, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %134

100:                                              ; preds = %97, %93
  %101 = load i32, i32* @offset, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load i32*, i32** @buf, align 8
  %105 = load i32, i32* @n_bits, align 4
  %106 = load i32, i32* @fp, align 4
  %107 = call i32 @fwrite(i32* %104, i32 1, i32 %105, i32 %106)
  %108 = load i32, i32* @n_bits, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 -1, i32* %3, align 4
  br label %155

111:                                              ; preds = %103
  %112 = load i32, i32* @n_bits, align 4
  %113 = load i32, i32* @bytes_out, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* @bytes_out, align 4
  br label %115

115:                                              ; preds = %111, %100
  store i32 0, i32* @offset, align 4
  %116 = load i64, i64* @clear_flg, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @INIT_BITS, align 4
  store i32 %119, i32* @n_bits, align 4
  %120 = call i64 @MAXCODE(i32 %119)
  store i64 %120, i64* @maxcode, align 8
  store i64 0, i64* @clear_flg, align 8
  br label %133

121:                                              ; preds = %115
  %122 = load i32, i32* @n_bits, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* @n_bits, align 4
  %124 = load i32, i32* @n_bits, align 4
  %125 = load i32, i32* @maxbits, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i64, i64* @maxmaxcode, align 8
  store i64 %128, i64* @maxcode, align 8
  br label %132

129:                                              ; preds = %121
  %130 = load i32, i32* @n_bits, align 4
  %131 = call i64 @MAXCODE(i32 %130)
  store i64 %131, i64* @maxcode, align 8
  br label %132

132:                                              ; preds = %129, %127
  br label %133

133:                                              ; preds = %132, %118
  br label %134

134:                                              ; preds = %133, %97
  br label %154

135:                                              ; preds = %2
  %136 = load i32, i32* @offset, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %135
  %139 = load i32, i32* @offset, align 4
  %140 = add nsw i32 %139, 7
  %141 = sdiv i32 %140, 8
  store i32 %141, i32* @offset, align 4
  %142 = load i32*, i32** @buf, align 8
  %143 = load i32, i32* @offset, align 4
  %144 = load i32, i32* @fp, align 4
  %145 = call i32 @fwrite(i32* %142, i32 1, i32 %143, i32 %144)
  %146 = load i32, i32* @offset, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  store i32 -1, i32* %3, align 4
  br label %155

149:                                              ; preds = %138
  %150 = load i32, i32* @offset, align 4
  %151 = load i32, i32* @bytes_out, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* @bytes_out, align 4
  br label %153

153:                                              ; preds = %149, %135
  store i32 0, i32* @offset, align 4
  br label %154

154:                                              ; preds = %153, %134
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %154, %148, %110, %87
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @fwrite(i32*, i32, i32, i32) #1

declare dso_local i64 @MAXCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
