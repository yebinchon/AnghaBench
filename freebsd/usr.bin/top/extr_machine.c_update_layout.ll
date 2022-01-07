; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_machine.c_update_layout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_machine.c_update_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@y_mem = common dso_local global i32 0, align 4
@y_arc = common dso_local global i32 0, align 4
@y_carc = common dso_local global i32 0, align 4
@arc_enabled = common dso_local global i32 0, align 4
@carc_enabled = common dso_local global i32 0, align 4
@has_swap = common dso_local global i32 0, align 4
@y_swap = common dso_local global i32 0, align 4
@y_idlecursor = common dso_local global i32 0, align 4
@y_message = common dso_local global i32 0, align 4
@y_header = common dso_local global i32 0, align 4
@y_procs = common dso_local global i32 0, align 4
@Header_lines = common dso_local global i32 0, align 4
@pcpu_stats = common dso_local global i64 0, align 8
@ncpus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_layout() #0 {
  store i32 3, i32* @y_mem, align 4
  store i32 4, i32* @y_arc, align 4
  store i32 5, i32* @y_carc, align 4
  %1 = load i32, i32* @arc_enabled, align 4
  %2 = add nsw i32 3, %1
  %3 = load i32, i32* @carc_enabled, align 4
  %4 = add nsw i32 %2, %3
  %5 = load i32, i32* @has_swap, align 4
  %6 = add nsw i32 %4, %5
  store i32 %6, i32* @y_swap, align 4
  %7 = load i32, i32* @arc_enabled, align 4
  %8 = add nsw i32 4, %7
  %9 = load i32, i32* @carc_enabled, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* @has_swap, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* @y_idlecursor, align 4
  %13 = load i32, i32* @arc_enabled, align 4
  %14 = add nsw i32 4, %13
  %15 = load i32, i32* @carc_enabled, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* @has_swap, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* @y_message, align 4
  %19 = load i32, i32* @arc_enabled, align 4
  %20 = add nsw i32 5, %19
  %21 = load i32, i32* @carc_enabled, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* @has_swap, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* @y_header, align 4
  %25 = load i32, i32* @arc_enabled, align 4
  %26 = add nsw i32 6, %25
  %27 = load i32, i32* @carc_enabled, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @has_swap, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* @y_procs, align 4
  %31 = load i32, i32* @arc_enabled, align 4
  %32 = add nsw i32 6, %31
  %33 = load i32, i32* @carc_enabled, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* @has_swap, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* @Header_lines, align 4
  %37 = load i64, i64* @pcpu_stats, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %0
  %40 = load i32, i32* @ncpus, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* @y_mem, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* @y_mem, align 4
  %44 = load i32, i32* @ncpus, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* @y_arc, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* @y_arc, align 4
  %48 = load i32, i32* @ncpus, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* @y_carc, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* @y_carc, align 4
  %52 = load i32, i32* @ncpus, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* @y_swap, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* @y_swap, align 4
  %56 = load i32, i32* @ncpus, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* @y_idlecursor, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* @y_idlecursor, align 4
  %60 = load i32, i32* @ncpus, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* @y_message, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* @y_message, align 4
  %64 = load i32, i32* @ncpus, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load i32, i32* @y_header, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* @y_header, align 4
  %68 = load i32, i32* @ncpus, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load i32, i32* @y_procs, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* @y_procs, align 4
  %72 = load i32, i32* @ncpus, align 4
  %73 = sub nsw i32 %72, 1
  %74 = load i32, i32* @Header_lines, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* @Header_lines, align 4
  br label %76

76:                                               ; preds = %39, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
