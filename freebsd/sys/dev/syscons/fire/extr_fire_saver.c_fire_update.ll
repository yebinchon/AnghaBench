; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/fire/extr_fire_saver.c_fire_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/fire/extr_fire_saver.c_fire_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scrh = common dso_local global i32 0, align 4
@scrw = common dso_local global i32 0, align 4
@buf = common dso_local global i32* null, align 8
@bpsl = common dso_local global i32 0, align 4
@banksize = common dso_local global i32 0, align 4
@vid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @fire_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fire_update(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* @scrh, align 4
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @scrw, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = call i32 (...) @random()
  %15 = srem i32 %14, 160
  %16 = add nsw i32 %15, 96
  %17 = load i32*, i32** @buf, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @bpsl, align 4
  %21 = mul nsw i32 %19, %20
  %22 = add nsw i32 %18, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %17, i64 %23
  store i32 %16, i32* %24, align 4
  br label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %9

28:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %121, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @scrh, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %124

33:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %117, %33
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @scrw, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %120

38:                                               ; preds = %34
  %39 = load i32*, i32** @buf, align 8
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 0
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 0
  %44 = load i32, i32* @scrw, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %41, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %39, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @buf, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* @scrw, align 4
  %56 = mul nsw i32 %54, %55
  %57 = add nsw i32 %52, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %50, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %49, %60
  %62 = load i32*, i32** @buf, align 8
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 0
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* @scrw, align 4
  %68 = mul nsw i32 %66, %67
  %69 = add nsw i32 %64, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %62, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %61, %72
  %74 = load i32*, i32** @buf, align 8
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* @scrw, align 4
  %80 = mul nsw i32 %78, %79
  %81 = add nsw i32 %76, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %74, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %73, %84
  %86 = sdiv i32 %85, 4
  %87 = load i32*, i32** @buf, align 8
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @scrw, align 4
  %91 = mul nsw i32 %89, %90
  %92 = add nsw i32 %88, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %87, i64 %93
  store i32 %86, i32* %94, align 4
  %95 = load i32*, i32** @buf, align 8
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @scrw, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %96, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %95, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %38
  %106 = load i32*, i32** @buf, align 8
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @scrw, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %107, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %106, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %105, %38
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  br label %34

120:                                              ; preds = %34
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %29

124:                                              ; preds = %29
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %208, %124
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @scrh, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %214

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %134, %129
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @banksize, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load i32, i32* @banksize, align 4
  %136 = load i32, i32* %6, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* @banksize, align 4
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %5, align 4
  br label %130

141:                                              ; preds = %130
  %142 = load i32*, i32** %2, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @SET_ORIGIN(i32* %142, i32 %143)
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @scrw, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* @banksize, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %141
  %151 = load i32*, i32** @buf, align 8
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @scrw, align 4
  %154 = mul nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %151, i64 %155
  %157 = load i64, i64* @vid, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %157, %159
  %161 = load i32, i32* @scrw, align 4
  %162 = call i32 @bcopy(i32* %156, i64 %160, i32 %161)
  br label %207

163:                                              ; preds = %141
  %164 = load i32*, i32** @buf, align 8
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @scrw, align 4
  %167 = mul nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  %170 = load i64, i64* @vid, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %170, %172
  %174 = load i32, i32* @banksize, align 4
  %175 = load i32, i32* %6, align 4
  %176 = sub nsw i32 %174, %175
  %177 = call i32 @bcopy(i32* %169, i64 %173, i32 %176)
  %178 = load i32*, i32** %2, align 8
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @banksize, align 4
  %181 = add nsw i32 %179, %180
  %182 = call i32 @SET_ORIGIN(i32* %178, i32 %181)
  %183 = load i32*, i32** @buf, align 8
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @scrw, align 4
  %186 = mul nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %183, i64 %187
  %189 = load i32, i32* @banksize, align 4
  %190 = load i32, i32* %6, align 4
  %191 = sub nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  %194 = load i64, i64* @vid, align 8
  %195 = load i32, i32* @scrw, align 4
  %196 = load i32, i32* @banksize, align 4
  %197 = load i32, i32* %6, align 4
  %198 = sub nsw i32 %196, %197
  %199 = sub nsw i32 %195, %198
  %200 = call i32 @bcopy(i32* %193, i64 %194, i32 %199)
  %201 = load i32, i32* @banksize, align 4
  %202 = load i32, i32* %6, align 4
  %203 = sub nsw i32 %202, %201
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* @banksize, align 4
  %205 = load i32, i32* %5, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %5, align 4
  br label %207

207:                                              ; preds = %163, %150
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %4, align 4
  %211 = load i32, i32* @bpsl, align 4
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %6, align 4
  br label %125

214:                                              ; preds = %125
  ret void
}

declare dso_local i32 @random(...) #1

declare dso_local i32 @SET_ORIGIN(i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
