; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fstyp/extr_msdosfs.c_fstyp_msdosfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fstyp/extr_msdosfs.c_fstyp_msdosfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"FAT\00", align 1
@LABEL_NO_NAME = common dso_local global i8* null, align 8
@FAT_DES_ATTR_LONG_NAME = common dso_local global i32 0, align 4
@FAT_DES_ATTR_VOLUME_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fstyp_msdosfs(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @read_buf(i32* %16, i32 0, i32 512)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %201

22:                                               ; preds = %3
  %23 = load i32*, i32** %11, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 510
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 85
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %11, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 511
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 170
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %22
  br label %196

33:                                               ; preds = %27
  %34 = load i32*, i32** %11, align 8
  %35 = bitcast i32* %34 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %8, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = bitcast i32* %36 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %9, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @UINT16BYTES(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %33
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @strncmp(i32* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %196

50:                                               ; preds = %43
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i8*, i8** @LABEL_NO_NAME, align 8
  %55 = call i64 @strncmp(i32* %53, i8* %54, i32 8)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %188

58:                                               ; preds = %50
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @MIN(i64 %63, i32 9)
  %65 = call i32 @strlcpy(i8* %59, i32* %62, i32 %64)
  br label %187

66:                                               ; preds = %33
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @UINT32BYTES(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %186

72:                                               ; preds = %66
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @strncmp(i32* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %196

79:                                               ; preds = %72
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i8*, i8** @LABEL_NO_NAME, align 8
  %84 = call i64 @strncmp(i32* %82, i8* %83, i32 8)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load i8*, i8** %6, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @MIN(i64 %91, i32 9)
  %93 = call i32 @strlcpy(i8* %87, i32* %90, i32 %92)
  br label %188

94:                                               ; preds = %79
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @UINT16BYTES(i32 %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @UINT32BYTES(i32 %104)
  %106 = mul nsw i32 %101, %105
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %98, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %13, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @UINT16BYTES(i32 %112)
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %13, align 4
  %117 = mul nsw i32 %115, %116
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %182, %94
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i64 @read_buf(i32* %119, i32 %120, i32 %121)
  %123 = inttoptr i64 %122 to i32*
  store i32* %123, i32** %12, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %196

127:                                              ; preds = %118
  %128 = load i32*, i32** %12, align 8
  %129 = bitcast i32* %128 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %129, %struct.TYPE_4__** %10, align 8
  br label %130

130:                                              ; preds = %170, %127
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %188

138:                                              ; preds = %130
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 229
  br i1 %144, label %153, label %145

145:                                              ; preds = %138
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @FAT_DES_ATTR_LONG_NAME, align 4
  %150 = and i32 %148, %149
  %151 = load i32, i32* @FAT_DES_ATTR_LONG_NAME, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %145, %138
  br label %170

154:                                              ; preds = %145
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @FAT_DES_ATTR_VOLUME_ID, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %154
  %162 = load i8*, i8** %6, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %7, align 8
  %167 = call i32 @MIN(i64 %166, i32 9)
  %168 = call i32 @strlcpy(i8* %162, i32* %165, i32 %167)
  br label %188

169:                                              ; preds = %154
  br label %170

170:                                              ; preds = %169, %153
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 1
  store %struct.TYPE_4__* %172, %struct.TYPE_4__** %10, align 8
  %173 = bitcast %struct.TYPE_4__* %172 to i32*
  %174 = load i32*, i32** %12, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = icmp ult i32* %173, %177
  br i1 %178, label %130, label %179

179:                                              ; preds = %170
  %180 = load i32*, i32** %12, align 8
  %181 = call i32 @free(i32* %180)
  br label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* %15, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %15, align 4
  br label %118

186:                                              ; preds = %66
  br label %196

187:                                              ; preds = %58
  br label %188

188:                                              ; preds = %187, %161, %137, %86, %57
  %189 = load i8*, i8** %6, align 8
  %190 = load i64, i64* %7, align 8
  %191 = call i32 @rtrim(i8* %189, i64 %190)
  %192 = load i32*, i32** %11, align 8
  %193 = call i32 @free(i32* %192)
  %194 = load i32*, i32** %12, align 8
  %195 = call i32 @free(i32* %194)
  store i32 0, i32* %4, align 4
  br label %201

196:                                              ; preds = %186, %126, %78, %49, %32
  %197 = load i32*, i32** %11, align 8
  %198 = call i32 @free(i32* %197)
  %199 = load i32*, i32** %12, align 8
  %200 = call i32 @free(i32* %199)
  store i32 1, i32* %4, align 4
  br label %201

201:                                              ; preds = %196, %188, %21
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i64 @read_buf(i32*, i32, i32) #1

declare dso_local i64 @UINT16BYTES(i32) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i32*, i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @UINT32BYTES(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @rtrim(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
