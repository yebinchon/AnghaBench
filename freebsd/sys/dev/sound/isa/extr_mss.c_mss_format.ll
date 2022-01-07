; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_chinfo = type { i32, %struct.mss_info* }
%struct.mss_info = type { i32 }

@mss_format.fmts = internal global [8 x i32] [i32 128, i32 131, i32 130, i32 133, i32 -1, i32 132, i32 129, i32 -1], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mss_chinfo*, i32)* @mss_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mss_format(%struct.mss_chinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.mss_chinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mss_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mss_chinfo* %0, %struct.mss_chinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mss_chinfo*, %struct.mss_chinfo** %3, align 8
  %9 = getelementptr inbounds %struct.mss_chinfo, %struct.mss_chinfo* %8, i32 0, i32 1
  %10 = load %struct.mss_info*, %struct.mss_info** %9, align 8
  store %struct.mss_info* %10, %struct.mss_info** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @AFMT_ENCODING(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mss_chinfo*, %struct.mss_chinfo** %3, align 8
  %15 = getelementptr inbounds %struct.mss_chinfo, %struct.mss_chinfo* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %28, %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* @mss_format.fmts, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %31

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %16

31:                                               ; preds = %26, %16
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @AFMT_CHANNEL(i32 %34)
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 4
  store i32 %42, i32* %7, align 4
  %43 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %44 = call i32 @ad_enter_MCE(%struct.mss_info* %43)
  %45 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %46 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %47 = call i32 @ad_read(%struct.mss_info* %46, i32 8)
  %48 = and i32 %47, 15
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @ad_write(%struct.mss_info* %45, i32 8, i32 %50)
  %52 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %53 = call i32 @ad_wait_init(%struct.mss_info* %52, i32 10000)
  %54 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %55 = call i32 @ad_read(%struct.mss_info* %54, i32 12)
  %56 = and i32 %55, 64
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %40
  %59 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ad_write(%struct.mss_info* %59, i32 28, i32 %60)
  %62 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %63 = call i32 @ad_wait_init(%struct.mss_info* %62, i32 10000)
  br label %64

64:                                               ; preds = %58, %40
  %65 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %66 = call i32 @ad_leave_MCE(%struct.mss_info* %65)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @AFMT_ENCODING(i32) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @ad_enter_MCE(%struct.mss_info*) #1

declare dso_local i32 @ad_write(%struct.mss_info*, i32, i32) #1

declare dso_local i32 @ad_read(%struct.mss_info*, i32) #1

declare dso_local i32 @ad_wait_init(%struct.mss_info*, i32) #1

declare dso_local i32 @ad_leave_MCE(%struct.mss_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
