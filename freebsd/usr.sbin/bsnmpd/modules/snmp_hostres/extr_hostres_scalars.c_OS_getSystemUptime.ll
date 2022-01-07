; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_scalars.c_OS_getSystemUptime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_scalars.c_OS_getSystemUptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@kernel_boot = common dso_local global i32 0, align 4
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_BOOTTIME = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sysctl KERN_BOOTTIME failed: %m\00", align 1
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"boot timestamp from kernel: {%lld, %ld}\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"gettimeofday failed: %m\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OS_getSystemUptime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OS_getSystemUptime(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* @kernel_boot, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %1
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %13 = load i32, i32* @CTL_KERN, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @KERN_BOOTTIME, align 4
  store i32 %15, i32* %14, align 4
  store i64 16, i64* %8, align 8
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %18 = call i32 @nitems(i32* %17)
  %19 = call i32 @sysctl(i32* %16, i32 %18, %struct.timeval* %6, i64* %8, i32* null, i32 0)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = call i32 @syslog(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %24, i32* %2, align 4
  br label %71

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = call i32 @HRDBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %27, i64 %30)
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = mul nsw i32 %34, 100
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %37, 10000
  %39 = add nsw i32 %35, %38
  store i32 %39, i32* @kernel_boot, align 4
  br label %40

40:                                               ; preds = %25, %1
  %41 = call i64 @gettimeofday(%struct.timeval* %4, i32* null)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @LOG_ERR, align 4
  %45 = call i32 @syslog(i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %46, i32* %2, align 4
  br label %71

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = mul nsw i32 %50, 100
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sdiv i32 %53, 10000
  %55 = add nsw i32 %51, %54
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @kernel_boot, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* @UINT32_MAX, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = load i32, i32* @UINT32_MAX, align 4
  %63 = load i32*, i32** %3, align 8
  store i32 %62, i32* %63, align 4
  br label %69

64:                                               ; preds = %47
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @kernel_boot, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32*, i32** %3, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %61
  %70 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %43, %21
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @sysctl(i32*, i32, %struct.timeval*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @HRDBG(i8*, i64, i64) #1

declare dso_local i64 @gettimeofday(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
