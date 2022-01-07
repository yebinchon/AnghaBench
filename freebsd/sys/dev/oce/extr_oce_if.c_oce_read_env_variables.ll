; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_read_env_variables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_read_env_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@.str = private unnamed_addr constant [25 x i8] c"no hardware lro support\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"software lro enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"hardware lro enabled\0A\00", align 1
@oce_max_rsp_handled = common dso_local global i32 0, align 4
@oce_rq_buf_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c" Supported oce_rq_buf_size values are 2K, 4K, 9K, 16K \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @oce_read_env_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_read_env_variables(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i8* null, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %48

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = call i64 @IS_SH(%struct.TYPE_5__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @strtol(i8* %12, i32* null, i32 10)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %11
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = call i32 @oce_mbox_nic_query_lro_capabilities(%struct.TYPE_5__* %21, i32* null, i32* null)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i8* null, i8** %35, align 8
  br label %41

36:                                               ; preds = %20
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 32, i32* @oce_max_rsp_handled, align 4
  br label %41

41:                                               ; preds = %36, %25
  br label %47

42:                                               ; preds = %11
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %41
  br label %51

48:                                               ; preds = %7, %1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i8* null, i8** %50, align 8
  br label %51

51:                                               ; preds = %48, %47
  %52 = load i8*, i8** %3, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = call i64 @IS_SH(%struct.TYPE_5__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i8*, i8** %3, align 8
  %60 = call i8* @strtol(i8* %59, i32* null, i32 10)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* @oce_rq_buf_size, align 4
  %62 = load i32, i32* @oce_rq_buf_size, align 4
  switch i32 %62, label %64 [
    i32 2048, label %63
    i32 4096, label %63
    i32 9216, label %63
    i32 16384, label %63
  ]

63:                                               ; preds = %58, %58, %58, %58
  br label %69

64:                                               ; preds = %58
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  store i32 2048, i32* @oce_rq_buf_size, align 4
  br label %69

69:                                               ; preds = %64, %63
  br label %70

70:                                               ; preds = %69, %54, %51
  ret void
}

declare dso_local i64 @IS_SH(%struct.TYPE_5__*) #1

declare dso_local i8* @strtol(i8*, i32*, i32) #1

declare dso_local i32 @oce_mbox_nic_query_lro_capabilities(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
