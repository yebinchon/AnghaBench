; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_font.c_vtfont_unref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_font.c_vtfont_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_font = type { %struct.vt_font*, %struct.vt_font**, i32 }

@VFNT_MAPS = common dso_local global i32 0, align 4
@M_VTFONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vtfont_unref(%struct.vt_font* %0) #0 {
  %2 = alloca %struct.vt_font*, align 8
  %3 = alloca i32, align 4
  store %struct.vt_font* %0, %struct.vt_font** %2, align 8
  %4 = load %struct.vt_font*, %struct.vt_font** %2, align 8
  %5 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %4, i32 0, i32 2
  %6 = call i64 @refcount_release(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %23, %8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @VFNT_MAPS, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load %struct.vt_font*, %struct.vt_font** %2, align 8
  %15 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %14, i32 0, i32 1
  %16 = load %struct.vt_font**, %struct.vt_font*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.vt_font*, %struct.vt_font** %16, i64 %18
  %20 = load %struct.vt_font*, %struct.vt_font** %19, align 8
  %21 = load i32, i32* @M_VTFONT, align 4
  %22 = call i32 @free(%struct.vt_font* %20, i32 %21)
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %9

26:                                               ; preds = %9
  %27 = load %struct.vt_font*, %struct.vt_font** %2, align 8
  %28 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %27, i32 0, i32 0
  %29 = load %struct.vt_font*, %struct.vt_font** %28, align 8
  %30 = load i32, i32* @M_VTFONT, align 4
  %31 = call i32 @free(%struct.vt_font* %29, i32 %30)
  %32 = load %struct.vt_font*, %struct.vt_font** %2, align 8
  %33 = load i32, i32* @M_VTFONT, align 4
  %34 = call i32 @free(%struct.vt_font* %32, i32 %33)
  br label %35

35:                                               ; preds = %26, %1
  ret void
}

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @free(%struct.vt_font*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
