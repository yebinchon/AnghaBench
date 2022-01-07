; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/random/extr_ivy.c_rdrand_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/random/extr_ivy.c_rdrand_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@has_rdrand = common dso_local global i32 0, align 4
@has_rdseed = common dso_local global i32 0, align 4
@random_ivy = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"random: fast provider: \22%s\22\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @rdrand_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdrand_modevent(i32 %0, i32 %1, i8* %2) #0 {
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
  %10 = load i32, i32* @has_rdrand, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @has_rdseed, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %9
  %16 = call i32 @random_source_register(%struct.TYPE_4__* @random_ivy)
  %17 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @random_ivy, i32 0, i32 0), align 8
  %18 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %12
  br label %32

20:                                               ; preds = %3
  %21 = load i32, i32* @has_rdrand, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @has_rdseed, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %20
  %27 = call i32 @random_source_deregister(%struct.TYPE_4__* @random_ivy)
  br label %28

28:                                               ; preds = %26, %23
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

declare dso_local i32 @random_source_deregister(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
