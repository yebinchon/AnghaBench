; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_init_early.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_init_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_buf = type { i32, i32, %struct.TYPE_16__*, i32, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__, i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, i64 }

@VBF_CURSOR = common dso_local global i32 0, align 4
@VBF_MTX_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"vtbuf\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vtbuf_init_early(%struct.vt_buf* %0) #0 {
  %2 = alloca %struct.vt_buf*, align 8
  %3 = alloca %struct.TYPE_17__, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  store %struct.vt_buf* %0, %struct.vt_buf** %2, align 8
  %6 = load i32, i32* @VBF_CURSOR, align 4
  %7 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %8 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 8
  %11 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %12 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %11, i32 0, i32 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %14 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %13, i32 0, i32 7
  store i64 0, i64* %14, align 8
  %15 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %16 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %19 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %22 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %25 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %28 = call i32 @vtbuf_init_rows(%struct.vt_buf* %27)
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %34 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %40 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %45 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %44, i32 0, i32 2
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = call %struct.TYPE_18__* @teken_get_curattr(i32* %47)
  store %struct.TYPE_18__* %48, %struct.TYPE_18__** %4, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @TCOLOR_FG(i32 %52)
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @TCOLOR_BG(i32 %57)
  %59 = or i32 %53, %58
  store i32 %59, i32* %5, align 4
  %60 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @VTBUF_SPACE_CHAR(i32 %61)
  %63 = call i32 @vtbuf_do_fill(%struct.vt_buf* %60, %struct.TYPE_17__* %3, i32 %62)
  %64 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %65 = call i32 @vtbuf_make_undirty(%struct.vt_buf* %64)
  %66 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %67 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @VBF_MTX_INIT, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %1
  %73 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %74 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %73, i32 0, i32 1
  %75 = load i32, i32* @MTX_SPIN, align 4
  %76 = call i32 @mtx_init(i32* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 %75)
  %77 = load i32, i32* @VBF_MTX_INIT, align 4
  %78 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %79 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %72, %1
  ret void
}

declare dso_local i32 @vtbuf_init_rows(%struct.vt_buf*) #1

declare dso_local %struct.TYPE_18__* @teken_get_curattr(i32*) #1

declare dso_local i32 @TCOLOR_FG(i32) #1

declare dso_local i32 @TCOLOR_BG(i32) #1

declare dso_local i32 @vtbuf_do_fill(%struct.vt_buf*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @VTBUF_SPACE_CHAR(i32) #1

declare dso_local i32 @vtbuf_make_undirty(%struct.vt_buf*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
