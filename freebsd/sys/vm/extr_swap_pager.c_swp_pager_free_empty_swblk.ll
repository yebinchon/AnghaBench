; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_free_empty_swblk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_swap_pager.c_swp_pager_free_empty_swblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.swblk = type { i32 }

@SWAP_META_PAGES = common dso_local global i32 0, align 4
@swblk_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.swblk*)* @swp_pager_free_empty_swblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swp_pager_free_empty_swblk(%struct.TYPE_7__* %0, %struct.swblk* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.swblk*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.swblk* %1, %struct.swblk** %4, align 8
  %5 = load %struct.swblk*, %struct.swblk** %4, align 8
  %6 = load i32, i32* @SWAP_META_PAGES, align 4
  %7 = call i64 @swp_pager_swblk_empty(%struct.swblk* %5, i32 0, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.swblk*, %struct.swblk** %4, align 8
  %15 = getelementptr inbounds %struct.swblk, %struct.swblk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @SWAP_PCTRIE_REMOVE(i32* %13, i32 %16)
  %18 = load i32, i32* @swblk_zone, align 4
  %19 = load %struct.swblk*, %struct.swblk** %4, align 8
  %20 = call i32 @uma_zfree(i32 %18, %struct.swblk* %19)
  br label %21

21:                                               ; preds = %9, %2
  ret void
}

declare dso_local i64 @swp_pager_swblk_empty(%struct.swblk*, i32, i32) #1

declare dso_local i32 @SWAP_PCTRIE_REMOVE(i32*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.swblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
