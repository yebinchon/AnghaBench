; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_osd.c_osd_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_osd.c_osd_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32**, i32**, i32 }

@OSD_FIRST = common dso_local global i64 0, align 8
@OSD_LAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Invalid type.\00", align 1
@osd_default_destructor = common dso_local global i32* null, align 8
@osdm = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Unused slot found (type=%u, slot=%u).\00", align 1
@M_OSD = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"New slot allocated (type=%u, slot=%u).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osd_register(i64 %0, i32* %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @OSD_FIRST, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @OSD_LAST, align 8
  %16 = icmp ule i64 %14, %15
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i1 [ false, %3 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32*, i32** @osd_default_destructor, align 8
  store i32* %24, i32** %5, align 8
  br label %25

25:                                               ; preds = %23, %17
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = call i32 @sx_xlock(i32* %29)
  store i64 0, i64* %8, align 8
  br label %31

31:                                               ; preds = %54, %25
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %32, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %31
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i32**, i32*** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @OSD_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %51)
  br label %57

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %8, align 8
  br label %31

57:                                               ; preds = %49, %31
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %58, %63
  br i1 %64, label %65, label %153

65:                                               ; preds = %57
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %105

78:                                               ; preds = %65
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %80 = load i64, i64* %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32**, i32*** %82, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %85 = load i64, i64* %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = mul i64 8, %88
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %91 = load i64, i64* %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = mul i64 %89, %95
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* @M_OSD, align 4
  %99 = load i32, i32* @M_WAITOK, align 4
  %100 = call i32** @realloc(i32** %83, i32 %97, i32 %98, i32 %99)
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %102 = load i64, i64* %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  store i32** %100, i32*** %104, align 8
  br label %105

105:                                              ; preds = %78, %65
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %107 = load i64, i64* %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = mul i64 8, %110
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* @M_OSD, align 4
  %114 = load i32, i32* @M_WAITOK, align 4
  %115 = call i8* @malloc(i32 %112, i32 %113, i32 %114)
  store i8* %115, i8** %7, align 8
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %117 = load i64, i64* %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 5
  %120 = call i32 @rm_wlock(i32* %119)
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %122 = load i64, i64* %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 4
  %125 = load i32**, i32*** %124, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load i64, i64* %8, align 8
  %128 = mul i64 8, %127
  %129 = trunc i64 %128 to i32
  %130 = call i32 @bcopy(i32** %125, i8* %126, i32 %129)
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %132 = load i64, i64* %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 4
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* @M_OSD, align 4
  %137 = call i32 @free(i32** %135, i32 %136)
  %138 = load i8*, i8** %7, align 8
  %139 = bitcast i8* %138 to i32**
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %141 = load i64, i64* %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 4
  store i32** %139, i32*** %143, align 8
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %145 = load i64, i64* %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 5
  %148 = call i32 @rm_wunlock(i32* %147)
  %149 = load i64, i64* %4, align 8
  %150 = load i64, i64* %8, align 8
  %151 = add i64 %150, 1
  %152 = call i32 @OSD_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %149, i64 %151)
  br label %153

153:                                              ; preds = %105, %57
  %154 = load i32*, i32** %5, align 8
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %156 = load i64, i64* %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 4
  %159 = load i32**, i32*** %158, align 8
  %160 = load i64, i64* %8, align 8
  %161 = getelementptr inbounds i32*, i32** %159, i64 %160
  store i32* %154, i32** %161, align 8
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %163 = load i64, i64* %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %209

168:                                              ; preds = %153
  store i64 0, i64* %9, align 8
  br label %169

169:                                              ; preds = %205, %168
  %170 = load i64, i64* %9, align 8
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %172 = load i64, i64* %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = icmp ult i64 %170, %176
  br i1 %177, label %178, label %208

178:                                              ; preds = %169
  %179 = load i32**, i32*** %6, align 8
  %180 = icmp ne i32** %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load i32**, i32*** %6, align 8
  %183 = load i64, i64* %9, align 8
  %184 = getelementptr inbounds i32*, i32** %182, i64 %183
  %185 = load i32*, i32** %184, align 8
  br label %187

186:                                              ; preds = %178
  br label %187

187:                                              ; preds = %186, %181
  %188 = phi i32* [ %185, %181 ], [ null, %186 ]
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %190 = load i64, i64* %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 3
  %193 = load i32**, i32*** %192, align 8
  %194 = load i64, i64* %8, align 8
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %196 = load i64, i64* %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = mul i64 %194, %200
  %202 = load i64, i64* %9, align 8
  %203 = add i64 %201, %202
  %204 = getelementptr inbounds i32*, i32** %193, i64 %203
  store i32* %188, i32** %204, align 8
  br label %205

205:                                              ; preds = %187
  %206 = load i64, i64* %9, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %9, align 8
  br label %169

208:                                              ; preds = %169
  br label %209

209:                                              ; preds = %208, %153
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %211 = load i64, i64* %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 2
  %214 = call i32 @sx_xunlock(i32* %213)
  %215 = load i64, i64* %8, align 8
  %216 = add i64 %215, 1
  %217 = trunc i64 %216 to i32
  ret i32 %217
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @OSD_DEBUG(i8*, i64, i64) #1

declare dso_local i32** @realloc(i32**, i32, i32, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @rm_wlock(i32*) #1

declare dso_local i32 @bcopy(i32**, i8*, i32) #1

declare dso_local i32 @free(i32**, i32) #1

declare dso_local i32 @rm_wunlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
