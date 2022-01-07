; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_port_hdr_set_and_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_port_hdr_set_and_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i64, i64, i32 }
%struct.nmreq_port_hdr = type { i64 }
%struct.nmreq_header = type { i64, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Testing NETMAP_REQ_PORT_HDR_SET on '%s'\0A\00", align 1
@NETMAP_REQ_PORT_HDR_SET = common dso_local global i32 0, align 4
@NIOCCTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"ioctl(/dev/netmap, NIOCCTRL, PORT_HDR_SET)\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Testing NETMAP_REQ_PORT_HDR_GET on '%s'\0A\00", align 1
@NETMAP_REQ_PORT_HDR_GET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"nr_hdr_len %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @port_hdr_set_and_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_hdr_set_and_get(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca %struct.nmreq_port_hdr, align 8
  %5 = alloca %struct.nmreq_header, align 8
  %6 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  %7 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %8 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %12 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @nmreq_hdr_init(%struct.nmreq_header* %5, i8* %14)
  %16 = load i32, i32* @NETMAP_REQ_PORT_HDR_SET, align 4
  %17 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %5, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = ptrtoint %struct.nmreq_port_hdr* %4 to i64
  %19 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %5, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = call i32 @memset(%struct.nmreq_port_hdr* %4, i32 0, i32 8)
  %21 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %22 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.nmreq_port_hdr, %struct.nmreq_port_hdr* %4, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %26 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NIOCCTRL, align 4
  %29 = call i32 @ioctl(i32 %27, i32 %28, %struct.nmreq_header* %5)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = call i32 @perror(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %73

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.nmreq_port_hdr, %struct.nmreq_port_hdr* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %39 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %73

43:                                               ; preds = %35
  %44 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %45 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @NETMAP_REQ_PORT_HDR_GET, align 4
  %49 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %5, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.nmreq_port_hdr, %struct.nmreq_port_hdr* %4, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %52 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @NIOCCTRL, align 4
  %55 = call i32 @ioctl(i32 %53, i32 %54, %struct.nmreq_header* %5)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %43
  %59 = call i32 @perror(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %73

61:                                               ; preds = %43
  %62 = getelementptr inbounds %struct.nmreq_port_hdr, %struct.nmreq_port_hdr* %4, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  %65 = getelementptr inbounds %struct.nmreq_port_hdr, %struct.nmreq_port_hdr* %4, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %68 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 0, i32 -1
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %61, %58, %42, %32
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @nmreq_hdr_init(%struct.nmreq_header*, i8*) #1

declare dso_local i32 @memset(%struct.nmreq_port_hdr*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.nmreq_header*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
