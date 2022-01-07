; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_sync_kloop_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_sync_kloop_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i8*, i32 }
%struct.nmreq_header = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Testing NETMAP_REQ_SYNC_KLOOP_STOP on '%s'\0A\00", align 1
@NETMAP_REQ_SYNC_KLOOP_STOP = common dso_local global i32 0, align 4
@NIOCCTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"ioctl(/dev/netmap, NIOCCTRL, SYNC_KLOOP_STOP)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @sync_kloop_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_kloop_stop(%struct.TestContext* %0) #0 {
  %2 = alloca %struct.TestContext*, align 8
  %3 = alloca %struct.nmreq_header, align 4
  %4 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %2, align 8
  %5 = load %struct.TestContext*, %struct.TestContext** %2, align 8
  %6 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load %struct.TestContext*, %struct.TestContext** %2, align 8
  %10 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @nmreq_hdr_init(%struct.nmreq_header* %3, i8* %11)
  %13 = load i32, i32* @NETMAP_REQ_SYNC_KLOOP_STOP, align 4
  %14 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.TestContext*, %struct.TestContext** %2, align 8
  %16 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NIOCCTRL, align 4
  %19 = call i32 @ioctl(i32 %17, i32 %18, %struct.nmreq_header* %3)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @perror(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %1
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @nmreq_hdr_init(%struct.nmreq_header*, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.nmreq_header*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
