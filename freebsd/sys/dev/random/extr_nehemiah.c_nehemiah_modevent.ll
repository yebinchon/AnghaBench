; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/random/extr_nehemiah.c_nehemiah_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/random/extr_nehemiah.c_nehemiah_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@via_feature_rng = common dso_local global i32 0, align 4
@VIA_HAS_RNG = common dso_local global i32 0, align 4
@random_nehemiah = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"random: fast provider: \22%s\22\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @nehemiah_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nehemiah_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %30 [
    i32 130, label %9
    i32 128, label %20
    i32 129, label %29
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @via_feature_rng, align 4
  %11 = load i32, i32* @VIA_HAS_RNG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = call i32 @random_source_register(%struct.TYPE_4__* @random_nehemiah)
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @random_nehemiah, i32 0, i32 0), align 8
  %17 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i32 (...) @random_nehemiah_init()
  br label %19

19:                                               ; preds = %14, %9
  br label %32

20:                                               ; preds = %3
  %21 = load i32, i32* @via_feature_rng, align 4
  %22 = load i32, i32* @VIA_HAS_RNG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i32 (...) @random_nehemiah_deinit()
  %27 = call i32 @random_source_deregister(%struct.TYPE_4__* @random_nehemiah)
  br label %28

28:                                               ; preds = %25, %20
  br label %32

29:                                               ; preds = %3
  br label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %29, %28, %19
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @random_source_register(%struct.TYPE_4__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @random_nehemiah_init(...) #1

declare dso_local i32 @random_nehemiah_deinit(...) #1

declare dso_local i32 @random_source_deregister(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
