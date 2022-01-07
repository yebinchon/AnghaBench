; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_commands.c_ips_adapter_info_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_commands.c_ips_adapter_info_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 (%struct.TYPE_9__*)*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"ips: error = %d in ips_get_adapter_info\0A\00", align 1
@IPS_ADAPTER_INFO_CMD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@IPS_ADAPTER_INFO_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_11__*, i32, i32)* @ips_adapter_info_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_adapter_info_callback(i8* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %10, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @ips_set_error(%struct.TYPE_9__* %20, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %91

25:                                               ; preds = %4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %11, align 8
  %30 = load i32, i32* @IPS_ADAPTER_INFO_CMD, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %51 = call i32 @bus_dmamap_sync(i32 %46, i32 %49, i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %59 = call i32 @bus_dmamap_sync(i32 %54, i32 %57, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %64 = call i32 %62(%struct.TYPE_9__* %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* @hz, align 4
  %68 = mul nsw i32 30, %67
  %69 = call i64 @sema_timedwait(i32* %66, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %25
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %73 = load i32, i32* @ETIMEDOUT, align 4
  %74 = call i32 @ips_set_error(%struct.TYPE_9__* %72, i32 %73)
  br label %91

75:                                               ; preds = %25
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %83 = call i32 @bus_dmamap_sync(i32 %78, i32 %81, i32 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IPS_ADAPTER_INFO_LEN, align 4
  %90 = call i32 @memcpy(i32* %85, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %75, %71, %19
  ret void
}

declare dso_local i32 @ips_set_error(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @sema_timedwait(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
