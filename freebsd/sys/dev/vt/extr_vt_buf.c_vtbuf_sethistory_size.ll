; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_sethistory_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_sethistory_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_buf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vtbuf_sethistory_size(%struct.vt_buf* %0, i32 %1) #0 {
  %3 = alloca %struct.vt_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  store %struct.vt_buf* %0, %struct.vt_buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %7 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %12 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.vt_buf*, %struct.vt_buf** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @vtbuf_grow(%struct.vt_buf* %16, %struct.TYPE_5__* %5, i32 %17)
  ret void
}

declare dso_local i32 @vtbuf_grow(%struct.vt_buf*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
