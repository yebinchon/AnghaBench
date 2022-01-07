; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_splash_pcx.c_pcx_draw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_splash_pcx.c_pcx_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@MAXSCANLINE = common dso_local global i32 0, align 4
@pcx_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @pcx_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcx_draw(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %22 = load i32, i32* @MAXSCANLINE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %19, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %20, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pcx_info, i32 0, i32 0), align 8
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %232

29:                                               ; preds = %1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pcx_info, i32 0, i32 5), align 8
  %32 = call i32 @vidd_load_palette(%struct.TYPE_8__* %30, i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %4, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %5, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %8, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %72, %29
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 %61, %62
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @vidd_set_win_org(%struct.TYPE_8__* %66, i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @bzero(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %59

76:                                               ; preds = %59
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pcx_info, i32 0, i32 1), align 4
  %79 = sub nsw i32 %77, %78
  %80 = sdiv i32 %79, 2
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pcx_info, i32 0, i32 2), align 8
  %83 = sub nsw i32 %81, %82
  %84 = sdiv i32 %83, 2
  store i32 %84, i32* %18, align 4
  store i32 0, i32* %11, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %94, %76
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %15, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %11, align 4
  br label %90

101:                                              ; preds = %90
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @vidd_set_win_org(%struct.TYPE_8__* %102, i32 %103)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %105

105:                                              ; preds = %223, %101
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pcx_info, i32 0, i32 2), align 8
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %231

109:                                              ; preds = %105
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %165, %109
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pcx_info, i32 0, i32 3), align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pcx_info, i32 0, i32 0), align 8
  %117 = icmp slt i32 %115, %116
  br label %118

118:                                              ; preds = %114, %110
  %119 = phi i1 [ false, %110 ], [ %117, %114 ]
  br i1 %119, label %120, label %168

120:                                              ; preds = %118
  %121 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pcx_info, i32 0, i32 4), align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 192
  %127 = icmp eq i32 %126, 192
  br i1 %127, label %128, label %141

128:                                              ; preds = %120
  %129 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pcx_info, i32 0, i32 4), align 8
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 63
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pcx_info, i32 0, i32 0), align 8
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  store i32 1, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %232

140:                                              ; preds = %128
  br label %142

141:                                              ; preds = %120
  store i32 1, i32* %12, align 4
  br label %142

142:                                              ; preds = %141, %140
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pcx_info, i32 0, i32 3), align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  store i32 1, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %232

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %154, %149
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %12, align 4
  %153 = icmp ne i32 %151, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %150
  %155 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pcx_info, i32 0, i32 4), align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %14, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %25, i64 %162
  store i32 %159, i32* %163, align 4
  br label %150

164:                                              ; preds = %150
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %13, align 4
  br label %110

168:                                              ; preds = %118
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %168
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %15, align 4
  %178 = sub nsw i32 %177, %176
  store i32 %178, i32* %15, align 4
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @vidd_set_win_org(%struct.TYPE_8__* %179, i32 %180)
  br label %182

182:                                              ; preds = %172, %168
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pcx_info, i32 0, i32 1), align 4
  %185 = add nsw i32 %183, %184
  %186 = load i32, i32* %10, align 4
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %188, label %215

188:                                              ; preds = %182
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %15, align 4
  %191 = sub nsw i32 %189, %190
  store i32 %191, i32* %14, align 4
  %192 = load i32*, i32** %4, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @bcopy(i32* %25, i32* %195, i32 %196)
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %15, align 4
  %203 = sub nsw i32 %202, %201
  store i32 %203, i32* %15, align 4
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %205 = load i32, i32* %11, align 4
  %206 = call i32 @vidd_set_win_org(%struct.TYPE_8__* %204, i32 %205)
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %25, i64 %208
  %210 = load i32*, i32** %4, align 8
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pcx_info, i32 0, i32 1), align 4
  %212 = load i32, i32* %14, align 4
  %213 = sub nsw i32 %211, %212
  %214 = call i32 @bcopy(i32* %209, i32* %210, i32 %213)
  br label %222

215:                                              ; preds = %182
  %216 = load i32*, i32** %4, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pcx_info, i32 0, i32 1), align 4
  %221 = call i32 @bcopy(i32* %25, i32* %219, i32 %220)
  br label %222

222:                                              ; preds = %215, %188
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %16, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %16, align 4
  %226 = load i32, i32* %18, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %18, align 4
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %15, align 4
  br label %105

231:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %232

232:                                              ; preds = %231, %148, %139, %28
  %233 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %233)
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vidd_load_palette(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @vidd_set_win_org(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
