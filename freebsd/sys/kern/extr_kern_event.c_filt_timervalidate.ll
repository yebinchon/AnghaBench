; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_timervalidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_timervalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i32 }
%struct.bintime = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@NOTE_TIMER_PRECMASK = common dso_local global i32 0, align 4
@NOTE_ABSTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64*)* @filt_timervalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_timervalidate(%struct.knote* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.bintime, align 4
  %7 = alloca i64, align 8
  store %struct.knote* %0, %struct.knote** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.knote*, %struct.knote** %4, align 8
  %9 = getelementptr inbounds %struct.knote, %struct.knote* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %72

14:                                               ; preds = %2
  %15 = load %struct.knote*, %struct.knote** %4, align 8
  %16 = getelementptr inbounds %struct.knote, %struct.knote* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.knote*, %struct.knote** %4, align 8
  %21 = getelementptr inbounds %struct.knote, %struct.knote* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EV_ONESHOT, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.knote*, %struct.knote** %4, align 8
  %28 = getelementptr inbounds %struct.knote, %struct.knote* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %19, %14
  %30 = load %struct.knote*, %struct.knote** %4, align 8
  %31 = getelementptr inbounds %struct.knote, %struct.knote* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NOTE_TIMER_PRECMASK, align 4
  %34 = load i32, i32* @NOTE_ABSTIME, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %72

41:                                               ; preds = %29
  %42 = load %struct.knote*, %struct.knote** %4, align 8
  %43 = getelementptr inbounds %struct.knote, %struct.knote* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.knote*, %struct.knote** %4, align 8
  %46 = getelementptr inbounds %struct.knote, %struct.knote* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @timer2sbintime(i32 %44, i32 %47)
  %49 = load i64*, i64** %5, align 8
  store i64 %48, i64* %49, align 8
  %50 = load %struct.knote*, %struct.knote** %4, align 8
  %51 = getelementptr inbounds %struct.knote, %struct.knote* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NOTE_ABSTIME, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %41
  %57 = call i32 @getboottimebin(%struct.bintime* %6)
  %58 = getelementptr inbounds %struct.bintime, %struct.bintime* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @bttosbt(i32 %59)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64*, i64** %5, align 8
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, %61
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %56, %41
  %66 = load i64*, i64** %5, align 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %69, %39, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @timer2sbintime(i32, i32) #1

declare dso_local i32 @getboottimebin(%struct.bintime*) #1

declare dso_local i64 @bttosbt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
