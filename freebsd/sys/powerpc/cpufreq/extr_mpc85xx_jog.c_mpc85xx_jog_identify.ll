; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_mpc85xx_jog.c_mpc85xx_jog_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_mpc85xx_jog.c_mpc85xx_jog_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_compat_data = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"mpc85xx_jog\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"jog\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"add jog child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @mpc85xx_jog_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc85xx_jog_identify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ofw_compat_data*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32* @device_find_child(i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 -1)
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %22

10:                                               ; preds = %2
  %11 = call %struct.ofw_compat_data* (...) @mpc85xx_jog_devcompat()
  store %struct.ofw_compat_data* %11, %struct.ofw_compat_data** %5, align 8
  %12 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %5, align 8
  %13 = icmp eq %struct.ofw_compat_data* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %22

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = call i32* @BUS_ADD_CHILD(i32 %16, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %9, %14, %19, %15
  ret void
}

declare dso_local i32* @device_find_child(i32, i8*, i32) #1

declare dso_local %struct.ofw_compat_data* @mpc85xx_jog_devcompat(...) #1

declare dso_local i32* @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
