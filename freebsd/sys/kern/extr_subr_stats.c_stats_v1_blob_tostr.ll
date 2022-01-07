; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_blob_tostr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_v1_blob_tostr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statsblobv1 = type { i64, i32 }
%struct.sbuf = type { i32 }
%struct.sb_tostrcb_ctx = type { i32, i32, i32*, %struct.sbuf* }

@STATS_ABI_V1 = common dso_local global i64 0, align 8
@SB_STRFMT_NUM_FMTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SB_TOSTR_META = common dso_local global i32 0, align 4
@SB_TOSTR_OBJDUMP = common dso_local global i32 0, align 4
@SB_IT_NULLVOI = common dso_local global i32 0, align 4
@SB_IT_NULLVOISTAT = common dso_local global i32 0, align 4
@stats_v1_itercb_tostr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stats_v1_blob_tostr(%struct.statsblobv1* %0, %struct.sbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.statsblobv1*, align 8
  %7 = alloca %struct.sbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sb_tostrcb_ctx, align 8
  %11 = alloca i32, align 4
  store %struct.statsblobv1* %0, %struct.statsblobv1** %6, align 8
  store %struct.sbuf* %1, %struct.sbuf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.statsblobv1*, %struct.statsblobv1** %6, align 8
  %13 = icmp eq %struct.statsblobv1* %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %4
  %15 = load %struct.statsblobv1*, %struct.statsblobv1** %6, align 8
  %16 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @STATS_ABI_V1, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %22 = icmp eq %struct.sbuf* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @SB_STRFMT_NUM_FMTS, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %20, %14, %4
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %71

29:                                               ; preds = %23
  %30 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %31 = getelementptr inbounds %struct.sb_tostrcb_ctx, %struct.sb_tostrcb_ctx* %10, i32 0, i32 3
  store %struct.sbuf* %30, %struct.sbuf** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds %struct.sb_tostrcb_ctx, %struct.sb_tostrcb_ctx* %10, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds %struct.sb_tostrcb_ctx, %struct.sb_tostrcb_ctx* %10, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @SB_TOSTR_META, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %29
  %41 = load %struct.statsblobv1*, %struct.statsblobv1** %6, align 8
  %42 = getelementptr inbounds %struct.statsblobv1, %struct.statsblobv1* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @stats_tpl_fetch_allocid(i32* null, i32 %43)
  %45 = getelementptr inbounds %struct.sb_tostrcb_ctx, %struct.sb_tostrcb_ctx* %10, i32 0, i32 2
  %46 = call i64 @stats_tpl_fetch(i32 %44, i32** %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %5, align 4
  br label %71

50:                                               ; preds = %40
  br label %53

51:                                               ; preds = %29
  %52 = getelementptr inbounds %struct.sb_tostrcb_ctx, %struct.sb_tostrcb_ctx* %10, i32 0, i32 2
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %51, %50
  store i32 0, i32* %11, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @SB_TOSTR_OBJDUMP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @SB_IT_NULLVOI, align 4
  %60 = load i32, i32* @SB_IT_NULLVOISTAT, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.statsblobv1*, %struct.statsblobv1** %6, align 8
  %66 = load i32, i32* @stats_v1_itercb_tostr, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @stats_v1_blob_iter(%struct.statsblobv1* %65, i32 %66, %struct.sb_tostrcb_ctx* %10, i32 %67)
  %69 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %70 = call i32 @sbuf_error(%struct.sbuf* %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %64, %48, %27
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @stats_tpl_fetch(i32, i32**) #1

declare dso_local i32 @stats_tpl_fetch_allocid(i32*, i32) #1

declare dso_local i32 @stats_v1_blob_iter(%struct.statsblobv1*, i32, %struct.sb_tostrcb_ctx*, i32) #1

declare dso_local i32 @sbuf_error(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
