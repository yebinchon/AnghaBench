; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_scalars.c_OS_getSystemInitialLoadParameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_scalars.c_OS_getSystemInitialLoadParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boot_line = common dso_local global i8* null, align 8
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_BOOTFILE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"sysctl({CTL_KERN,KERN_BOOTFILE}) failed: %m\00", align 1
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"kernel boot file: %s\00", align 1
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OS_getSystemInitialLoadParameters(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  %7 = load i8*, i8** @boot_line, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %44

9:                                                ; preds = %1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %11 = load i32, i32* @CTL_KERN, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @KERN_BOOTFILE, align 4
  store i32 %13, i32* %12, align 4
  store i64 0, i64* %6, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %15 = call i64 @sysctl(i32* %14, i32 2, i8* null, i64* %6, i32* null, i32 0)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load i32, i32* @LOG_ERR, align 4
  %19 = call i32 @syslog(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %20, i32* %2, align 4
  br label %48

21:                                               ; preds = %9
  %22 = load i64, i64* %6, align 8
  %23 = call i8* @malloc(i64 %22)
  store i8* %23, i8** %5, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = call i32 @syslog(i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %28, i32* %2, align 4
  br label %48

29:                                               ; preds = %21
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @sysctl(i32* %30, i32 2, i8* %31, i64* %6, i32* null, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @LOG_ERR, align 4
  %36 = call i32 @syslog(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %39, i32* %2, align 4
  br label %48

40:                                               ; preds = %29
  %41 = load i8*, i8** %5, align 8
  store i8* %41, i8** @boot_line, align 8
  %42 = load i8*, i8** @boot_line, align 8
  %43 = call i32 @HRDBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %40, %1
  %45 = load i8*, i8** @boot_line, align 8
  %46 = load i8**, i8*** %3, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %34, %25, %17
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @HRDBG(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
