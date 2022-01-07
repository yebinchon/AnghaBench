; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_hexdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @hexdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hexdump(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  store i32* %10, i32** %5, align 8
  br label %11

11:                                               ; preds = %177, %2
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = icmp ult i32* %12, %16
  br i1 %17, label %18, label %180

18:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %20
  store i8 32, i8* %21, align 1
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = ptrtoint i32* %27 to i64
  %30 = ptrtoint i32* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 4
  %33 = ashr i64 %32, 8
  %34 = and i64 %33, 255
  %35 = trunc i64 %34 to i32
  %36 = call i32 @hexbyte(i8* %26, i32 %35)
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = ptrtoint i32* %42 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = and i64 %47, 255
  %49 = trunc i64 %48 to i32
  %50 = call i32 @hexbyte(i8* %41, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 5
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %53
  store i8 32, i8* %54, align 1
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 6
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %57
  store i8 32, i8* %58, align 1
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 7
  store i32 %60, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %111, %18
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 16
  br i1 %63, label %64, label %114

64:                                               ; preds = %61
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = icmp ult i32* %68, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %64
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @hexbyte(i8* %78, i32 %83)
  br label %93

85:                                               ; preds = %64
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %87
  store i8 45, i8* %88, align 1
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %91
  store i8 45, i8* %92, align 1
  br label %93

93:                                               ; preds = %85, %74
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %96
  store i8 32, i8* %97, align 1
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %98, 7
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 3
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %103
  store i8 32, i8* %104, align 1
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 4
  store i32 %106, i32* %7, align 4
  br label %110

107:                                              ; preds = %93
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 3
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %107, %100
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %61

114:                                              ; preds = %61
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %116
  store i8 32, i8* %117, align 1
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %120
  store i8 124, i8* %121, align 1
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 2
  store i32 %123, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %162, %114
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 16
  br i1 %126, label %127, label %165

127:                                              ; preds = %124
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32*, i32** %3, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = icmp ult i32* %131, %135
  br i1 %136, label %137, label %155

137:                                              ; preds = %127
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %143, 32
  br i1 %144, label %148, label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %9, align 4
  %147 = icmp sgt i32 %146, 126
  br i1 %147, label %148, label %149

148:                                              ; preds = %145, %137
  store i32 46, i32* %9, align 4
  br label %149

149:                                              ; preds = %148, %145
  %150 = load i32, i32* %9, align 4
  %151 = trunc i32 %150 to i8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %153
  store i8 %151, i8* %154, align 1
  br label %159

155:                                              ; preds = %127
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %157
  store i8 32, i8* %158, align 1
  br label %159

159:                                              ; preds = %155, %149
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %124

165:                                              ; preds = %124
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %167
  store i8 124, i8* %168, align 1
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %171
  store i8 0, i8* %172, align 1
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 2
  store i32 %174, i32* %7, align 4
  %175 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %176 = call i32 @puts(i8* %175)
  br label %177

177:                                              ; preds = %165
  %178 = load i32*, i32** %5, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 16
  store i32* %179, i32** %5, align 8
  br label %11

180:                                              ; preds = %11
  ret void
}

declare dso_local i32 @hexbyte(i8*, i32) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
