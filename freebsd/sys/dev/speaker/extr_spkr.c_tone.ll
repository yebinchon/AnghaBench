; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/speaker/extr_spkr.c_tone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/speaker/extr_spkr.c_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hz = common dso_local global i32 0, align 4
@endtone = common dso_local global i32 0, align 4
@SPKRPRI = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"spkrtn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tone(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ule i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %41

10:                                               ; preds = %2
  %11 = call i32 (...) @splclock()
  store i32 %11, i32* %5, align 4
  %12 = call i64 (...) @timer_spkr_acquire()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @splx(i32 %15)
  br label %41

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @splx(i32 %18)
  %20 = call i32 (...) @disable_intr()
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @timer_spkr_setfreq(i32 %21)
  %23 = call i32 (...) @enable_intr()
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @hz, align 4
  %26 = mul i32 %24, %25
  %27 = udiv i32 %26, 100
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %17
  %31 = load i32, i32* @SPKRPRI, align 4
  %32 = load i32, i32* @PCATCH, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @tsleep(i32* @endtone, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %30, %17
  %37 = call i32 (...) @splclock()
  store i32 %37, i32* %5, align 4
  %38 = call i32 (...) @timer_spkr_release()
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @splx(i32 %39)
  br label %41

41:                                               ; preds = %36, %14, %9
  ret void
}

declare dso_local i32 @splclock(...) #1

declare dso_local i64 @timer_spkr_acquire(...) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @disable_intr(...) #1

declare dso_local i32 @timer_spkr_setfreq(i32) #1

declare dso_local i32 @enable_intr(...) #1

declare dso_local i32 @tsleep(i32*, i32, i8*, i32) #1

declare dso_local i32 @timer_spkr_release(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
