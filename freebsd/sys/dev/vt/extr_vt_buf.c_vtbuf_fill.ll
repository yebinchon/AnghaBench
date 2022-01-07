; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_buf = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [54 x i8] c"vtbuf_fill begin.tp_row %d must be < screen height %d\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"vtbuf_fill begin.tp_col %d must be < screen width %d\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"vtbuf_fill end.tp_row %d must be <= screen height %d\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"vtbuf_fill end.tp_col %d must be <= screen width %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vtbuf_fill(%struct.vt_buf* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca %struct.vt_buf*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.vt_buf* %0, %struct.vt_buf** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %12 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %10, %14
  %16 = zext i1 %15 to i32
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %22 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @KASSERT(i32 %16, i8* %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %32 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %30, %34
  %36 = zext i1 %35 to i32
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %42 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @KASSERT(i32 %36, i8* %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %52 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sle i64 %50, %54
  %56 = zext i1 %55 to i32
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %62 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @KASSERT(i32 %56, i8* %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %72 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %70, %74
  %76 = zext i1 %75 to i32
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %82 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @KASSERT(i32 %76, i8* %85)
  %87 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @vtbuf_do_fill(%struct.vt_buf* %87, %struct.TYPE_11__* %88, i32 %89)
  %91 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = call i32 @vtbuf_dirty(%struct.vt_buf* %91, %struct.TYPE_11__* %92)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vtbuf_do_fill(%struct.vt_buf*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @vtbuf_dirty(%struct.vt_buf*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
