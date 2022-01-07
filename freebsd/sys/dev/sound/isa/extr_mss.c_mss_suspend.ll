; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i64, i32*, i32* }

@MD_YM0020 = common dso_local global i64 0, align 8
@MD_CS423X = common dso_local global i64 0, align 8
@MSS_INDEXED_REGS = common dso_local global i32 0, align 4
@OPL_INDEXED_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mss_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mss_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mss_info*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.mss_info* @pcm_getdevinfo(i32 %5)
  store %struct.mss_info* %6, %struct.mss_info** %4, align 8
  %7 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %8 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MD_YM0020, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %14 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MD_CS423X, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %12, %1
  %19 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %20 = call i32 @conf_wr(%struct.mss_info* %19, i32 18, i32 12)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %35, %18
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @MSS_INDEXED_REGS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @ad_read(%struct.mss_info* %26, i32 %27)
  %29 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %30 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %21

38:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %53, %38
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @OPL_INDEXED_REGS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @conf_rd(%struct.mss_info* %44, i32 %45)
  %47 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %48 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %39

56:                                               ; preds = %39
  %57 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %58 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 18
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %12
  ret i32 0
}

declare dso_local %struct.mss_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @conf_wr(%struct.mss_info*, i32, i32) #1

declare dso_local i32 @ad_read(%struct.mss_info*, i32) #1

declare dso_local i32 @conf_rd(%struct.mss_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
