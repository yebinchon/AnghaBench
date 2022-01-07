; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mem.c_mmio_rb_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mem.c_mmio_rb_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmio_rb_tree = type { i32 }
%struct.mmio_rb_range = type { i32, i32 }

@mmio_rb_tree = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmio_rb_tree*, i32, %struct.mmio_rb_range**)* @mmio_rb_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmio_rb_lookup(%struct.mmio_rb_tree* %0, i32 %1, %struct.mmio_rb_range** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmio_rb_tree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmio_rb_range**, align 8
  %8 = alloca %struct.mmio_rb_range, align 4
  %9 = alloca %struct.mmio_rb_range*, align 8
  store %struct.mmio_rb_tree* %0, %struct.mmio_rb_tree** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mmio_rb_range** %2, %struct.mmio_rb_range*** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = getelementptr inbounds %struct.mmio_rb_range, %struct.mmio_rb_range* %8, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.mmio_rb_range, %struct.mmio_rb_range* %8, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @mmio_rb_tree, align 4
  %14 = load %struct.mmio_rb_tree*, %struct.mmio_rb_tree** %5, align 8
  %15 = call %struct.mmio_rb_range* @RB_FIND(i32 %13, %struct.mmio_rb_tree* %14, %struct.mmio_rb_range* %8)
  store %struct.mmio_rb_range* %15, %struct.mmio_rb_range** %9, align 8
  %16 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %9, align 8
  %17 = icmp ne %struct.mmio_rb_range* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.mmio_rb_range*, %struct.mmio_rb_range** %9, align 8
  %20 = load %struct.mmio_rb_range**, %struct.mmio_rb_range*** %7, align 8
  store %struct.mmio_rb_range* %19, %struct.mmio_rb_range** %20, align 8
  store i32 0, i32* %4, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.mmio_rb_range* @RB_FIND(i32, %struct.mmio_rb_tree*, %struct.mmio_rb_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
