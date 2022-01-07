; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_board.c_nlm_get_vfbid_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_board.c_nlm_get_vfbid_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfbid_tbl = type { i32, i32 }

@nlm3xx_vfbid = common dso_local global %struct.vfbid_tbl* null, align 8
@nlm_vfbid = common dso_local global %struct.vfbid_tbl* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_get_vfbid_mapping(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfbid_tbl*, align 8
  store i32 %0, i32* %3, align 4
  %7 = call i64 (...) @nlm_is_xlp3xx()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.vfbid_tbl*, %struct.vfbid_tbl** @nlm3xx_vfbid, align 8
  %11 = call i32 @nitems(%struct.vfbid_tbl* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.vfbid_tbl*, %struct.vfbid_tbl** @nlm3xx_vfbid, align 8
  store %struct.vfbid_tbl* %12, %struct.vfbid_tbl** %6, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.vfbid_tbl*, %struct.vfbid_tbl** @nlm_vfbid, align 8
  %15 = call i32 @nitems(%struct.vfbid_tbl* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.vfbid_tbl*, %struct.vfbid_tbl** @nlm_vfbid, align 8
  store %struct.vfbid_tbl* %16, %struct.vfbid_tbl** %6, align 8
  br label %17

17:                                               ; preds = %13, %9
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %39, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load %struct.vfbid_tbl*, %struct.vfbid_tbl** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.vfbid_tbl, %struct.vfbid_tbl* %23, i64 %25
  %27 = getelementptr inbounds %struct.vfbid_tbl, %struct.vfbid_tbl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.vfbid_tbl*, %struct.vfbid_tbl** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.vfbid_tbl, %struct.vfbid_tbl* %32, i64 %34
  %36 = getelementptr inbounds %struct.vfbid_tbl, %struct.vfbid_tbl* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  br label %43

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %18

42:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @nlm_is_xlp3xx(...) #1

declare dso_local i32 @nitems(%struct.vfbid_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
