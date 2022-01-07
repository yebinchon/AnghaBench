; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_sync_kloop_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_sync_kloop_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i8*, i64, i32, i64 }
%struct.nmreq_sync_kloop_start = type { i32 }
%struct.nmreq_header = type { i64, i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Testing NETMAP_REQ_SYNC_KLOOP_START on '%s'\0A\00", align 1
@NETMAP_REQ_SYNC_KLOOP_START = common dso_local global i32 0, align 4
@NIOCCTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"ioctl(/dev/netmap, NIOCCTRL, SYNC_KLOOP_START)\00", align 1
@THRET_FAILURE = common dso_local global i64 0, align 8
@THRET_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @sync_kloop_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sync_kloop_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TestContext*, align 8
  %5 = alloca %struct.nmreq_sync_kloop_start, align 4
  %6 = alloca %struct.nmreq_header, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TestContext*
  store %struct.TestContext* %9, %struct.TestContext** %4, align 8
  %10 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %11 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %15 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @nmreq_hdr_init(%struct.nmreq_header* %6, i8* %16)
  %18 = load i32, i32* @NETMAP_REQ_SYNC_KLOOP_START, align 4
  %19 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %6, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = ptrtoint %struct.nmreq_sync_kloop_start* %5 to i64
  %21 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %6, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %23 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %6, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = call i32 @memset(%struct.nmreq_sync_kloop_start* %5, i32 0, i32 4)
  %27 = getelementptr inbounds %struct.nmreq_sync_kloop_start, %struct.nmreq_sync_kloop_start* %5, i32 0, i32 0
  store i32 500, i32* %27, align 4
  %28 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %29 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @NIOCCTRL, align 4
  %32 = call i32 @ioctl(i32 %30, i32 %31, %struct.nmreq_header* %6)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = call i32 @perror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %1
  %38 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %39 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %44 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @sem_post(i64 %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* @THRET_FAILURE, align 8
  %52 = inttoptr i64 %51 to i8*
  br label %56

53:                                               ; preds = %47
  %54 = load i64, i64* @THRET_SUCCESS, align 8
  %55 = inttoptr i64 %54 to i8*
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i8* [ %52, %50 ], [ %55, %53 ]
  %58 = call i32 @pthread_exit(i8* %57)
  %59 = load i8*, i8** %2, align 8
  ret i8* %59
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @nmreq_hdr_init(%struct.nmreq_header*, i8*) #1

declare dso_local i32 @memset(%struct.nmreq_sync_kloop_start*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.nmreq_header*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @sem_post(i64) #1

declare dso_local i32 @pthread_exit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
