; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_itercb_tostr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_itercb_tostr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statsblobv1 = type { i32 }
%struct.voi = type { i32 }
%struct.voistat = type { i32 }
%struct.sb_iter_ctx = type { %struct.sb_tostrcb_ctx* }
%struct.sb_tostrcb_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.statsblobv1*, %struct.voi*, %struct.voistat*, %struct.sb_iter_ctx*)* @stats_v1_itercb_tostr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_v1_itercb_tostr(%struct.statsblobv1* %0, %struct.voi* %1, %struct.voistat* %2, %struct.sb_iter_ctx* %3) #0 {
  %5 = alloca %struct.statsblobv1*, align 8
  %6 = alloca %struct.voi*, align 8
  %7 = alloca %struct.voistat*, align 8
  %8 = alloca %struct.sb_iter_ctx*, align 8
  %9 = alloca %struct.sb_tostrcb_ctx*, align 8
  store %struct.statsblobv1* %0, %struct.statsblobv1** %5, align 8
  store %struct.voi* %1, %struct.voi** %6, align 8
  store %struct.voistat* %2, %struct.voistat** %7, align 8
  store %struct.sb_iter_ctx* %3, %struct.sb_iter_ctx** %8, align 8
  %10 = load %struct.sb_iter_ctx*, %struct.sb_iter_ctx** %8, align 8
  %11 = getelementptr inbounds %struct.sb_iter_ctx, %struct.sb_iter_ctx* %10, i32 0, i32 0
  %12 = load %struct.sb_tostrcb_ctx*, %struct.sb_tostrcb_ctx** %11, align 8
  store %struct.sb_tostrcb_ctx* %12, %struct.sb_tostrcb_ctx** %9, align 8
  %13 = load %struct.sb_tostrcb_ctx*, %struct.sb_tostrcb_ctx** %9, align 8
  %14 = getelementptr inbounds %struct.sb_tostrcb_ctx, %struct.sb_tostrcb_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %28 [
    i32 129, label %16
    i32 128, label %22
  ]

16:                                               ; preds = %4
  %17 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %18 = load %struct.voi*, %struct.voi** %6, align 8
  %19 = load %struct.voistat*, %struct.voistat** %7, align 8
  %20 = load %struct.sb_iter_ctx*, %struct.sb_iter_ctx** %8, align 8
  %21 = call i32 @stats_v1_itercb_tostr_freeform(%struct.statsblobv1* %17, %struct.voi* %18, %struct.voistat* %19, %struct.sb_iter_ctx* %20)
  br label %29

22:                                               ; preds = %4
  %23 = load %struct.statsblobv1*, %struct.statsblobv1** %5, align 8
  %24 = load %struct.voi*, %struct.voi** %6, align 8
  %25 = load %struct.voistat*, %struct.voistat** %7, align 8
  %26 = load %struct.sb_iter_ctx*, %struct.sb_iter_ctx** %8, align 8
  %27 = call i32 @stats_v1_itercb_tostr_json(%struct.statsblobv1* %23, %struct.voi* %24, %struct.voistat* %25, %struct.sb_iter_ctx* %26)
  br label %29

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28, %22, %16
  %30 = load %struct.sb_tostrcb_ctx*, %struct.sb_tostrcb_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.sb_tostrcb_ctx, %struct.sb_tostrcb_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sbuf_error(i32 %32)
  ret i32 %33
}

declare dso_local i32 @stats_v1_itercb_tostr_freeform(%struct.statsblobv1*, %struct.voi*, %struct.voistat*, %struct.sb_iter_ctx*) #1

declare dso_local i32 @stats_v1_itercb_tostr_json(%struct.statsblobv1*, %struct.voi*, %struct.voistat*, %struct.sb_iter_ctx*) #1

declare dso_local i32 @sbuf_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
