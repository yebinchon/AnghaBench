; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_fbd.c_fbd_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_fbd.c_fbd_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_list_entry = type { %struct.fb_info* }

@fb_list_head = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@fb_list = common dso_local global i32 0, align 4
@framebuffer_dev_unit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbd_register(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_list_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = call i64 @LIST_EMPTY(i32* @fb_list_head)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = call %struct.fb_list_entry* @fbd_find(%struct.fb_info* %13)
  store %struct.fb_list_entry* %14, %struct.fb_list_entry** %4, align 8
  %15 = load %struct.fb_list_entry*, %struct.fb_list_entry** %4, align 8
  %16 = icmp ne %struct.fb_list_entry* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %50

18:                                               ; preds = %12
  %19 = load i32, i32* @M_DEVBUF, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.fb_list_entry* @malloc(i32 8, i32 %19, i32 %22)
  store %struct.fb_list_entry* %23, %struct.fb_list_entry** %4, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = load %struct.fb_list_entry*, %struct.fb_list_entry** %4, align 8
  %26 = getelementptr inbounds %struct.fb_list_entry, %struct.fb_list_entry* %25, i32 0, i32 0
  store %struct.fb_info* %24, %struct.fb_info** %26, align 8
  %27 = load %struct.fb_list_entry*, %struct.fb_list_entry** %4, align 8
  %28 = load i32, i32* @fb_list, align 4
  %29 = call i32 @LIST_INSERT_HEAD(i32* @fb_list_head, %struct.fb_list_entry* %27, i32 %28)
  %30 = load %struct.fb_list_entry*, %struct.fb_list_entry** %4, align 8
  %31 = load i32, i32* @framebuffer_dev_unit, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @framebuffer_dev_unit, align 4
  %33 = call i32 @fb_init(%struct.fb_list_entry* %30, i32 %31)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %18
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %50

38:                                               ; preds = %18
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %43 = call i32 @vt_fb_attach(%struct.fb_info* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %38
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46, %36, %17
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local %struct.fb_list_entry* @fbd_find(%struct.fb_info*) #1

declare dso_local %struct.fb_list_entry* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.fb_list_entry*, i32) #1

declare dso_local i32 @fb_init(%struct.fb_list_entry*, i32) #1

declare dso_local i32 @vt_fb_attach(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
