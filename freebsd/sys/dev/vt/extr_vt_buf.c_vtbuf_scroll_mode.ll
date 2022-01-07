; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_scroll_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_scroll_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_buf = type { i32, i32 }

@VBF_SCROLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vtbuf_scroll_mode(%struct.vt_buf* %0, i32 %1) #0 {
  %3 = alloca %struct.vt_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vt_buf* %0, %struct.vt_buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %8 = call i32 @VTBUF_LOCK(%struct.vt_buf* %7)
  %9 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %10 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @VBF_SCROLL, align 4
  %16 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %17 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @VBF_SCROLL, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %24 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %20, %14
  %28 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %29 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %36 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %37 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %36, i32 0, i32 1
  %38 = call i32 @vtbuf_dirty_cell(%struct.vt_buf* %35, i32* %37)
  br label %39

39:                                               ; preds = %34, %27
  %40 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %41 = call i32 @VTBUF_UNLOCK(%struct.vt_buf* %40)
  ret void
}

declare dso_local i32 @VTBUF_LOCK(%struct.vt_buf*) #1

declare dso_local i32 @vtbuf_dirty_cell(%struct.vt_buf*, i32*) #1

declare dso_local i32 @VTBUF_UNLOCK(%struct.vt_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
