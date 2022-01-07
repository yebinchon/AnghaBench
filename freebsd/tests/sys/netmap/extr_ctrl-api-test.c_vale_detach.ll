; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_vale_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_vale_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i8*, i8*, i32 }
%struct.nmreq_header = type { i64, i32 }
%struct.nmreq_vale_detach = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Testing NETMAP_REQ_VALE_DETACH on '%s'\0A\00", align 1
@NETMAP_REQ_VALE_DETACH = common dso_local global i32 0, align 4
@NIOCCTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"ioctl(/dev/netmap, NIOCCTRL, VALE_DETACH)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @vale_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vale_detach(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca %struct.nmreq_header, align 8
  %5 = alloca %struct.nmreq_vale_detach, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %9 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %10 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %13 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @snprintf(i8* %8, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %14)
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %17 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %19 = call i32 @nmreq_hdr_init(%struct.nmreq_header* %4, i8* %18)
  %20 = load i32, i32* @NETMAP_REQ_VALE_DETACH, align 4
  %21 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %4, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = ptrtoint %struct.nmreq_vale_detach* %5 to i64
  %23 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %4, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %25 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NIOCCTRL, align 4
  %28 = call i32 @ioctl(i32 %26, i32 %27, %struct.nmreq_header* %4)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = call i32 @perror(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

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
