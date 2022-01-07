; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_malta_mp.c_platform_start_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_malta_mp.c_platform_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MVPCONTROL_VPC = common dso_local global i32 0, align 4
@TCSTATUS_A = common dso_local global i32 0, align 4
@VPECONF0_VPA = common dso_local global i32 0, align 4
@malta_ap_boot = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Waiting for cpu%d to start\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"CPU %d started\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"CPU %d failed to start\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_start_ap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 @read_c0_register32(i32 0, i32 1)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @MVPCONTROL_VPC, align 4
  %8 = load i32, i32* %4, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @write_c0_register32(i32 0, i32 1, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @set_thread_context(i32 %12)
  %14 = call i32 @mftc0(i32 2, i32 1)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @TCSTATUS_A, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @mttc0(i32 2, i32 1, i32 %18)
  %20 = call i32 @mttc0(i32 2, i32 4, i32 0)
  %21 = call i32 @mftc0(i32 1, i32 2)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @VPECONF0_VPA, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @mttc0(i32 1, i32 2, i32 %25)
  %27 = call i32 @read_c0_register32(i32 0, i32 1)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @MVPCONTROL_VPC, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @write_c0_register32(i32 0, i32 1, i32 %32)
  %34 = call i32 (...) @evpe()
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @atomic_cmpset_32(i32* @malta_ap_boot, i32 -1, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %57

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 100, i32* %5, align 4
  br label %42

42:                                               ; preds = %50, %39
  %43 = call i32 @DELAY(i32 1000)
  %44 = call i64 @atomic_cmpset_32(i32* @malta_ap_boot, i32 0, i32 -1)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 0, i32* %2, align 4
  br label %57

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %5, align 4
  %53 = icmp ne i32 %51, 0
  br i1 %53, label %42, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %46, %38
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @read_c0_register32(i32, i32) #1

declare dso_local i32 @write_c0_register32(i32, i32, i32) #1

declare dso_local i32 @set_thread_context(i32) #1

declare dso_local i32 @mftc0(i32, i32) #1

declare dso_local i32 @mttc0(i32, i32, i32) #1

declare dso_local i32 @evpe(...) #1

declare dso_local i64 @atomic_cmpset_32(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
