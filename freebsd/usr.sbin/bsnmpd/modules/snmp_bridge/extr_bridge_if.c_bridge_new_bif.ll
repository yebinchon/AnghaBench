; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_new_bif.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_if.c_bridge_new_bif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_if = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"bridge new interface failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@BaseType_transparent_only = common dso_local global i32 0, align 4
@dot1dStpProtocolSpecification_ieee8021d = common dso_local global i32 0, align 4
@bridge_ifs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bridge_if* (i8*, i32, i32*)* @bridge_new_bif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bridge_if* @bridge_new_bif(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.bridge_if*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bridge_if*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = call i64 @malloc(i32 24)
  %10 = inttoptr i64 %9 to %struct.bridge_if*
  store %struct.bridge_if* %10, %struct.bridge_if** %8, align 8
  %11 = icmp eq %struct.bridge_if* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* @LOG_ERR, align 4
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = call i32 @syslog(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %15)
  store %struct.bridge_if* null, %struct.bridge_if** %4, align 8
  br label %47

17:                                               ; preds = %3
  %18 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %19 = call i32 @bzero(%struct.bridge_if* %18, i32 24)
  %20 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %21 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @IFNAMSIZ, align 4
  %25 = call i32 @strlcpy(i32 %22, i8* %23, i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %28 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %32 = call i32 @bcopy(i32* %26, i32 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %35 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @BaseType_transparent_only, align 4
  %37 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %38 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %40 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %39, i32 0, i32 0
  store i32 100, i32* %40, align 4
  %41 = load i32, i32* @dot1dStpProtocolSpecification_ieee8021d, align 4
  %42 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %43 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  %45 = call i32 @bridge_ifs_insert(i32* @bridge_ifs, %struct.bridge_if* %44)
  %46 = load %struct.bridge_if*, %struct.bridge_if** %8, align 8
  store %struct.bridge_if* %46, %struct.bridge_if** %4, align 8
  br label %47

47:                                               ; preds = %17, %12
  %48 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  ret %struct.bridge_if* %48
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @bzero(%struct.bridge_if*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @bridge_ifs_insert(i32*, %struct.bridge_if*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
