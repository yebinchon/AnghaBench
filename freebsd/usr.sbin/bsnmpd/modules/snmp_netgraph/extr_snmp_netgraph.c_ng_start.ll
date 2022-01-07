; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ng_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@snmp_node = common dso_local global i64 0, align 8
@snmp_nodename = common dso_local global i32 0, align 4
@csock = common dso_local global i32 0, align 4
@dsock = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"NgMkSockNode: %m\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".:\00", align 1
@csock_input = common dso_local global i32 0, align 4
@module = common dso_local global i32 0, align 4
@csock_fd = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"fd_select failed on csock: %m\00", align 1
@dsock_input = common dso_local global i32 0, align 4
@dsock_fd = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"fd_select failed on dsock: %m\00", align 1
@oid_begemotNg = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"The MIB for the NetGraph access module for SNMP.\00", align 1
@reg_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ng_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_start() #0 {
  %1 = load i64, i64* @snmp_node, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = load i32, i32* @snmp_nodename, align 4
  %5 = call i64 @NgMkSockNode(i32 %4, i32* @csock, i32* @dsock)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = load i32, i32* @LOG_ERR, align 4
  %9 = call i32 @syslog(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @exit(i32 1) #3
  unreachable

11:                                               ; preds = %3
  %12 = call i64 @ng_node_id(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %12, i64* @snmp_node, align 8
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i32, i32* @csock, align 4
  %15 = load i32, i32* @csock_input, align 4
  %16 = load i32, i32* @module, align 4
  %17 = call i8* @fd_select(i32 %14, i32 %15, i32* null, i32 %16)
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** @csock_fd, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = call i32 @syslog(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %36

23:                                               ; preds = %13
  %24 = load i32, i32* @dsock, align 4
  %25 = load i32, i32* @dsock_input, align 4
  %26 = load i32, i32* @module, align 4
  %27 = call i8* @fd_select(i32 %24, i32 %25, i32* null, i32 %26)
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** @dsock_fd, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @LOG_ERR, align 4
  %32 = call i32 @syslog(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @module, align 4
  %35 = call i32 @or_register(i32* @oid_begemotNg, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  store i32 %35, i32* @reg_index, align 4
  br label %36

36:                                               ; preds = %33, %30, %20
  ret void
}

declare dso_local i64 @NgMkSockNode(i32, i32*, i32*) #1

declare dso_local i32 @syslog(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @ng_node_id(i8*) #1

declare dso_local i8* @fd_select(i32, i32, i32*, i32) #1

declare dso_local i32 @or_register(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
