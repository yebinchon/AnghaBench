; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_vale_polling_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_vale_polling_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i8*, i8*, i64, i64, i64, i32 }
%struct.nmreq_vale_polling = type { i64, i64, i64 }
%struct.nmreq_header = type { i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Testing NETMAP_REQ_VALE_POLLING_ENABLE on '%s'\0A\00", align 1
@NETMAP_REQ_VALE_POLLING_ENABLE = common dso_local global i32 0, align 4
@NIOCCTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"ioctl(/dev/netmap, NIOCCTRL, VALE_POLLING_ENABLE)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @vale_polling_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vale_polling_enable(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca %struct.nmreq_vale_polling, align 8
  %5 = alloca %struct.nmreq_header, align 8
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
  %17 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %19 = call i32 @nmreq_hdr_init(%struct.nmreq_header* %5, i8* %18)
  %20 = load i32, i32* @NETMAP_REQ_VALE_POLLING_ENABLE, align 4
  %21 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = ptrtoint %struct.nmreq_vale_polling* %4 to i64
  %23 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %5, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = call i32 @memset(%struct.nmreq_vale_polling* %4, i32 0, i32 24)
  %25 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %26 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.nmreq_vale_polling, %struct.nmreq_vale_polling* %4, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %30 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.nmreq_vale_polling, %struct.nmreq_vale_polling* %4, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %34 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.nmreq_vale_polling, %struct.nmreq_vale_polling* %4, i32 0, i32 2
  store i64 %35, i64* %36, align 8
  %37 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %38 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NIOCCTRL, align 4
  %41 = call i32 @ioctl(i32 %39, i32 %40, %struct.nmreq_header* %5)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %1
  %45 = call i32 @perror(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %72

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.nmreq_vale_polling, %struct.nmreq_vale_polling* %4, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %51 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.nmreq_vale_polling, %struct.nmreq_vale_polling* %4, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %58 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.nmreq_vale_polling, %struct.nmreq_vale_polling* %4, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %65 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br label %68

68:                                               ; preds = %61, %54, %47
  %69 = phi i1 [ false, %54 ], [ false, %47 ], [ %67, %61 ]
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 0, i32 -1
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %44
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @nmreq_hdr_init(%struct.nmreq_header*, i8*) #1

declare dso_local i32 @memset(%struct.nmreq_vale_polling*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.nmreq_header*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
