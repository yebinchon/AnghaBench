; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_winsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_winsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32, i32 }
%struct.vt_font = type { i32, i32 }
%struct.winsize = type { i32, i32, i32, i32 }

@vt_draw_logo_cpus = common dso_local global i64 0, align 8
@vt_logo_sprite_height = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vt_winsize(%struct.vt_device* %0, %struct.vt_font* %1, %struct.winsize* %2) #0 {
  %4 = alloca %struct.vt_device*, align 8
  %5 = alloca %struct.vt_font*, align 8
  %6 = alloca %struct.winsize*, align 8
  store %struct.vt_device* %0, %struct.vt_device** %4, align 8
  store %struct.vt_font* %1, %struct.vt_font** %5, align 8
  store %struct.winsize* %2, %struct.winsize** %6, align 8
  %7 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %8 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.winsize*, %struct.winsize** %6, align 8
  %11 = getelementptr inbounds %struct.winsize, %struct.winsize* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i64, i64* @vt_draw_logo_cpus, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i64, i64* @vt_logo_sprite_height, align 8
  %16 = load %struct.winsize*, %struct.winsize** %6, align 8
  %17 = getelementptr inbounds %struct.winsize, %struct.winsize* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %19, %15
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 4
  br label %22

22:                                               ; preds = %14, %3
  %23 = load %struct.winsize*, %struct.winsize** %6, align 8
  %24 = getelementptr inbounds %struct.winsize, %struct.winsize* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.winsize*, %struct.winsize** %6, align 8
  %27 = getelementptr inbounds %struct.winsize, %struct.winsize* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.vt_device*, %struct.vt_device** %4, align 8
  %29 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.winsize*, %struct.winsize** %6, align 8
  %32 = getelementptr inbounds %struct.winsize, %struct.winsize* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.winsize*, %struct.winsize** %6, align 8
  %34 = getelementptr inbounds %struct.winsize, %struct.winsize* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.vt_font*, %struct.vt_font** %5, align 8
  %36 = icmp ne %struct.vt_font* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %22
  %38 = load %struct.vt_font*, %struct.vt_font** %5, align 8
  %39 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.winsize*, %struct.winsize** %6, align 8
  %42 = getelementptr inbounds %struct.winsize, %struct.winsize* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.vt_font*, %struct.vt_font** %5, align 8
  %46 = getelementptr inbounds %struct.vt_font, %struct.vt_font* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.winsize*, %struct.winsize** %6, align 8
  %49 = getelementptr inbounds %struct.winsize, %struct.winsize* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %37, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
