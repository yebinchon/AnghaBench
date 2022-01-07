; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_do_pfctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_do_pfctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@LEAF_begemotBridgeLayer2PfStatus = common dso_local global i32 0, align 4
@SNMP_OP_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@bridge_sysctl = common dso_local global i32 0, align 4
@bridge_pf_sysctl = common dso_local global %struct.TYPE_2__* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"sysctl(%s) failed - %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bridge_do_pfctl(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @LEAF_begemotBridgeLayer2PfStatus, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %69

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SNMP_OP_SET, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  store i64 4, i64* %10, align 8
  br label %25

24:                                               ; preds = %17
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %24, %21
  store i64 4, i64* %9, align 8
  %26 = load i32, i32* @bridge_sysctl, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bridge_pf_sysctl, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %32)
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %69

37:                                               ; preds = %25
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @SNMP_OP_SET, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %44

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi i32* [ %12, %42 ], [ null, %43 ]
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @sysctlbyname(i8* %38, i32* %11, i64* %9, i32* %45, i64 %46)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32, i32* @LOG_ERR, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @strerror(i32 %52)
  %54 = call i32 @syslog(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32 %53)
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @free(i8* %55)
  store i32 -1, i32* %4, align 4
  br label %69

57:                                               ; preds = %44
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bridge_pf_sysctl, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %57, %49, %36, %16
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @asprintf(i8**, i8*, i32, i32) #1

declare dso_local i32 @sysctlbyname(i8*, i32*, i64*, i32*, i64) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
