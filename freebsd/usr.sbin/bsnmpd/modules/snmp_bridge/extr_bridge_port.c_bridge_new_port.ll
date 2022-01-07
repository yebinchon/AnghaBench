; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_new_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_port.c_bridge_new_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_port = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.mibif = type { i32, i32, i32 }
%struct.bridge_if = type { i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"bridge new member: failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@oid_zeroDotZero = common dso_local global i32 0, align 4
@TruthValue_false = common dso_local global i8* null, align 8
@StpPortAdminPointToPointType_auto = common dso_local global i32 0, align 4
@bridge_ports = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bridge_port* @bridge_new_port(%struct.mibif* %0, %struct.bridge_if* %1) #0 {
  %3 = alloca %struct.bridge_port*, align 8
  %4 = alloca %struct.mibif*, align 8
  %5 = alloca %struct.bridge_if*, align 8
  %6 = alloca %struct.bridge_port*, align 8
  store %struct.mibif* %0, %struct.mibif** %4, align 8
  store %struct.bridge_if* %1, %struct.bridge_if** %5, align 8
  %7 = call i64 @malloc(i32 64)
  %8 = inttoptr i64 %7 to %struct.bridge_port*
  store %struct.bridge_port* %8, %struct.bridge_port** %6, align 8
  %9 = icmp eq %struct.bridge_port* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @LOG_ERR, align 4
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @strerror(i32 %12)
  %14 = call i32 @syslog(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13)
  store %struct.bridge_port* null, %struct.bridge_port** %3, align 8
  br label %64

15:                                               ; preds = %2
  %16 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %17 = call i32 @bzero(%struct.bridge_port* %16, i32 64)
  %18 = load %struct.bridge_if*, %struct.bridge_if** %5, align 8
  %19 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %22 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mibif*, %struct.mibif** %4, align 8
  %24 = getelementptr inbounds %struct.mibif, %struct.mibif* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %27 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mibif*, %struct.mibif** %4, align 8
  %29 = getelementptr inbounds %struct.mibif, %struct.mibif* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %32 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %34 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mibif*, %struct.mibif** %4, align 8
  %37 = getelementptr inbounds %struct.mibif, %struct.mibif* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFNAMSIZ, align 4
  %40 = call i32 @strlcpy(i32 %35, i32 %38, i32 %39)
  %41 = load i32, i32* @oid_zeroDotZero, align 4
  %42 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %43 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** @TruthValue_false, align 8
  %45 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %46 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @TruthValue_false, align 8
  %48 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %49 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @TruthValue_false, align 8
  %51 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %52 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @TruthValue_false, align 8
  %54 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %55 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @StpPortAdminPointToPointType_auto, align 4
  %57 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %58 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  %60 = load %struct.bridge_if*, %struct.bridge_if** %5, align 8
  %61 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %60, i32 0, i32 0
  %62 = call i32 @bridge_port_memif_insert(i32* @bridge_ports, %struct.bridge_port* %59, i32* %61)
  %63 = load %struct.bridge_port*, %struct.bridge_port** %6, align 8
  store %struct.bridge_port* %63, %struct.bridge_port** %3, align 8
  br label %64

64:                                               ; preds = %15, %10
  %65 = load %struct.bridge_port*, %struct.bridge_port** %3, align 8
  ret %struct.bridge_port* %65
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @bzero(%struct.bridge_port*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @bridge_port_memif_insert(i32*, %struct.bridge_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
