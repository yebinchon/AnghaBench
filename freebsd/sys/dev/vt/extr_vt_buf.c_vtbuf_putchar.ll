; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_putchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_buf = type { i64, i64**, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@.str = private unnamed_addr constant [58 x i8] c"vtbuf_putchar tp_row %d must be less than screen width %d\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"vtbuf_putchar tp_col %d must be less than screen height %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vtbuf_putchar(%struct.vt_buf* %0, %struct.TYPE_6__* %1, i64 %2) #0 {
  %4 = alloca %struct.vt_buf*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.vt_buf* %0, %struct.vt_buf** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %12 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %10, %14
  %16 = zext i1 %15 to i32
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %21 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %16, i8* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %30 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %28, %32
  %34 = zext i1 %33 to i32
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %39 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @KASSERT(i32 %34, i8* %42)
  %44 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %45 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %44, i32 0, i32 1
  %46 = load i64**, i64*** %45, align 8
  %47 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %48 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %49, %52
  %54 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %55 = call i64 @VTBUF_MAX_HEIGHT(%struct.vt_buf* %54)
  %56 = urem i64 %53, %55
  %57 = getelementptr inbounds i64*, i64** %46, i64 %56
  %58 = load i64*, i64** %57, align 8
  store i64* %58, i64** %7, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %3
  %68 = load i64, i64* %6, align 8
  %69 = load i64*, i64** %7, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  store i64 %68, i64* %73, align 8
  %74 = load %struct.vt_buf*, %struct.vt_buf** %4, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = call i32 @vtbuf_dirty_cell(%struct.vt_buf* %74, %struct.TYPE_6__* %75)
  br label %77

77:                                               ; preds = %67, %3
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @VTBUF_MAX_HEIGHT(%struct.vt_buf*) #1

declare dso_local i32 @vtbuf_dirty_cell(%struct.vt_buf*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
