; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/coretemp/extr_coretemp.c_coretemp_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/coretemp/extr_coretemp.c_coretemp_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"coretemp\00", align 1
@cpu_high = common dso_local global i32 0, align 4
@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"add coretemp child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @coretemp_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coretemp_identify(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [4 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32* @device_find_child(i32* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 -1)
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %35

11:                                               ; preds = %2
  %12 = load i32, i32* @cpu_high, align 4
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* @cpu_vendor_id, align 8
  %16 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %11
  br label %35

19:                                               ; preds = %14
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %21 = call i32 @do_cpuid(i32 6, i32* %20)
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %23 = load i32, i32* %22, align 16
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %35

27:                                               ; preds = %19
  %28 = load i32*, i32** %4, align 8
  %29 = call i32* @device_add_child(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @device_printf(i32* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %10, %18, %26, %32, %27
  ret void
}

declare dso_local i32* @device_find_child(i32*, i8*, i32) #1

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
