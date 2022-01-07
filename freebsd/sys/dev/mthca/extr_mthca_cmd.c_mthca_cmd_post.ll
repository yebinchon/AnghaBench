; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_cmd_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_cmd_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MTHCA_CMD_POST_DOORBELLS = common dso_local global i32 0, align 4
@fw_cmd_doorbell = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, i32, i32, i32, i32, i32, i32, i32)* @mthca_cmd_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_cmd_post(%struct.mthca_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.mthca_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %19 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* %16, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %8
  %25 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %26 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MTHCA_CMD_POST_DOORBELLS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %24
  %33 = load i64, i64* @fw_cmd_doorbell, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @mthca_cmd_post_dbell(%struct.mthca_dev* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  br label %54

44:                                               ; preds = %32, %24, %8
  %45 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @mthca_cmd_post_hcr(%struct.mthca_dev* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %17, align 4
  br label %54

54:                                               ; preds = %44, %35
  %55 = call i32 (...) @mmiowb()
  %56 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %57 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %17, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mthca_cmd_post_dbell(%struct.mthca_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mthca_cmd_post_hcr(%struct.mthca_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
