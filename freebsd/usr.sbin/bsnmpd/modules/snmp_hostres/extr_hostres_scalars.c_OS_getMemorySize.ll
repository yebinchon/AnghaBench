; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_scalars.c_OS_getMemorySize.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_scalars.c_OS_getMemorySize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phys_mem_size = common dso_local global i32 0, align 4
@CTL_HW = common dso_local global i32 0, align 4
@HW_PHYSMEM = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"sysctl({ CTL_HW, HW_PHYSMEM }) failed: %m\00", align 1
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OS_getMemorySize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OS_getMemorySize(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @phys_mem_size, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %11 = load i32, i32* @CTL_HW, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @HW_PHYSMEM, align 4
  store i32 %13, i32* %12, align 4
  store i64 4, i64* %6, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %15 = call i32 @sysctl(i32* %14, i32 2, i32* %5, i64* %6, i32* null, i32 0)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load i32, i32* @LOG_ERR, align 4
  %19 = call i32 @syslog(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %9
  %22 = load i32, i32* %5, align 4
  %23 = sdiv i32 %22, 1024
  store i32 %23, i32* @phys_mem_size, align 4
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i32, i32* @phys_mem_size, align 4
  %26 = load i32, i32* @UINT32_MAX, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @UINT32_MAX, align 4
  %30 = load i32*, i32** %3, align 8
  store i32 %29, i32* %30, align 4
  br label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @phys_mem_size, align 4
  %33 = load i32*, i32** %3, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %17
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @sysctl(i32*, i32, i32*, i64*, i32*, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
