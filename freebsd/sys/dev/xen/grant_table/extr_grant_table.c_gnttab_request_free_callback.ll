; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/grant_table/extr_grant_table.c_gnttab_request_free_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/grant_table/extr_grant_table.c_gnttab_request_free_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnttab_free_callback = type { void (i8*)*, %struct.gnttab_free_callback*, i32, i8* }

@gnttab_list_lock = common dso_local global i32 0, align 4
@gnttab_free_callback_list = common dso_local global %struct.gnttab_free_callback* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnttab_request_free_callback(%struct.gnttab_free_callback* %0, void (i8*)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.gnttab_free_callback*, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.gnttab_free_callback* %0, %struct.gnttab_free_callback** %5, align 8
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = call i32 @mtx_lock(i32* @gnttab_list_lock)
  %10 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  %11 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %10, i32 0, i32 1
  %12 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %11, align 8
  %13 = icmp ne %struct.gnttab_free_callback* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %30

15:                                               ; preds = %4
  %16 = load void (i8*)*, void (i8*)** %6, align 8
  %17 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  %18 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %17, i32 0, i32 0
  store void (i8*)* %16, void (i8*)** %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  %21 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  %24 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** @gnttab_free_callback_list, align 8
  %26 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  %27 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %26, i32 0, i32 1
  store %struct.gnttab_free_callback* %25, %struct.gnttab_free_callback** %27, align 8
  %28 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  store %struct.gnttab_free_callback* %28, %struct.gnttab_free_callback** @gnttab_free_callback_list, align 8
  %29 = call i32 (...) @check_free_callbacks()
  br label %30

30:                                               ; preds = %15, %14
  %31 = call i32 @mtx_unlock(i32* @gnttab_list_lock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @check_free_callbacks(...) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
