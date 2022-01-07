; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_vale_persistent_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_vale_persistent_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.nmreq_vale_newif = type { i32, i32, i32, i32, i32 }
%struct.nmreq_header = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"per4\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Testing NETMAP_REQ_VALE_NEWIF on '%s'\0A\00", align 1
@NETMAP_REQ_VALE_NEWIF = common dso_local global i32 0, align 4
@NIOCCTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"ioctl(/dev/netmap, NIOCCTRL, VALE_NEWIF)\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Testing NETMAP_REQ_VALE_DELIF on '%s'\0A\00", align 1
@NETMAP_REQ_VALE_DELIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @vale_persistent_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vale_persistent_port(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca %struct.nmreq_vale_newif, align 4
  %5 = alloca %struct.nmreq_header, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  %8 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %9 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @strncpy(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 8)
  %12 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %13 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %17 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @nmreq_hdr_init(%struct.nmreq_header* %5, i8* %18)
  %20 = load i32, i32* @NETMAP_REQ_VALE_NEWIF, align 4
  %21 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = ptrtoint %struct.nmreq_vale_newif* %4 to i64
  %23 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %5, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = call i32 @memset(%struct.nmreq_vale_newif* %4, i32 0, i32 20)
  %25 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %26 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.nmreq_vale_newif, %struct.nmreq_vale_newif* %4, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %30 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.nmreq_vale_newif, %struct.nmreq_vale_newif* %4, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %34 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.nmreq_vale_newif, %struct.nmreq_vale_newif* %4, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %38 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.nmreq_vale_newif, %struct.nmreq_vale_newif* %4, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %42 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.nmreq_vale_newif, %struct.nmreq_vale_newif* %4, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %46 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NIOCCTRL, align 4
  %49 = call i32 @ioctl(i32 %47, i32 %48, %struct.nmreq_header* %5)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %1
  %53 = call i32 @perror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %81

55:                                               ; preds = %1
  %56 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %57 = call i32 @vale_attach_detach(%struct.TestContext* %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %59 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* @NETMAP_REQ_VALE_DELIF, align 4
  %63 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %5, i32 0, i32 1
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %5, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %66 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NIOCCTRL, align 4
  %69 = call i32 @ioctl(i32 %67, i32 %68, %struct.nmreq_header* %5)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %55
  %73 = call i32 @perror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %76, %72
  br label %79

79:                                               ; preds = %78, %55
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %52
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @nmreq_hdr_init(%struct.nmreq_header*, i8*) #1

declare dso_local i32 @memset(%struct.nmreq_vale_newif*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.nmreq_header*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @vale_attach_detach(%struct.TestContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
