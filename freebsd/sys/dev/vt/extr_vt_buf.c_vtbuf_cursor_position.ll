; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_cursor_position.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_cursor_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_buf = type { i32, i32 }

@VBF_CURSOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vtbuf_cursor_position(%struct.vt_buf* %0, i32* %1) #0 {
  %3 = alloca %struct.vt_buf*, align 8
  %4 = alloca i32*, align 8
  store %struct.vt_buf* %0, %struct.vt_buf** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %6 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @VBF_CURSOR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %13 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %14 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %13, i32 0, i32 1
  %15 = call i32 @vtbuf_dirty_cell(%struct.vt_buf* %12, i32* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %19 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %21 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %22 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %21, i32 0, i32 1
  %23 = call i32 @vtbuf_dirty_cell(%struct.vt_buf* %20, i32* %22)
  br label %29

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %28 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %11
  ret void
}

declare dso_local i32 @vtbuf_dirty_cell(%struct.vt_buf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
