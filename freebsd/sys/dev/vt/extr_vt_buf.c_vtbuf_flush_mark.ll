; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_flush_mark.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_flush_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_buf = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_buf*)* @vtbuf_flush_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtbuf_flush_mark(%struct.vt_buf* %0) #0 {
  %2 = alloca %struct.vt_buf*, align 8
  %3 = alloca %struct.TYPE_13__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vt_buf* %0, %struct.vt_buf** %2, align 8
  %6 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %7 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %11 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %9, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %17 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %21 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %19, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %15, %1
  %26 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %27 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %28 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @vtbuf_htw(%struct.vt_buf* %26, i64 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %33 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %34 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @vtbuf_htw(%struct.vt_buf* %32, i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @MIN(i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %46 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @MAX(i32 %51, i32 %52)
  %54 = add nsw i64 %53, 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %58 = call i32 @VTBUF_LOCK(%struct.vt_buf* %57)
  %59 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %60 = call i32 @vtbuf_dirty(%struct.vt_buf* %59, %struct.TYPE_13__* %3)
  %61 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %62 = call i32 @VTBUF_UNLOCK(%struct.vt_buf* %61)
  br label %63

63:                                               ; preds = %25, %15
  ret void
}

declare dso_local i32 @vtbuf_htw(%struct.vt_buf*, i64) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @VTBUF_LOCK(%struct.vt_buf*) #1

declare dso_local i32 @vtbuf_dirty(%struct.vt_buf*, %struct.TYPE_13__*) #1

declare dso_local i32 @VTBUF_UNLOCK(%struct.vt_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
