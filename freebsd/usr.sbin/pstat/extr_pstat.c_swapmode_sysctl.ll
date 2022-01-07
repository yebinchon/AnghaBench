; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_swapmode_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_swapmode_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_swap = type { i32, i32, i32, i32 }
%struct.xswdev = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"vm.swap_info\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"sysctlnametomib()\00", align 1
@XSWDEV_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"xswdev version mismatch\00", align 1
@NODEV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"<NFSfile>\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@S_IFCHR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"sysctl()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @swapmode_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swapmode_sysctl() #0 {
  %1 = alloca %struct.kvm_swap, align 4
  %2 = alloca %struct.xswdev, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [16 x i32], align 16
  %6 = alloca i32, align 4
  %7 = call i32 (...) @print_swap_header()
  store i64 16, i64* %3, align 8
  %8 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %9 = call i32 @sysctlnametomib(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %8, i64* %3)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %59, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %16
  store i32 %15, i32* %17, align 4
  store i64 32, i64* %4, align 8
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 1
  %21 = call i32 @sysctl(i32* %18, i64 %20, %struct.xswdev* %2, i64* %4, i32* null, i32 0)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %62

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.xswdev, %struct.xswdev* %2, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XSWDEV_VERSION, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = getelementptr inbounds %struct.xswdev, %struct.xswdev* %2, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NODEV, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %1, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %38, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %48

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %1, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.xswdev, %struct.xswdev* %2, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @S_IFCHR, align 4
  %46 = call i8* @devname(i64 %44, i32 %45)
  %47 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %42, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %40, %36
  %49 = getelementptr inbounds %struct.xswdev, %struct.xswdev* %2, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %1, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.xswdev, %struct.xswdev* %2, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %1, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.xswdev, %struct.xswdev* %2, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %1, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = call i32 @print_swap(%struct.kvm_swap* %1)
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %14

62:                                               ; preds = %23
  %63 = load i64, i64* @errno, align 8
  %64 = load i64, i64* @ENOENT, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %62
  %69 = call i32 (...) @print_swap_total()
  ret void
}

declare dso_local i32 @print_swap_header(...) #1

declare dso_local i32 @sysctlnametomib(i8*, i32*, i64*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sysctl(i32*, i64, %struct.xswdev*, i64*, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i8* @devname(i64, i32) #1

declare dso_local i32 @print_swap(%struct.kvm_swap*) #1

declare dso_local i32 @print_swap_total(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
