; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/grant_table/extr_grant_table.c_gnttab_cancel_free_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/grant_table/extr_grant_table.c_gnttab_cancel_free_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnttab_free_callback = type { %struct.gnttab_free_callback* }

@gnttab_list_lock = common dso_local global i32 0, align 4
@gnttab_free_callback_list = common dso_local global %struct.gnttab_free_callback* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnttab_cancel_free_callback(%struct.gnttab_free_callback* %0) #0 {
  %2 = alloca %struct.gnttab_free_callback*, align 8
  %3 = alloca %struct.gnttab_free_callback**, align 8
  store %struct.gnttab_free_callback* %0, %struct.gnttab_free_callback** %2, align 8
  %4 = call i32 @mtx_lock(i32* @gnttab_list_lock)
  store %struct.gnttab_free_callback** @gnttab_free_callback_list, %struct.gnttab_free_callback*** %3, align 8
  br label %5

5:                                                ; preds = %20, %1
  %6 = load %struct.gnttab_free_callback**, %struct.gnttab_free_callback*** %3, align 8
  %7 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %6, align 8
  %8 = icmp ne %struct.gnttab_free_callback* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load %struct.gnttab_free_callback**, %struct.gnttab_free_callback*** %3, align 8
  %11 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %10, align 8
  %12 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %2, align 8
  %13 = icmp eq %struct.gnttab_free_callback* %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %2, align 8
  %16 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %15, i32 0, i32 0
  %17 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %16, align 8
  %18 = load %struct.gnttab_free_callback**, %struct.gnttab_free_callback*** %3, align 8
  store %struct.gnttab_free_callback* %17, %struct.gnttab_free_callback** %18, align 8
  br label %24

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.gnttab_free_callback**, %struct.gnttab_free_callback*** %3, align 8
  %22 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %21, align 8
  %23 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %22, i32 0, i32 0
  store %struct.gnttab_free_callback** %23, %struct.gnttab_free_callback*** %3, align 8
  br label %5

24:                                               ; preds = %14, %5
  %25 = call i32 @mtx_unlock(i32* @gnttab_list_lock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
