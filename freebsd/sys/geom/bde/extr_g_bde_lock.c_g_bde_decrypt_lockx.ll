; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_lock.c_g_bde_decrypt_lockx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_lock.c_g_bde_decrypt_lockx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_softc = type { i64, i32, %struct.g_bde_key }
%struct.g_bde_key = type { i64*, i64* }

@G_BDE_LOCKSIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@DIR_DECRYPT = common dso_local global i32 0, align 4
@EDOOFUS = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@G_BDE_MAXKEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_bde_softc*, i64*, i64, i64, i64*)* @g_bde_decrypt_lockx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_bde_decrypt_lockx(%struct.g_bde_softc* %0, i64* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.g_bde_softc*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.g_bde_key*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.g_bde_softc* %0, %struct.g_bde_softc** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %22 = load %struct.g_bde_softc*, %struct.g_bde_softc** %7, align 8
  %23 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %22, i32 0, i32 2
  store %struct.g_bde_key* %23, %struct.g_bde_key** %14, align 8
  %24 = load %struct.g_bde_softc*, %struct.g_bde_softc** %7, align 8
  %25 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %8, align 8
  %28 = call i32 @g_bde_keyloc_decrypt(i64 %26, i64* %27, i64* %15)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %6, align 4
  br label %212

33:                                               ; preds = %5
  %34 = load i64, i64* %15, align 8
  %35 = load i64, i64* @G_BDE_LOCKSIZE, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* %9, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  store i64 0, i64* %15, align 8
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %6, align 4
  br label %212

41:                                               ; preds = %33
  store i32 1, i32* %18, align 4
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %10, align 8
  %44 = srem i64 %42, %43
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @G_BDE_LOCKSIZE, align 8
  %47 = sub nsw i64 %45, %46
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %18, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %18, align 4
  br label %52

52:                                               ; preds = %49, %41
  %53 = load %struct.g_bde_softc*, %struct.g_bde_softc** %7, align 8
  %54 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %10, align 8
  %59 = srem i64 %57, %58
  %60 = sub nsw i64 %56, %59
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %10, align 8
  %64 = mul nsw i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = call i64* @g_read_data(i32 %55, i64 %60, i32 %65, i32* %17)
  store i64* %66, i64** %12, align 8
  %67 = load i64*, i64** %12, align 8
  %68 = icmp eq i64* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %52
  store i64 0, i64* %15, align 8
  %70 = load i32, i32* %17, align 4
  store i32 %70, i32* %6, align 4
  br label %212

71:                                               ; preds = %52
  %72 = load i64*, i64** %12, align 8
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* %10, align 8
  %75 = srem i64 %73, %74
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  store i64* %76, i64** %13, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %19, align 4
  br label %77

77:                                               ; preds = %90, %71
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @G_BDE_LOCKSIZE, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load i64*, i64** %13, align 8
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %16, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* %16, align 8
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %77

93:                                               ; preds = %77
  %94 = load i64, i64* %16, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  store i64 0, i64* %15, align 8
  %97 = load i64*, i64** %12, align 8
  %98 = call i32 @g_free(i64* %97)
  %99 = load i32, i32* @ESRCH, align 4
  store i32 %99, i32* %6, align 4
  br label %212

100:                                              ; preds = %93
  %101 = call i32 @AES_init(i32* %21)
  %102 = load i32, i32* @DIR_DECRYPT, align 4
  %103 = load %struct.g_bde_softc*, %struct.g_bde_softc** %7, align 8
  %104 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 16
  %107 = call i32 @AES_makekey(i32* %20, i32 %102, i32 256, i64 %106)
  %108 = load i64*, i64** %13, align 8
  %109 = load i64*, i64** %13, align 8
  %110 = load i64, i64* @G_BDE_LOCKSIZE, align 8
  %111 = call i32 @AES_decrypt(i32* %21, i32* %20, i64* %108, i64* %109, i64 %110)
  %112 = load %struct.g_bde_softc*, %struct.g_bde_softc** %7, align 8
  %113 = load %struct.g_bde_key*, %struct.g_bde_key** %14, align 8
  %114 = load i64*, i64** %13, align 8
  %115 = call i32 @g_bde_decode_lock(%struct.g_bde_softc* %112, %struct.g_bde_key* %113, i64* %114)
  store i32 %115, i32* %19, align 4
  store i64* null, i64** %13, align 8
  %116 = load i32, i32* %19, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %100
  store i64 0, i64* %15, align 8
  %119 = load i32, i32* @EDOOFUS, align 4
  store i32 %119, i32* %6, align 4
  br label %212

120:                                              ; preds = %100
  %121 = load i32, i32* %19, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  store i64 0, i64* %15, align 8
  %124 = load i32, i32* @ENOTDIR, align 4
  store i32 %124, i32* %6, align 4
  br label %212

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125
  %127 = load i64*, i64** %12, align 8
  %128 = load i64, i64* %10, align 8
  %129 = load i32, i32* %18, align 4
  %130 = sext i32 %129 to i64
  %131 = mul nsw i64 %128, %130
  %132 = call i32 @bzero(i64* %127, i64 %131)
  %133 = load i64*, i64** %12, align 8
  %134 = call i32 @g_free(i64* %133)
  store i64 0, i64* %16, align 8
  store i32 0, i32* %19, align 4
  br label %135

135:                                              ; preds = %148, %126
  %136 = load i32, i32* %19, align 4
  %137 = icmp slt i32 %136, 8
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = load %struct.g_bde_key*, %struct.g_bde_key** %14, align 8
  %140 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %16, align 8
  %147 = add nsw i64 %146, %145
  store i64 %147, i64* %16, align 8
  br label %148

148:                                              ; preds = %138
  %149 = load i32, i32* %19, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %19, align 4
  br label %135

151:                                              ; preds = %135
  %152 = load i64, i64* %16, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* @ENOENT, align 4
  store i32 %155, i32* %6, align 4
  br label %212

156:                                              ; preds = %151
  store i32 0, i32* %19, align 4
  br label %157

157:                                              ; preds = %182, %156
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* @G_BDE_MAXKEYS, align 4
  %160 = sub nsw i32 %159, 1
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %185

162:                                              ; preds = %157
  %163 = load %struct.g_bde_key*, %struct.g_bde_key** %14, align 8
  %164 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %163, i32 0, i32 1
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.g_bde_key*, %struct.g_bde_key** %14, align 8
  %171 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %170, i32 0, i32 1
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %19, align 4
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %172, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = icmp sge i64 %169, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %162
  %180 = load i32, i32* @EINVAL, align 4
  store i32 %180, i32* %6, align 4
  br label %212

181:                                              ; preds = %162
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %19, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %19, align 4
  br label %157

185:                                              ; preds = %157
  store i32 0, i32* %19, align 4
  br label %186

186:                                              ; preds = %208, %185
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* @G_BDE_MAXKEYS, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %211

190:                                              ; preds = %186
  %191 = load i64*, i64** %11, align 8
  %192 = icmp ne i64* %191, null
  br i1 %192, label %193, label %207

193:                                              ; preds = %190
  %194 = load i64, i64* %15, align 8
  %195 = load %struct.g_bde_key*, %struct.g_bde_key** %14, align 8
  %196 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* %19, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %194, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %193
  %204 = load i32, i32* %19, align 4
  %205 = sext i32 %204 to i64
  %206 = load i64*, i64** %11, align 8
  store i64 %205, i64* %206, align 8
  br label %207

207:                                              ; preds = %203, %193, %190
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %19, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %19, align 4
  br label %186

211:                                              ; preds = %186
  store i64 0, i64* %15, align 8
  store i32 0, i32* %6, align 4
  br label %212

212:                                              ; preds = %211, %179, %154, %123, %118, %96, %69, %39, %31
  %213 = load i32, i32* %6, align 4
  ret i32 %213
}

declare dso_local i32 @g_bde_keyloc_decrypt(i64, i64*, i64*) #1

declare dso_local i64* @g_read_data(i32, i64, i32, i32*) #1

declare dso_local i32 @g_free(i64*) #1

declare dso_local i32 @AES_init(i32*) #1

declare dso_local i32 @AES_makekey(i32*, i32, i32, i64) #1

declare dso_local i32 @AES_decrypt(i32*, i32*, i64*, i64*, i64) #1

declare dso_local i32 @g_bde_decode_lock(%struct.g_bde_softc*, %struct.g_bde_key*, i64*) #1

declare dso_local i32 @bzero(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
