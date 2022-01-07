; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_g_llvm_free_vg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_g_llvm_free_vg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_llvm_vg = type { i32, i32, i32 }
%struct.g_llvm_pv = type { i32, i32, i32 }
%struct.g_llvm_lv = type { i32, i32, i32 }
%struct.g_llvm_segment = type { i32, i32, i32 }

@pv_next = common dso_local global i32 0, align 4
@M_GLLVM = common dso_local global i32 0, align 4
@sg_next = common dso_local global i32 0, align 4
@lv_next = common dso_local global i32 0, align 4
@vg_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_llvm_vg*)* @g_llvm_free_vg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_llvm_free_vg(%struct.g_llvm_vg* %0) #0 {
  %2 = alloca %struct.g_llvm_vg*, align 8
  %3 = alloca %struct.g_llvm_pv*, align 8
  %4 = alloca %struct.g_llvm_lv*, align 8
  %5 = alloca %struct.g_llvm_segment*, align 8
  store %struct.g_llvm_vg* %0, %struct.g_llvm_vg** %2, align 8
  br label %6

6:                                                ; preds = %12, %1
  %7 = load %struct.g_llvm_vg*, %struct.g_llvm_vg** %2, align 8
  %8 = getelementptr inbounds %struct.g_llvm_vg, %struct.g_llvm_vg* %7, i32 0, i32 2
  %9 = call %struct.g_llvm_vg* @LIST_FIRST(i32* %8)
  %10 = bitcast %struct.g_llvm_vg* %9 to %struct.g_llvm_pv*
  store %struct.g_llvm_pv* %10, %struct.g_llvm_pv** %3, align 8
  %11 = icmp ne %struct.g_llvm_pv* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %6
  %13 = load %struct.g_llvm_pv*, %struct.g_llvm_pv** %3, align 8
  %14 = bitcast %struct.g_llvm_pv* %13 to %struct.g_llvm_vg*
  %15 = load i32, i32* @pv_next, align 4
  %16 = call i32 @LIST_REMOVE(%struct.g_llvm_vg* %14, i32 %15)
  %17 = load %struct.g_llvm_pv*, %struct.g_llvm_pv** %3, align 8
  %18 = bitcast %struct.g_llvm_pv* %17 to %struct.g_llvm_vg*
  %19 = load i32, i32* @M_GLLVM, align 4
  %20 = call i32 @free(%struct.g_llvm_vg* %18, i32 %19)
  br label %6

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %44, %21
  %23 = load %struct.g_llvm_vg*, %struct.g_llvm_vg** %2, align 8
  %24 = getelementptr inbounds %struct.g_llvm_vg, %struct.g_llvm_vg* %23, i32 0, i32 1
  %25 = call %struct.g_llvm_vg* @LIST_FIRST(i32* %24)
  %26 = bitcast %struct.g_llvm_vg* %25 to %struct.g_llvm_lv*
  store %struct.g_llvm_lv* %26, %struct.g_llvm_lv** %4, align 8
  %27 = icmp ne %struct.g_llvm_lv* %26, null
  br i1 %27, label %28, label %53

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %35, %28
  %30 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %4, align 8
  %31 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %30, i32 0, i32 0
  %32 = call %struct.g_llvm_vg* @LIST_FIRST(i32* %31)
  %33 = bitcast %struct.g_llvm_vg* %32 to %struct.g_llvm_segment*
  store %struct.g_llvm_segment* %33, %struct.g_llvm_segment** %5, align 8
  %34 = icmp ne %struct.g_llvm_segment* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %5, align 8
  %37 = bitcast %struct.g_llvm_segment* %36 to %struct.g_llvm_vg*
  %38 = load i32, i32* @sg_next, align 4
  %39 = call i32 @LIST_REMOVE(%struct.g_llvm_vg* %37, i32 %38)
  %40 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %5, align 8
  %41 = bitcast %struct.g_llvm_segment* %40 to %struct.g_llvm_vg*
  %42 = load i32, i32* @M_GLLVM, align 4
  %43 = call i32 @free(%struct.g_llvm_vg* %41, i32 %42)
  br label %29

44:                                               ; preds = %29
  %45 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %4, align 8
  %46 = bitcast %struct.g_llvm_lv* %45 to %struct.g_llvm_vg*
  %47 = load i32, i32* @lv_next, align 4
  %48 = call i32 @LIST_REMOVE(%struct.g_llvm_vg* %46, i32 %47)
  %49 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %4, align 8
  %50 = bitcast %struct.g_llvm_lv* %49 to %struct.g_llvm_vg*
  %51 = load i32, i32* @M_GLLVM, align 4
  %52 = call i32 @free(%struct.g_llvm_vg* %50, i32 %51)
  br label %22

53:                                               ; preds = %22
  %54 = load %struct.g_llvm_vg*, %struct.g_llvm_vg** %2, align 8
  %55 = load i32, i32* @vg_next, align 4
  %56 = call i32 @LIST_REMOVE(%struct.g_llvm_vg* %54, i32 %55)
  %57 = load %struct.g_llvm_vg*, %struct.g_llvm_vg** %2, align 8
  %58 = load i32, i32* @M_GLLVM, align 4
  %59 = call i32 @free(%struct.g_llvm_vg* %57, i32 %58)
  ret void
}

declare dso_local %struct.g_llvm_vg* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.g_llvm_vg*, i32) #1

declare dso_local i32 @free(%struct.g_llvm_vg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
