; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lptout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lptout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpt_data = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"T %x \00", align 1
@OPEN = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@LPTOUTMAX = common dso_local global i32 0, align 4
@TOUT = common dso_local global i32 0, align 4
@EERROR = common dso_local global i32 0, align 4
@OBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @lptout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lptout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lpt_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.lpt_data*
  store %struct.lpt_data* %7, %struct.lpt_data** %3, align 8
  %8 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %9 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ppb_assert_locked(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ppb_rstr(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @lprintf(i8* %18)
  %20 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %21 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @OPEN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %1
  %27 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %28 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %32 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @hz, align 4
  %35 = load i32, i32* @LPTOUTMAX, align 4
  %36 = sdiv i32 %34, %35
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load i32, i32* @hz, align 4
  %40 = load i32, i32* @LPTOUTMAX, align 4
  %41 = sdiv i32 %39, %40
  %42 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %43 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %26
  %45 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %46 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %45, i32 0, i32 3
  %47 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %48 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %51 = call i32 @callout_reset(i32* %46, i32 %49, void (i8*)* @lptout, %struct.lpt_data* %50)
  br label %59

52:                                               ; preds = %1
  %53 = load i32, i32* @TOUT, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %56 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %52, %44
  %60 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %61 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @EERROR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i32, i32* @EERROR, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %70 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %66, %59
  %74 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %75 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %80 = call i32 @lptintr(%struct.lpt_data* %79)
  br label %90

81:                                               ; preds = %73
  %82 = load i32, i32* @OBUSY, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.lpt_data*, %struct.lpt_data** %3, align 8
  %85 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @wakeup(i32 %88)
  br label %90

90:                                               ; preds = %81, %78
  ret void
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_assert_locked(i32) #1

declare dso_local i32 @lprintf(i8*) #1

declare dso_local i32 @ppb_rstr(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.lpt_data*) #1

declare dso_local i32 @lptintr(%struct.lpt_data*) #1

declare dso_local i32 @wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
