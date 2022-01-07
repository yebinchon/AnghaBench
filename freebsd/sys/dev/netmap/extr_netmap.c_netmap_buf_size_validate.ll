; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_buf_size_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_buf_size_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"error: netmap buf size (%u) < device MTU (%u)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NAF_MOREFRAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"error: large MTU (%d) needed but %s does not support NS_MOREFRAG\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"error: using NS_MOREFRAG on %s requires netmap buf size >= %u\00", align 1
@.str.3 = private unnamed_addr constant [88 x i8] c"info: netmap application on %s needs to support NS_MOREFRAG (MTU=%u,netmap_buf_size=%u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_buf_size_validate(%struct.netmap_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netmap_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %8 = call i32 @NETMAP_BUF_SIZE(%struct.netmap_adapter* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ule i32 %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @nm_prerr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %69

23:                                               ; preds = %14
  br label %68

24:                                               ; preds = %2
  %25 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NAF_MOREFRAG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nm_prerr(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %3, align 4
  br label %69

40:                                               ; preds = %24
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @nm_prerr(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %3, align 4
  br label %69

57:                                               ; preds = %40
  %58 = load %struct.netmap_adapter*, %struct.netmap_adapter** %4, align 8
  %59 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @nm_prinf(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %23
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %46, %31, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @NETMAP_BUF_SIZE(%struct.netmap_adapter*) #1

declare dso_local i32 @nm_prerr(i8*, i32, i32) #1

declare dso_local i32 @nm_prinf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
