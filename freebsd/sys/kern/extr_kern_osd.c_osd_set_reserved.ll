; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_osd.c_osd_set_reserved.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_osd.c_osd_set_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32** }
%struct.osd = type { i64, i8** }
%struct.rm_priotracker = type { i32 }

@OSD_FIRST = common dso_local global i64 0, align 8
@OSD_LAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Invalid type.\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Invalid slot.\00", align 1
@osdm = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Unused slot.\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Not allocating null slot (type=%u, slot=%u).\00", align 1
@M_OSD = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@osd_next = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Setting first slot (type=%u).\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Growing slots array (type=%u).\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Setting slot value (type=%u, slot=%u, value=%p).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osd_set_reserved(i64 %0, %struct.osd* %1, i64 %2, i8** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.osd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rm_priotracker, align 4
  %13 = alloca i8**, align 8
  store i64 %0, i64* %7, align 8
  store %struct.osd* %1, %struct.osd** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @OSD_FIRST, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @OSD_LAST, align 8
  %20 = icmp ule i64 %18, %19
  br label %21

21:                                               ; preds = %17, %5
  %22 = phi i1 [ false, %5 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* %9, align 8
  %26 = icmp ugt i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32**, i32*** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @KASSERT(i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @rm_rlock(i32* %44, %struct.rm_priotracker* %12)
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.osd*, %struct.osd** %8, align 8
  %48 = getelementptr inbounds %struct.osd, %struct.osd* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ugt i64 %46, %49
  br i1 %50, label %51, label %152

51:                                               ; preds = %21
  %52 = load i8*, i8** %11, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 (i8*, i64, ...) @OSD_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %55, i64 %56)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @rm_runlock(i32* %61, %struct.rm_priotracker* %12)
  %63 = load i8**, i8*** %10, align 8
  %64 = icmp ne i8** %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i8**, i8*** %10, align 8
  %67 = call i32 @osd_free_reserved(i8** %66)
  br label %68

68:                                               ; preds = %65, %54
  store i32 0, i32* %6, align 4
  br label %176

69:                                               ; preds = %51
  %70 = load i8**, i8*** %10, align 8
  %71 = icmp ne i8** %70, null
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = load i8**, i8*** %10, align 8
  store i8** %73, i8*** %13, align 8
  %74 = load %struct.osd*, %struct.osd** %8, align 8
  %75 = getelementptr inbounds %struct.osd, %struct.osd* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load i8**, i8*** %13, align 8
  %80 = load %struct.osd*, %struct.osd** %8, align 8
  %81 = getelementptr inbounds %struct.osd, %struct.osd* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = load %struct.osd*, %struct.osd** %8, align 8
  %84 = getelementptr inbounds %struct.osd, %struct.osd* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = mul i64 8, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memcpy(i8** %79, i8** %82, i32 %87)
  %89 = load %struct.osd*, %struct.osd** %8, align 8
  %90 = getelementptr inbounds %struct.osd, %struct.osd* %89, i32 0, i32 1
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* @M_OSD, align 4
  %93 = call i32 @free(i8** %91, i32 %92)
  br label %94

94:                                               ; preds = %78, %72
  br label %117

95:                                               ; preds = %69
  %96 = load %struct.osd*, %struct.osd** %8, align 8
  %97 = getelementptr inbounds %struct.osd, %struct.osd* %96, i32 0, i32 1
  %98 = load i8**, i8*** %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = mul i64 8, %99
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* @M_OSD, align 4
  %103 = load i32, i32* @M_NOWAIT, align 4
  %104 = load i32, i32* @M_ZERO, align 4
  %105 = or i32 %103, %104
  %106 = call i8** @realloc(i8** %98, i32 %101, i32 %102, i32 %105)
  store i8** %106, i8*** %13, align 8
  %107 = load i8**, i8*** %13, align 8
  %108 = icmp eq i8** %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %95
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = call i32 @rm_runlock(i32* %113, %struct.rm_priotracker* %12)
  %115 = load i32, i32* @ENOMEM, align 4
  store i32 %115, i32* %6, align 4
  br label %176

116:                                              ; preds = %95
  br label %117

117:                                              ; preds = %116, %94
  %118 = load %struct.osd*, %struct.osd** %8, align 8
  %119 = getelementptr inbounds %struct.osd, %struct.osd* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %117
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %124 = load i64, i64* %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = call i32 @mtx_lock(i32* %126)
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %129 = load i64, i64* %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load %struct.osd*, %struct.osd** %8, align 8
  %133 = load i32, i32* @osd_next, align 4
  %134 = call i32 @LIST_INSERT_HEAD(i32* %131, %struct.osd* %132, i32 %133)
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %136 = load i64, i64* %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = call i32 @mtx_unlock(i32* %138)
  %140 = load i64, i64* %7, align 8
  %141 = call i32 (i8*, i64, ...) @OSD_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %140)
  br label %145

142:                                              ; preds = %117
  %143 = load i64, i64* %7, align 8
  %144 = call i32 (i8*, i64, ...) @OSD_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %143)
  br label %145

145:                                              ; preds = %142, %122
  %146 = load i8**, i8*** %13, align 8
  %147 = load %struct.osd*, %struct.osd** %8, align 8
  %148 = getelementptr inbounds %struct.osd, %struct.osd* %147, i32 0, i32 1
  store i8** %146, i8*** %148, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load %struct.osd*, %struct.osd** %8, align 8
  %151 = getelementptr inbounds %struct.osd, %struct.osd* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  br label %159

152:                                              ; preds = %21
  %153 = load i8**, i8*** %10, align 8
  %154 = icmp ne i8** %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i8**, i8*** %10, align 8
  %157 = call i32 @osd_free_reserved(i8** %156)
  br label %158

158:                                              ; preds = %155, %152
  br label %159

159:                                              ; preds = %158, %145
  %160 = load i64, i64* %7, align 8
  %161 = load i64, i64* %9, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = call i32 (i8*, i64, ...) @OSD_DEBUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i64 %160, i64 %161, i8* %162)
  %164 = load i8*, i8** %11, align 8
  %165 = load %struct.osd*, %struct.osd** %8, align 8
  %166 = getelementptr inbounds %struct.osd, %struct.osd* %165, i32 0, i32 1
  %167 = load i8**, i8*** %166, align 8
  %168 = load i64, i64* %9, align 8
  %169 = sub i64 %168, 1
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  store i8* %164, i8** %170, align 8
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osdm, align 8
  %172 = load i64, i64* %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = call i32 @rm_runlock(i32* %174, %struct.rm_priotracker* %12)
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %159, %109, %68
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rm_rlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @OSD_DEBUG(i8*, i64, ...) #1

declare dso_local i32 @rm_runlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @osd_free_reserved(i8**) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @free(i8**, i32) #1

declare dso_local i8** @realloc(i8**, i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.osd*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
