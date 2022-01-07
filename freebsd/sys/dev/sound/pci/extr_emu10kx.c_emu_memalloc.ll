; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_memalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_memalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_mem = type { i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.emu_memblk = type { i32, i32, i32, i8*, i8*, i32 }

@EMUPAGESIZE = common dso_local global i32 0, align 4
@EMU_MAX_BUFSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"emu_memalloc: memory request tool large\0A\00", align 1
@EMU_MAXPAGES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"emu_memalloc: no free space in bitmap\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"emu_memalloc: buffer allocation failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"emu_memalloc: can't setup HW memory\0A\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.emu_mem*, i32, i32*, i8*)* @emu_memalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @emu_memalloc(%struct.emu_mem* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.emu_mem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.emu_memblk*, align 8
  %17 = alloca i8*, align 8
  store %struct.emu_mem* %0, %struct.emu_mem** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @EMUPAGESIZE, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @EMUPAGESIZE, align 4
  %24 = mul nsw i32 %22, %23
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %26, %4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @EMU_MAX_BUFSZ, align 4
  %32 = load i32, i32* @EMUPAGESIZE, align 4
  %33 = sdiv i32 %31, %32
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %37 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %44 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %42, %35
  store i8* null, i8** %5, align 8
  br label %236

50:                                               ; preds = %29
  store i32 0, i32* %15, align 4
  store i32 1, i32* %11, align 4
  br label %51

51:                                               ; preds = %95, %50
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* @EMU_MAXPAGES, align 4
  %59 = icmp slt i32 %57, %58
  br label %60

60:                                               ; preds = %54, %51
  %61 = phi i1 [ false, %51 ], [ %59, %54 ]
  br i1 %61, label %62, label %96

62:                                               ; preds = %60
  store i32 1, i32* %15, align 4
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %86, %62
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %66, %67
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %72 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = ashr i32 %74, 3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, 7
  %81 = shl i32 1, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %84, %70
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %64

89:                                               ; preds = %64
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %51

96:                                               ; preds = %60
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %96
  %100 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %101 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %100, i32 0, i32 3
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %104, 2
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %108 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %107, i32 0, i32 3
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @device_printf(i32 %111, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %113

113:                                              ; preds = %106, %99
  store i8* null, i8** %5, align 8
  br label %236

114:                                              ; preds = %96
  %115 = load i32, i32* @M_DEVBUF, align 4
  %116 = load i32, i32* @M_NOWAIT, align 4
  %117 = call %struct.emu_memblk* @malloc(i32 40, i32 %115, i32 %116)
  store %struct.emu_memblk* %117, %struct.emu_memblk** %16, align 8
  %118 = load %struct.emu_memblk*, %struct.emu_memblk** %16, align 8
  %119 = icmp eq %struct.emu_memblk* %118, null
  br i1 %119, label %120, label %135

120:                                              ; preds = %114
  %121 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %122 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %125, 2
  br i1 %126, label %127, label %134

127:                                              ; preds = %120
  %128 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %129 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %128, i32 0, i32 3
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @device_printf(i32 %132, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %134

134:                                              ; preds = %127, %120
  store i8* null, i8** %5, align 8
  br label %236

135:                                              ; preds = %114
  %136 = load %struct.emu_memblk*, %struct.emu_memblk** %16, align 8
  %137 = call i32 @bzero(%struct.emu_memblk* %136, i32 40)
  %138 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.emu_memblk*, %struct.emu_memblk** %16, align 8
  %141 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %140, i32 0, i32 0
  %142 = load %struct.emu_memblk*, %struct.emu_memblk** %16, align 8
  %143 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %142, i32 0, i32 5
  %144 = call i8* @emu_malloc(%struct.emu_mem* %138, i32 %139, i32* %141, i32* %143)
  store i8* %144, i8** %17, align 8
  %145 = load %struct.emu_memblk*, %struct.emu_memblk** %16, align 8
  %146 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32*, i32** %8, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i8*, i8** %17, align 8
  %150 = icmp eq i8* %149, null
  br i1 %150, label %151, label %169

151:                                              ; preds = %135
  %152 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %153 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %152, i32 0, i32 3
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %156, 2
  br i1 %157, label %158, label %165

158:                                              ; preds = %151
  %159 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %160 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %159, i32 0, i32 3
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @device_printf(i32 %163, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %165

165:                                              ; preds = %158, %151
  %166 = load %struct.emu_memblk*, %struct.emu_memblk** %16, align 8
  %167 = load i32, i32* @M_DEVBUF, align 4
  %168 = call i32 @free(%struct.emu_memblk* %166, i32 %167)
  store i8* null, i8** %5, align 8
  br label %236

169:                                              ; preds = %135
  %170 = load i8*, i8** %17, align 8
  %171 = load %struct.emu_memblk*, %struct.emu_memblk** %16, align 8
  %172 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %171, i32 0, i32 4
  store i8* %170, i8** %172, align 8
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.emu_memblk*, %struct.emu_memblk** %16, align 8
  %175 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.emu_memblk*, %struct.emu_memblk** %16, align 8
  %178 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  %179 = load %struct.emu_memblk*, %struct.emu_memblk** %16, align 8
  %180 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %179, i32 0, i32 3
  %181 = load i8*, i8** %180, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 @strncpy(i8* %181, i8* %182, i32 15)
  %184 = load %struct.emu_memblk*, %struct.emu_memblk** %16, align 8
  %185 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %184, i32 0, i32 3
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 15
  store i8 0, i8* %187, align 1
  store i32 0, i32* %13, align 4
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* %12, align 4
  br label %189

189:                                              ; preds = %226, %169
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %191, %192
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %229

195:                                              ; preds = %189
  %196 = load i32, i32* %12, align 4
  %197 = and i32 %196, 7
  %198 = shl i32 1, %197
  %199 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %200 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %12, align 4
  %203 = ashr i32 %202, 3
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %198
  store i32 %207, i32* %205, align 4
  %208 = load %struct.emu_memblk*, %struct.emu_memblk** %16, align 8
  %209 = getelementptr inbounds %struct.emu_memblk, %struct.emu_memblk* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %13, align 4
  %212 = add nsw i32 %210, %211
  store i32 %212, i32* %14, align 4
  %213 = load i32, i32* %14, align 4
  %214 = shl i32 %213, 1
  %215 = load i32, i32* %12, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %218 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %216, i32* %222, align 4
  %223 = load i32, i32* @EMUPAGESIZE, align 4
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %13, align 4
  br label %226

226:                                              ; preds = %195
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %12, align 4
  br label %189

229:                                              ; preds = %189
  %230 = load %struct.emu_mem*, %struct.emu_mem** %6, align 8
  %231 = getelementptr inbounds %struct.emu_mem, %struct.emu_mem* %230, i32 0, i32 2
  %232 = load %struct.emu_memblk*, %struct.emu_memblk** %16, align 8
  %233 = load i32, i32* @link, align 4
  %234 = call i32 @SLIST_INSERT_HEAD(i32* %231, %struct.emu_memblk* %232, i32 %233)
  %235 = load i8*, i8** %17, align 8
  store i8* %235, i8** %5, align 8
  br label %236

236:                                              ; preds = %229, %165, %134, %113, %49
  %237 = load i8*, i8** %5, align 8
  ret i8* %237
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.emu_memblk* @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.emu_memblk*, i32) #1

declare dso_local i8* @emu_malloc(%struct.emu_mem*, i32, i32*, i32*) #1

declare dso_local i32 @free(%struct.emu_memblk*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.emu_memblk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
