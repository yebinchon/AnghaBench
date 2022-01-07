; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_sync_kloop_eventfds.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_sync_kloop_eventfds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i32 }
%struct.nmreq_opt_sync_kloop_eventfds = type { %struct.nmreq_option, %struct.TYPE_2__* }
%struct.nmreq_option = type { i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nmreq_opt_sync_kloop_mode = type { %struct.nmreq_option, i32 }

@NETMAP_REQ_OPT_SYNC_KLOOP_MODE = common dso_local global i32 0, align 4
@NETMAP_REQ_OPT_SYNC_KLOOP_EVENTFDS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @sync_kloop_eventfds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_kloop_eventfds(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca %struct.nmreq_opt_sync_kloop_eventfds*, align 8
  %5 = alloca %struct.nmreq_opt_sync_kloop_mode, align 8
  %6 = alloca %struct.nmreq_option, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  store %struct.nmreq_opt_sync_kloop_eventfds* null, %struct.nmreq_opt_sync_kloop_eventfds** %4, align 8
  %12 = call i32 @memset(%struct.nmreq_opt_sync_kloop_mode* %5, i32 0, i32 40)
  %13 = load i32, i32* @NETMAP_REQ_OPT_SYNC_KLOOP_MODE, align 4
  %14 = getelementptr inbounds %struct.nmreq_opt_sync_kloop_mode, %struct.nmreq_opt_sync_kloop_mode* %5, i32 0, i32 0
  %15 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %17 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.nmreq_opt_sync_kloop_mode, %struct.nmreq_opt_sync_kloop_mode* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.nmreq_opt_sync_kloop_mode, %struct.nmreq_opt_sync_kloop_mode* %5, i32 0, i32 0
  %21 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %22 = call i32 @push_option(%struct.nmreq_option* %20, %struct.TestContext* %21)
  %23 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %24 = call i32 @num_registered_rings(%struct.TestContext* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = add i64 40, %27
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call %struct.nmreq_opt_sync_kloop_eventfds* @calloc(i32 1, i64 %29)
  store %struct.nmreq_opt_sync_kloop_eventfds* %30, %struct.nmreq_opt_sync_kloop_eventfds** %4, align 8
  %31 = load %struct.nmreq_opt_sync_kloop_eventfds*, %struct.nmreq_opt_sync_kloop_eventfds** %4, align 8
  %32 = getelementptr inbounds %struct.nmreq_opt_sync_kloop_eventfds, %struct.nmreq_opt_sync_kloop_eventfds* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @NETMAP_REQ_OPT_SYNC_KLOOP_EVENTFDS, align 4
  %35 = load %struct.nmreq_opt_sync_kloop_eventfds*, %struct.nmreq_opt_sync_kloop_eventfds** %4, align 8
  %36 = getelementptr inbounds %struct.nmreq_opt_sync_kloop_eventfds, %struct.nmreq_opt_sync_kloop_eventfds* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load %struct.nmreq_opt_sync_kloop_eventfds*, %struct.nmreq_opt_sync_kloop_eventfds** %4, align 8
  %39 = getelementptr inbounds %struct.nmreq_opt_sync_kloop_eventfds, %struct.nmreq_opt_sync_kloop_eventfds* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.nmreq_opt_sync_kloop_eventfds*, %struct.nmreq_opt_sync_kloop_eventfds** %4, align 8
  %43 = getelementptr inbounds %struct.nmreq_opt_sync_kloop_eventfds, %struct.nmreq_opt_sync_kloop_eventfds* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %68, %1
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = call i32 @eventfd(i32 0, i32 0)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.nmreq_opt_sync_kloop_eventfds*, %struct.nmreq_opt_sync_kloop_eventfds** %4, align 8
  %53 = getelementptr inbounds %struct.nmreq_opt_sync_kloop_eventfds, %struct.nmreq_opt_sync_kloop_eventfds* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %51, i32* %58, align 4
  %59 = call i32 @eventfd(i32 0, i32 0)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.nmreq_opt_sync_kloop_eventfds*, %struct.nmreq_opt_sync_kloop_eventfds** %4, align 8
  %62 = getelementptr inbounds %struct.nmreq_opt_sync_kloop_eventfds, %struct.nmreq_opt_sync_kloop_eventfds* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %60, i32* %67, align 4
  br label %68

68:                                               ; preds = %49
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %45

71:                                               ; preds = %45
  %72 = load %struct.nmreq_opt_sync_kloop_eventfds*, %struct.nmreq_opt_sync_kloop_eventfds** %4, align 8
  %73 = getelementptr inbounds %struct.nmreq_opt_sync_kloop_eventfds, %struct.nmreq_opt_sync_kloop_eventfds* %72, i32 0, i32 0
  %74 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %75 = call i32 @push_option(%struct.nmreq_option* %73, %struct.TestContext* %74)
  %76 = load %struct.nmreq_opt_sync_kloop_eventfds*, %struct.nmreq_opt_sync_kloop_eventfds** %4, align 8
  %77 = getelementptr inbounds %struct.nmreq_opt_sync_kloop_eventfds, %struct.nmreq_opt_sync_kloop_eventfds* %76, i32 0, i32 0
  %78 = bitcast %struct.nmreq_option* %6 to i8*
  %79 = bitcast %struct.nmreq_option* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 32, i1 false)
  %80 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %81 = call i32 @sync_kloop_start_stop(%struct.TestContext* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %71
  %85 = load %struct.nmreq_opt_sync_kloop_eventfds*, %struct.nmreq_opt_sync_kloop_eventfds** %4, align 8
  %86 = call i32 @free(%struct.nmreq_opt_sync_kloop_eventfds* %85)
  %87 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %88 = call i32 @clear_options(%struct.TestContext* %87)
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %2, align 4
  br label %100

90:                                               ; preds = %71
  %91 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %6, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load %struct.nmreq_opt_sync_kloop_eventfds*, %struct.nmreq_opt_sync_kloop_eventfds** %4, align 8
  %93 = getelementptr inbounds %struct.nmreq_opt_sync_kloop_eventfds, %struct.nmreq_opt_sync_kloop_eventfds* %92, i32 0, i32 0
  %94 = call i32 @checkoption(%struct.nmreq_option* %93, %struct.nmreq_option* %6)
  store i32 %94, i32* %9, align 4
  %95 = load %struct.nmreq_opt_sync_kloop_eventfds*, %struct.nmreq_opt_sync_kloop_eventfds** %4, align 8
  %96 = call i32 @free(%struct.nmreq_opt_sync_kloop_eventfds* %95)
  %97 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %98 = call i32 @clear_options(%struct.TestContext* %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %90, %84
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @memset(%struct.nmreq_opt_sync_kloop_mode*, i32, i32) #1

declare dso_local i32 @push_option(%struct.nmreq_option*, %struct.TestContext*) #1

declare dso_local i32 @num_registered_rings(%struct.TestContext*) #1

declare dso_local %struct.nmreq_opt_sync_kloop_eventfds* @calloc(i32, i64) #1

declare dso_local i32 @eventfd(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sync_kloop_start_stop(%struct.TestContext*) #1

declare dso_local i32 @free(%struct.nmreq_opt_sync_kloop_eventfds*) #1

declare dso_local i32 @clear_options(%struct.TestContext*) #1

declare dso_local i32 @checkoption(%struct.nmreq_option*, %struct.nmreq_option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
