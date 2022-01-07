; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_vf.c_get_params__pre_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_vf.c_get_params__pre_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@FWREV = common dso_local global i32 0, align 4
@TPREV = common dso_local global i32 0, align 4
@CCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to query parameters (pre_init): %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @get_params__pre_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_params__pre_init(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8*], align 16
  %6 = alloca [3 x i8*], align 16
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %7 = load i32, i32* @FWREV, align 4
  %8 = call i8* @FW_PARAM_DEV(i32 %7)
  %9 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  store i8* %8, i8** %9, align 16
  %10 = load i32, i32* @TPREV, align 4
  %11 = call i8* @FW_PARAM_DEV(i32 %10)
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 1
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* @CCLK, align 4
  %14 = call i8* @FW_PARAM_DEV(i32 %13)
  %15 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 2
  store i8* %14, i8** %15, align 16
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %18 = call i32 @nitems(i8** %17)
  %19 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 0
  %20 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %21 = call i32 @t4vf_query_params(%struct.adapter* %16, i32 %18, i8** %19, i8** %20)
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %97

32:                                               ; preds = %1
  %33 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %34 = load i8*, i8** %33, align 16
  %35 = load %struct.adapter*, %struct.adapter** %3, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.adapter*, %struct.adapter** %3, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  %43 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 2
  %44 = load i8*, i8** %43, align 16
  %45 = load %struct.adapter*, %struct.adapter** %3, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i8* %44, i8** %48, align 8
  %49 = load %struct.adapter*, %struct.adapter** %3, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.adapter*, %struct.adapter** %3, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @G_FW_HDR_FW_VER_MAJOR(i8* %55)
  %57 = load %struct.adapter*, %struct.adapter** %3, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @G_FW_HDR_FW_VER_MINOR(i8* %60)
  %62 = load %struct.adapter*, %struct.adapter** %3, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @G_FW_HDR_FW_VER_MICRO(i8* %65)
  %67 = load %struct.adapter*, %struct.adapter** %3, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @G_FW_HDR_FW_VER_BUILD(i8* %70)
  %72 = call i32 @snprintf(i32 %51, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %61, i32 %66, i32 %71)
  %73 = load %struct.adapter*, %struct.adapter** %3, align 8
  %74 = getelementptr inbounds %struct.adapter, %struct.adapter* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.adapter*, %struct.adapter** %3, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @G_FW_HDR_FW_VER_MAJOR(i8* %79)
  %81 = load %struct.adapter*, %struct.adapter** %3, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @G_FW_HDR_FW_VER_MINOR(i8* %84)
  %86 = load %struct.adapter*, %struct.adapter** %3, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @G_FW_HDR_FW_VER_MICRO(i8* %89)
  %91 = load %struct.adapter*, %struct.adapter** %3, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @G_FW_HDR_FW_VER_BUILD(i8* %94)
  %96 = call i32 @snprintf(i32 %75, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %85, i32 %90, i32 %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %32, %25
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i8* @FW_PARAM_DEV(i32) #1

declare dso_local i32 @t4vf_query_params(%struct.adapter*, i32, i8**, i8**) #1

declare dso_local i32 @nitems(i8**) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @G_FW_HDR_FW_VER_MAJOR(i8*) #1

declare dso_local i32 @G_FW_HDR_FW_VER_MINOR(i8*) #1

declare dso_local i32 @G_FW_HDR_FW_VER_MICRO(i8*) #1

declare dso_local i32 @G_FW_HDR_FW_VER_BUILD(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
