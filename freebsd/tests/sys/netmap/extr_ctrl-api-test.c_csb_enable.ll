; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_csb_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_csb_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i8*, i32, i64 }
%struct.nmreq_option = type { i64 }
%struct.nmreq_opt_csb = type { %struct.nmreq_option }
%struct.nmreq_header = type { i64, i64, i32 }

@NETMAP_REQ_CSB_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Testing NETMAP_REQ_CSB_ENABLE on '%s'\0A\00", align 1
@NIOCCTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ioctl(/dev/netmap, NIOCCTRL, CSB_ENABLE)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @csb_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csb_enable(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca %struct.nmreq_option, align 8
  %5 = alloca %struct.nmreq_opt_csb, align 8
  %6 = alloca %struct.nmreq_header, align 8
  %7 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  %8 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %9 = call i32 @push_csb_option(%struct.TestContext* %8, %struct.nmreq_opt_csb* %5)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %50

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.nmreq_opt_csb, %struct.nmreq_opt_csb* %5, i32 0, i32 0
  %16 = bitcast %struct.nmreq_option* %4 to i8*
  %17 = bitcast %struct.nmreq_option* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %4, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %20 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @nmreq_hdr_init(%struct.nmreq_header* %6, i8* %21)
  %23 = load i32, i32* @NETMAP_REQ_CSB_ENABLE, align 4
  %24 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %6, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %26 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %6, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %6, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %31 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %35 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @NIOCCTRL, align 4
  %38 = call i32 @ioctl(i32 %36, i32 %37, %struct.nmreq_header* %6)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %14
  %42 = call i32 @perror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %50

44:                                               ; preds = %14
  %45 = getelementptr inbounds %struct.nmreq_opt_csb, %struct.nmreq_opt_csb* %5, i32 0, i32 0
  %46 = call i32 @checkoption(%struct.nmreq_option* %45, %struct.nmreq_option* %4)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %48 = call i32 @clear_options(%struct.TestContext* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %41, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @push_csb_option(%struct.TestContext*, %struct.nmreq_opt_csb*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nmreq_hdr_init(%struct.nmreq_header*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.nmreq_header*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @checkoption(%struct.nmreq_option*, %struct.nmreq_option*) #1

declare dso_local i32 @clear_options(%struct.TestContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
