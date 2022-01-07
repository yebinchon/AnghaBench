; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_csock_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_csock_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.msgreg = type { i64, i64, i32, i32 (%struct.ng_mesg*, i8*, i64, i32)* }

@.str = private unnamed_addr constant [8 x i8] c"[%x]:%n\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot parse message path '%s'\00", align 1
@msgreg_list = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ng_mesg*, i8*)* @csock_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csock_handle(%struct.ng_mesg* %0, i8* %1) #0 {
  %3 = alloca %struct.ng_mesg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.msgreg*, align 8
  %6 = alloca %struct.msgreg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ng_mesg* %0, %struct.ng_mesg** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @sscanf(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %7, i32* %8)
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @syslog(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = call %struct.msgreg* @SLIST_FIRST(i32* @msgreg_list)
  store %struct.msgreg* %23, %struct.msgreg** %5, align 8
  br label %24

24:                                               ; preds = %64, %22
  %25 = load %struct.msgreg*, %struct.msgreg** %5, align 8
  %26 = icmp ne %struct.msgreg* %25, null
  br i1 %26, label %27, label %66

27:                                               ; preds = %24
  %28 = load %struct.msgreg*, %struct.msgreg** %5, align 8
  %29 = load i32, i32* @link, align 4
  %30 = call %struct.msgreg* @SLIST_NEXT(%struct.msgreg* %28, i32 %29)
  store %struct.msgreg* %30, %struct.msgreg** %6, align 8
  %31 = load %struct.msgreg*, %struct.msgreg** %5, align 8
  %32 = getelementptr inbounds %struct.msgreg, %struct.msgreg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %35 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %27
  %40 = load %struct.msgreg*, %struct.msgreg** %5, align 8
  %41 = getelementptr inbounds %struct.msgreg, %struct.msgreg* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load %struct.msgreg*, %struct.msgreg** %5, align 8
  %46 = getelementptr inbounds %struct.msgreg, %struct.msgreg* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i64, i64* %7, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %50, %44, %39
  %54 = load %struct.msgreg*, %struct.msgreg** %5, align 8
  %55 = getelementptr inbounds %struct.msgreg, %struct.msgreg* %54, i32 0, i32 3
  %56 = load i32 (%struct.ng_mesg*, i8*, i64, i32)*, i32 (%struct.ng_mesg*, i8*, i64, i32)** %55, align 8
  %57 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.msgreg*, %struct.msgreg** %5, align 8
  %61 = getelementptr inbounds %struct.msgreg, %struct.msgreg* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %56(%struct.ng_mesg* %57, i8* %58, i64 %59, i32 %62)
  br label %64

64:                                               ; preds = %53, %50, %27
  %65 = load %struct.msgreg*, %struct.msgreg** %6, align 8
  store %struct.msgreg* %65, %struct.msgreg** %5, align 8
  br label %24

66:                                               ; preds = %24
  %67 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %68 = call i32 @free(%struct.ng_mesg* %67)
  ret void
}

declare dso_local i32 @sscanf(i8*, i8*, i64*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local %struct.msgreg* @SLIST_FIRST(i32*) #1

declare dso_local %struct.msgreg* @SLIST_NEXT(%struct.msgreg*, i32) #1

declare dso_local i32 @free(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
