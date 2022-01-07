; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_mpc85xx_jog.c_mpc85xx_jog_devcompat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_mpc85xx_jog.c_mpc85xx_jog_devcompat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_compat_data = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"/soc\00", align 1
@jog_compat = common dso_local global %struct.ofw_compat_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ofw_compat_data* ()* @mpc85xx_jog_devcompat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ofw_compat_data* @mpc85xx_jog_devcompat() #0 {
  %1 = alloca %struct.ofw_compat_data*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @OF_finddevice(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.ofw_compat_data* null, %struct.ofw_compat_data** %1, align 8
  br label %46

8:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %29, %8
  %10 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** @jog_compat, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %10, i64 %12
  %14 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %9
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** @jog_compat, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %19, i64 %21
  %23 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @ofw_bus_find_compatible(i32 %18, i32* %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %32

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %9

32:                                               ; preds = %27, %9
  %33 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** @jog_compat, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %33, i64 %35
  %37 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store %struct.ofw_compat_data* null, %struct.ofw_compat_data** %1, align 8
  br label %46

41:                                               ; preds = %32
  %42 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** @jog_compat, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %42, i64 %44
  store %struct.ofw_compat_data* %45, %struct.ofw_compat_data** %1, align 8
  br label %46

46:                                               ; preds = %41, %40, %7
  %47 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %1, align 8
  ret %struct.ofw_compat_data* %47
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i64 @ofw_bus_find_compatible(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
