; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_wait_for_calibration.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_wait_for_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i64 }

@MSS_IDXBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"mss: Auto calibration timed out(1).\0A\00", align 1
@MD_GUSMAX = common dso_local global i64 0, align 8
@MD_GUSPNP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mss_info*)* @wait_for_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_calibration(%struct.mss_info* %0) #0 {
  %2 = alloca %struct.mss_info*, align 8
  %3 = alloca i32, align 4
  store %struct.mss_info* %0, %struct.mss_info** %2, align 8
  %4 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %5 = call i32 @ad_wait_init(%struct.mss_info* %4, i32 1000000)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MSS_IDXBUSY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %14 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MD_GUSMAX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %20 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MD_GUSPNP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18, %12
  store i32 100, i32* %3, align 4
  br label %25

25:                                               ; preds = %36, %24
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %30 = call i32 @ad_read(%struct.mss_info* %29, i32 11)
  %31 = and i32 %30, 32
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %3, align 4
  br label %25

39:                                               ; preds = %33
  br label %57

40:                                               ; preds = %18
  store i32 100, i32* %3, align 4
  br label %41

41:                                               ; preds = %53, %40
  %42 = load i32, i32* %3, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %46 = call i32 @ad_read(%struct.mss_info* %45, i32 11)
  %47 = and i32 %46, 32
  %48 = icmp eq i32 %47, 0
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi i1 [ false, %41 ], [ %48, %44 ]
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = call i32 @DELAY(i32 100)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %3, align 4
  br label %41

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %39
  store i32 100, i32* %3, align 4
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i32, i32* %3, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.mss_info*, %struct.mss_info** %2, align 8
  %63 = call i32 @ad_read(%struct.mss_info* %62, i32 11)
  %64 = and i32 %63, 32
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %61, %58
  %67 = phi i1 [ false, %58 ], [ %65, %61 ]
  br i1 %67, label %68, label %73

68:                                               ; preds = %66
  %69 = call i32 @DELAY(i32 100)
  br label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %3, align 4
  br label %58

73:                                               ; preds = %66
  ret void
}

declare dso_local i32 @ad_wait_init(%struct.mss_info*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ad_read(%struct.mss_info*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
