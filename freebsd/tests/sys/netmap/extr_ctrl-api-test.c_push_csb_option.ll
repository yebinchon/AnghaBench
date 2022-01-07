; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_push_csb_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_push_csb_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i64, i32 }
%struct.nmreq_opt_csb = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NR_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate CSB memory\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@NETMAP_REQ_OPT_CSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Pushing option NETMAP_REQ_OPT_CSB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*, %struct.nmreq_opt_csb*)* @push_csb_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_csb_option(%struct.TestContext* %0, %struct.nmreq_opt_csb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TestContext*, align 8
  %5 = alloca %struct.nmreq_opt_csb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %4, align 8
  store %struct.nmreq_opt_csb* %1, %struct.nmreq_opt_csb** %5, align 8
  %9 = load i32, i32* @NR_EXCLUSIVE, align 4
  %10 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %11 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %15 = call i32 @port_info_get(%struct.TestContext* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %78

20:                                               ; preds = %2
  %21 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %22 = call i32 @num_registered_rings(%struct.TestContext* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 8, %24
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ugt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %31 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %36 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @free(i64 %37)
  br label %39

39:                                               ; preds = %34, %20
  %40 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %41 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %40, i32 0, i32 0
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @posix_memalign(i64* %41, i32 4, i64 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  %49 = call i32 @exit(i32 %48) #3
  unreachable

50:                                               ; preds = %39
  %51 = load %struct.nmreq_opt_csb*, %struct.nmreq_opt_csb** %5, align 8
  %52 = call i32 @memset(%struct.nmreq_opt_csb* %51, i32 0, i32 24)
  %53 = load i32, i32* @NETMAP_REQ_OPT_CSB, align 4
  %54 = load %struct.nmreq_opt_csb*, %struct.nmreq_opt_csb** %5, align 8
  %55 = getelementptr inbounds %struct.nmreq_opt_csb, %struct.nmreq_opt_csb* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %58 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nmreq_opt_csb*, %struct.nmreq_opt_csb** %5, align 8
  %61 = getelementptr inbounds %struct.nmreq_opt_csb, %struct.nmreq_opt_csb* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %63 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = ptrtoint i32* %69 to i64
  %71 = load %struct.nmreq_opt_csb*, %struct.nmreq_opt_csb** %5, align 8
  %72 = getelementptr inbounds %struct.nmreq_opt_csb, %struct.nmreq_opt_csb* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.nmreq_opt_csb*, %struct.nmreq_opt_csb** %5, align 8
  %75 = getelementptr inbounds %struct.nmreq_opt_csb, %struct.nmreq_opt_csb* %74, i32 0, i32 2
  %76 = load %struct.TestContext*, %struct.TestContext** %4, align 8
  %77 = call i32 @push_option(%struct.TYPE_2__* %75, %struct.TestContext* %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %50, %18
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @port_info_get(%struct.TestContext*) #1

declare dso_local i32 @num_registered_rings(%struct.TestContext*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @posix_memalign(i64*, i32, i64) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.nmreq_opt_csb*, i32, i32) #1

declare dso_local i32 @push_option(%struct.TYPE_2__*, %struct.TestContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
