; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_isns_do_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_isns_do_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isns = type { i32, %struct.conf* }
%struct.conf = type { i32 }
%struct.isns_req = type { i32 }
%struct.TYPE_2__ = type { i8* }

@ISNS_FUNC_DEVATTRQRY = common dso_local global i32 0, align 4
@ISNS_FLAG_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"send(2) failed for %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"receive(2) failed for %s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"iSNS check error %d for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isns*, i32, i8*)* @isns_do_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isns_do_check(%struct.isns* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.isns*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.conf*, align 8
  %8 = alloca %struct.isns_req*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.isns* %0, %struct.isns** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.isns*, %struct.isns** %4, align 8
  %12 = getelementptr inbounds %struct.isns, %struct.isns* %11, i32 0, i32 1
  %13 = load %struct.conf*, %struct.conf** %12, align 8
  store %struct.conf* %13, %struct.conf** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @ISNS_FUNC_DEVATTRQRY, align 4
  %15 = load i32, i32* @ISNS_FLAG_CLIENT, align 4
  %16 = call %struct.isns_req* @isns_req_create(i32 %14, i32 %15)
  store %struct.isns_req* %16, %struct.isns_req** %8, align 8
  %17 = load %struct.isns_req*, %struct.isns_req** %8, align 8
  %18 = load %struct.conf*, %struct.conf** %7, align 8
  %19 = getelementptr inbounds %struct.conf, %struct.conf* %18, i32 0, i32 0
  %20 = call %struct.TYPE_2__* @TAILQ_FIRST(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @isns_req_add_str(%struct.isns_req* %17, i32 32, i8* %22)
  %24 = load %struct.isns_req*, %struct.isns_req** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @isns_req_add_str(%struct.isns_req* %24, i32 1, i8* %25)
  %27 = load %struct.isns_req*, %struct.isns_req** %8, align 8
  %28 = call i32 @isns_req_add_delim(%struct.isns_req* %27)
  %29 = load %struct.isns_req*, %struct.isns_req** %8, align 8
  %30 = call i32 @isns_req_add(%struct.isns_req* %29, i32 2, i32 0, i32* null)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.isns_req*, %struct.isns_req** %8, align 8
  %33 = call i32 @isns_req_send(i32 %31, %struct.isns_req* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load %struct.isns*, %struct.isns** %4, align 8
  %38 = getelementptr inbounds %struct.isns, %struct.isns* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @log_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %64

41:                                               ; preds = %3
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.isns_req*, %struct.isns_req** %8, align 8
  %44 = call i32 @isns_req_receive(i32 %42, %struct.isns_req* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.isns*, %struct.isns** %4, align 8
  %49 = getelementptr inbounds %struct.isns, %struct.isns* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @log_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %64

52:                                               ; preds = %41
  %53 = load %struct.isns_req*, %struct.isns_req** %8, align 8
  %54 = call i64 @isns_req_get_status(%struct.isns_req* %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.isns*, %struct.isns** %4, align 8
  %60 = getelementptr inbounds %struct.isns, %struct.isns* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @log_warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %58, i32 %61)
  store i32 -1, i32* %9, align 4
  br label %63

63:                                               ; preds = %57, %52
  br label %64

64:                                               ; preds = %63, %47, %36
  %65 = load %struct.isns_req*, %struct.isns_req** %8, align 8
  %66 = call i32 @isns_req_free(%struct.isns_req* %65)
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

declare dso_local %struct.isns_req* @isns_req_create(i32, i32) #1

declare dso_local i32 @isns_req_add_str(%struct.isns_req*, i32, i8*) #1

declare dso_local %struct.TYPE_2__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @isns_req_add_delim(%struct.isns_req*) #1

declare dso_local i32 @isns_req_add(%struct.isns_req*, i32, i32, i32*) #1

declare dso_local i32 @isns_req_send(i32, %struct.isns_req*) #1

declare dso_local i32 @log_warn(i8*, i32) #1

declare dso_local i32 @isns_req_receive(i32, %struct.isns_req*) #1

declare dso_local i64 @isns_req_get_status(%struct.isns_req*) #1

declare dso_local i32 @log_warnx(i8*, i64, i32) #1

declare dso_local i32 @isns_req_free(%struct.isns_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
