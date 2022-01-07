; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_init_rows.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_buf.c_vtbuf_init_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_buf = type { i32, %struct.TYPE_2__, i32*, i32** }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_buf*)* @vtbuf_init_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtbuf_init_rows(%struct.vt_buf* %0) #0 {
  %2 = alloca %struct.vt_buf*, align 8
  %3 = alloca i32, align 4
  store %struct.vt_buf* %0, %struct.vt_buf** %2, align 8
  %4 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %5 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %8 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @MAX(i32 %6, i32 %10)
  %12 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %13 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %38, %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %17 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %22 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %26 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %24, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %23, i64 %30
  %32 = load %struct.vt_buf*, %struct.vt_buf** %2, align 8
  %33 = getelementptr inbounds %struct.vt_buf, %struct.vt_buf* %32, i32 0, i32 3
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  store i32* %31, i32** %37, align 8
  br label %38

38:                                               ; preds = %20
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %14

41:                                               ; preds = %14
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
