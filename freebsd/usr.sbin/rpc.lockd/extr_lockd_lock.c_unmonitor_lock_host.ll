; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_unmonitor_lock_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_unmonitor_lock_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host = type { i32, i32 }
%struct.mon_id = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32, i32 }
%struct.sm_stat = type { i32 }

@hostlst_head = common dso_local global i32 0, align 4
@SM_MAXSTRLEN = common dso_local global i32 0, align 4
@hostlst = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could not find host %16s in mon list\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Negative refcount!: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Attempting to unmonitor host %16s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@NLM_PROG = common dso_local global i32 0, align 4
@NLM_SM = common dso_local global i32 0, align 4
@NLM_SM_NOTIFY = common dso_local global i32 0, align 4
@SM_PROG = common dso_local global i32 0, align 4
@SM_VERS = common dso_local global i32 0, align 4
@SM_UNMON = common dso_local global i32 0, align 4
@xdr_mon_id = common dso_local global i64 0, align 8
@xdr_sm_stat = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"Rpc call to unmonitor statd failed with  return value: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unmonitor_lock_host(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.host*, align 8
  %4 = alloca %struct.mon_id, align 8
  %5 = alloca %struct.sm_stat, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = call %struct.host* @LIST_FIRST(i32* @hostlst_head)
  store %struct.host* %7, %struct.host** %3, align 8
  br label %8

8:                                                ; preds = %25, %1
  %9 = load %struct.host*, %struct.host** %3, align 8
  %10 = icmp ne %struct.host* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load i8*, i8** %2, align 8
  %13 = load %struct.host*, %struct.host** %3, align 8
  %14 = getelementptr inbounds %struct.host, %struct.host* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SM_MAXSTRLEN, align 4
  %17 = call i64 @strncmp(i8* %12, i32 %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.host*, %struct.host** %3, align 8
  %21 = getelementptr inbounds %struct.host, %struct.host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  br label %29

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.host*, %struct.host** %3, align 8
  %27 = load i32, i32* @hostlst, align 4
  %28 = call %struct.host* @LIST_NEXT(%struct.host* %26, i32 %27)
  store %struct.host* %28, %struct.host** %3, align 8
  br label %8

29:                                               ; preds = %19, %8
  %30 = load %struct.host*, %struct.host** %3, align 8
  %31 = icmp eq %struct.host* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %87

35:                                               ; preds = %29
  %36 = load %struct.host*, %struct.host** %3, align 8
  %37 = getelementptr inbounds %struct.host, %struct.host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %87

41:                                               ; preds = %35
  %42 = load %struct.host*, %struct.host** %3, align 8
  %43 = getelementptr inbounds %struct.host, %struct.host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.host*, %struct.host** %3, align 8
  %48 = getelementptr inbounds %struct.host, %struct.host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = call i32 @bzero(%struct.mon_id* %4, i32 32)
  %55 = load i8*, i8** %2, align 8
  %56 = getelementptr inbounds %struct.mon_id, %struct.mon_id* %4, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  %57 = getelementptr inbounds %struct.mon_id, %struct.mon_id* %4, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %58, align 8
  %59 = load i32, i32* @NLM_PROG, align 4
  %60 = getelementptr inbounds %struct.mon_id, %struct.mon_id* %4, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @NLM_SM, align 4
  %63 = getelementptr inbounds %struct.mon_id, %struct.mon_id* %4, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @NLM_SM_NOTIFY, align 4
  %66 = getelementptr inbounds %struct.mon_id, %struct.mon_id* %4, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @SM_PROG, align 4
  %69 = load i32, i32* @SM_VERS, align 4
  %70 = load i32, i32* @SM_UNMON, align 4
  %71 = load i64, i64* @xdr_mon_id, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i64, i64* @xdr_sm_stat, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @callrpc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %69, i32 %70, i32 %72, %struct.mon_id* %4, i32 %74, %struct.sm_stat* %5)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %51
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %51
  %82 = load %struct.host*, %struct.host** %3, align 8
  %83 = load i32, i32* @hostlst, align 4
  %84 = call i32 @LIST_REMOVE(%struct.host* %82, i32 %83)
  %85 = load %struct.host*, %struct.host** %3, align 8
  %86 = call i32 @free(%struct.host* %85)
  br label %87

87:                                               ; preds = %81, %40, %32
  ret void
}

declare dso_local %struct.host* @LIST_FIRST(i32*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local %struct.host* @LIST_NEXT(%struct.host*, i32) #1

declare dso_local i32 @debuglog(i8*, ...) #1

declare dso_local i32 @bzero(%struct.mon_id*, i32) #1

declare dso_local i32 @callrpc(i8*, i32, i32, i32, i32, %struct.mon_id*, i32, %struct.sm_stat*) #1

declare dso_local i32 @LIST_REMOVE(%struct.host*, i32) #1

declare dso_local i32 @free(%struct.host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
