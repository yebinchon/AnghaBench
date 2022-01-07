; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_bmap_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_bmap_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udf_node = type { i32, %struct.file_entry*, %struct.udf_mnt* }
%struct.file_entry = type { i32, i32, %struct.icb_tag }
%struct.icb_tag = type { i32, i32 }
%struct.udf_mnt = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.short_ad = type { i32 }
%struct.long_ad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Cannot deal with strategy4096 yet!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown strategy type %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"File offset out of bounds\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@short_ad = common dso_local global i32 0, align 4
@long_ad = common dso_local global i32 0, align 4
@UDF_INVALID_BMAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Unsupported allocation descriptor %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udf_node*, i32, i32*, i32*)* @udf_bmap_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_bmap_internal(%struct.udf_node* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.udf_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.udf_mnt*, align 8
  %11 = alloca %struct.file_entry*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.icb_tag*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.udf_node* %0, %struct.udf_node** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.udf_node*, %struct.udf_node** %6, align 8
  %21 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %20, i32 0, i32 2
  %22 = load %struct.udf_mnt*, %struct.udf_mnt** %21, align 8
  store %struct.udf_mnt* %22, %struct.udf_mnt** %10, align 8
  %23 = load %struct.udf_node*, %struct.udf_node** %6, align 8
  %24 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %23, i32 0, i32 1
  %25 = load %struct.file_entry*, %struct.file_entry** %24, align 8
  store %struct.file_entry* %25, %struct.file_entry** %11, align 8
  %26 = load %struct.file_entry*, %struct.file_entry** %11, align 8
  %27 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %26, i32 0, i32 2
  store %struct.icb_tag* %27, %struct.icb_tag** %13, align 8
  %28 = load %struct.icb_tag*, %struct.icb_tag** %13, align 8
  %29 = getelementptr inbounds %struct.icb_tag, %struct.icb_tag* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16toh(i32 %30)
  switch i32 %31, label %36 [
    i32 4, label %32
    i32 4096, label %33
  ]

32:                                               ; preds = %4
  br label %42

33:                                               ; preds = %4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  store i32 %35, i32* %5, align 4
  br label %235

36:                                               ; preds = %4
  %37 = load %struct.icb_tag*, %struct.icb_tag** %13, align 8
  %38 = getelementptr inbounds %struct.icb_tag, %struct.icb_tag* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENODEV, align 4
  store i32 %41, i32* %5, align 4
  br label %235

42:                                               ; preds = %32
  %43 = load %struct.icb_tag*, %struct.icb_tag** %13, align 8
  %44 = getelementptr inbounds %struct.icb_tag, %struct.icb_tag* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16toh(i32 %45)
  %47 = and i32 %46, 7
  switch i32 %47, label %167 [
    i32 0, label %48
    i32 1, label %101
    i32 3, label %155
    i32 2, label %166
  ]

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %81, %48
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.file_entry*, %struct.file_entry** %11, align 8
  %59 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32toh(i32 %60)
  %62 = icmp sgt i32 %57, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %5, align 4
  br label %235

66:                                               ; preds = %49
  %67 = load i32, i32* @short_ad, align 4
  %68 = load %struct.file_entry*, %struct.file_entry** %11, align 8
  %69 = load %struct.file_entry*, %struct.file_entry** %11, align 8
  %70 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32toh(i32 %71)
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %72, %73
  %75 = call i8* @GETICB(i32 %67, %struct.file_entry* %68, i32 %74)
  store i8* %75, i8** %12, align 8
  %76 = load i32, i32* @short_ad, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @GETICBLEN(i32 %76, i8* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %17, align 4
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %49, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.udf_mnt*, %struct.udf_mnt** %10, align 8
  %88 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %86, %89
  %91 = load i8*, i8** %12, align 8
  %92 = bitcast i8* %91 to %struct.short_ad*
  %93 = getelementptr inbounds %struct.short_ad, %struct.short_ad* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32toh(i32 %94)
  %96 = add nsw i32 %90, %95
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %7, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load i32*, i32** %9, align 8
  store i32 %99, i32* %100, align 4
  br label %174

101:                                              ; preds = %42
  br label %102

102:                                              ; preds = %134, %101
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 4, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load %struct.file_entry*, %struct.file_entry** %11, align 8
  %112 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le32toh(i32 %113)
  %115 = icmp sgt i32 %110, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %102
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  store i32 %118, i32* %5, align 4
  br label %235

119:                                              ; preds = %102
  %120 = load i32, i32* @long_ad, align 4
  %121 = load %struct.file_entry*, %struct.file_entry** %11, align 8
  %122 = load %struct.file_entry*, %struct.file_entry** %11, align 8
  %123 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le32toh(i32 %124)
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %125, %126
  %128 = call i8* @GETICB(i32 %120, %struct.file_entry* %121, i32 %127)
  store i8* %128, i8** %12, align 8
  %129 = load i32, i32* @long_ad, align 4
  %130 = load i8*, i8** %12, align 8
  %131 = call i32 @GETICBLEN(i32 %129, i8* %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %17, align 4
  br label %134

134:                                              ; preds = %119
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %102, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.udf_mnt*, %struct.udf_mnt** %10, align 8
  %141 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = ashr i32 %139, %142
  %144 = load i8*, i8** %12, align 8
  %145 = bitcast i8* %144 to %struct.long_ad*
  %146 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @le32toh(i32 %148)
  %150 = add nsw i32 %143, %149
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %7, align 4
  %153 = sub nsw i32 %151, %152
  %154 = load i32*, i32** %9, align 8
  store i32 %153, i32* %154, align 4
  br label %174

155:                                              ; preds = %42
  %156 = load i32*, i32** %9, align 8
  store i32 0, i32* %156, align 4
  %157 = load %struct.udf_node*, %struct.udf_node** %6, align 8
  %158 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.udf_mnt*, %struct.udf_mnt** %10, align 8
  %161 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %159, %162
  %164 = load i32*, i32** %8, align 8
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* @UDF_INVALID_BMAP, align 4
  store i32 %165, i32* %5, align 4
  br label %235

166:                                              ; preds = %42
  br label %167

167:                                              ; preds = %42, %166
  %168 = load %struct.icb_tag*, %struct.icb_tag** %13, align 8
  %169 = getelementptr inbounds %struct.icb_tag, %struct.icb_tag* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 7
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @ENODEV, align 4
  store i32 %173, i32* %5, align 4
  br label %235

174:                                              ; preds = %138, %85
  %175 = load i32, i32* %15, align 4
  %176 = load %struct.udf_mnt*, %struct.udf_mnt** %10, align 8
  %177 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %175, %178
  %180 = load i32*, i32** %8, align 8
  store i32 %179, i32* %180, align 4
  %181 = load %struct.udf_mnt*, %struct.udf_mnt** %10, align 8
  %182 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %181, i32 0, i32 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = icmp ne %struct.TYPE_6__* %183, null
  br i1 %184, label %185, label %234

185:                                              ; preds = %174
  store i32 0, i32* %18, align 4
  br label %186

186:                                              ; preds = %230, %185
  %187 = load i32, i32* %18, align 4
  %188 = load %struct.udf_mnt*, %struct.udf_mnt** %10, align 8
  %189 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %233

192:                                              ; preds = %186
  %193 = load i32, i32* %15, align 4
  %194 = load %struct.udf_mnt*, %struct.udf_mnt** %10, align 8
  %195 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %194, i32 0, i32 4
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @le32toh(i32 %203)
  %205 = sub nsw i32 %193, %204
  store i32 %205, i32* %19, align 4
  %206 = load i32, i32* %19, align 4
  %207 = load %struct.udf_mnt*, %struct.udf_mnt** %10, align 8
  %208 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %229

211:                                              ; preds = %192
  %212 = load i32, i32* %19, align 4
  %213 = icmp sge i32 %212, 0
  br i1 %213, label %214, label %229

214:                                              ; preds = %211
  %215 = load %struct.udf_mnt*, %struct.udf_mnt** %10, align 8
  %216 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %215, i32 0, i32 4
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = load i32, i32* %18, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @le32toh(i32 %224)
  %226 = load i32, i32* %19, align 4
  %227 = add nsw i32 %225, %226
  %228 = load i32*, i32** %8, align 8
  store i32 %227, i32* %228, align 4
  br label %233

229:                                              ; preds = %211, %192
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %18, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %18, align 4
  br label %186

233:                                              ; preds = %214, %186
  br label %234

234:                                              ; preds = %233, %174
  store i32 0, i32* %5, align 4
  br label %235

235:                                              ; preds = %234, %167, %155, %116, %63, %36, %33
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i8* @GETICB(i32, %struct.file_entry*, i32) #1

declare dso_local i32 @GETICBLEN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
