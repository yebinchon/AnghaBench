; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_csock_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_csock_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { i32 }

@resbufsiz = common dso_local global i32 0, align 4
@stats = common dso_local global i32* null, align 8
@LEAF_begemotNgNoMems = common dso_local global i64 0, align 8
@LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@csock = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@LEAF_begemotNgMsgReadErrs = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"read from csock: %m\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"node closed -- exiting\00", align 1
@LEAF_begemotNgTooLargeMsgs = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"ng message too large\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ng_mesg* (i8*)* @csock_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ng_mesg* @csock_read(i8* %0) #0 {
  %2 = alloca %struct.ng_mesg*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ng_mesg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @resbufsiz, align 4
  %8 = add nsw i32 %7, 1
  %9 = call %struct.ng_mesg* @malloc(i32 %8)
  store %struct.ng_mesg* %9, %struct.ng_mesg** %4, align 8
  %10 = icmp eq %struct.ng_mesg* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i32*, i32** @stats, align 8
  %13 = load i64, i64* @LEAF_begemotNgNoMems, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @LOG_CRIT, align 4
  %18 = call i32 @syslog(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* @errno, align 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %2, align 8
  br label %72

20:                                               ; preds = %1
  %21 = load i32, i32* @csock, align 4
  %22 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  %23 = load i32, i32* @resbufsiz, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @NgRecvMsg(i32 %21, %struct.ng_mesg* %22, i32 %24, i8* %25)
  store i32 %26, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %20
  %29 = load i32, i32* @errno, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  %31 = call i32 @free(%struct.ng_mesg* %30)
  %32 = load i32, i32* @errno, align 4
  %33 = load i32, i32* @EWOULDBLOCK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* @errno, align 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %2, align 8
  br label %72

37:                                               ; preds = %28
  %38 = load i32*, i32** @stats, align 8
  %39 = load i64, i64* @LEAF_begemotNgMsgReadErrs, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @LOG_WARNING, align 4
  %44 = call i32 @syslog(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* @errno, align 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %2, align 8
  br label %72

46:                                               ; preds = %20
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @LOG_DEBUG, align 4
  %51 = call i32 @syslog(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 @exit(i32 0) #3
  unreachable

53:                                               ; preds = %46
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = load i32, i32* @resbufsiz, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ugt i64 %55, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load i32*, i32** @stats, align 8
  %61 = load i64, i64* @LEAF_begemotNgTooLargeMsgs, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @LOG_WARNING, align 4
  %66 = call i32 @syslog(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  %68 = call i32 @free(%struct.ng_mesg* %67)
  %69 = load i32, i32* @EFBIG, align 4
  store i32 %69, i32* @errno, align 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %2, align 8
  br label %72

70:                                               ; preds = %53
  %71 = load %struct.ng_mesg*, %struct.ng_mesg** %4, align 8
  store %struct.ng_mesg* %71, %struct.ng_mesg** %2, align 8
  br label %72

72:                                               ; preds = %70, %59, %37, %35, %11
  %73 = load %struct.ng_mesg*, %struct.ng_mesg** %2, align 8
  ret %struct.ng_mesg* %73
}

declare dso_local %struct.ng_mesg* @malloc(i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @NgRecvMsg(i32, %struct.ng_mesg*, i32, i8*) #1

declare dso_local i32 @free(%struct.ng_mesg*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
