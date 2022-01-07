; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_infinite_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_infinite_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i8* }
%struct.nmreq_option = type { i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"Testing infinite list of options on %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @infinite_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @infinite_options(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca %struct.nmreq_option, align 8
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  %5 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %6 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %4, i32 0, i32 0
  store i32 1234, i32* %9, align 8
  %10 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %11 = call i32 @push_option(%struct.nmreq_option* %4, %struct.TestContext* %10)
  %12 = ptrtoint %struct.nmreq_option* %4 to i64
  %13 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %4, i32 0, i32 1
  store i64 %12, i64* %13, align 8
  %14 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %15 = call i64 @port_register_hwall(%struct.TestContext* %14)
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %20 = call i32 @clear_options(%struct.TestContext* %19)
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EMSGSIZE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 -1
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %17
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @push_option(%struct.nmreq_option*, %struct.TestContext*) #1

declare dso_local i64 @port_register_hwall(%struct.TestContext*) #1

declare dso_local i32 @clear_options(%struct.TestContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
