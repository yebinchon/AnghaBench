; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_unsupported_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_unsupported_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i8* }
%struct.nmreq_option = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Testing unsupported option on %s\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @unsupported_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unsupported_option(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca %struct.nmreq_option, align 4
  %5 = alloca %struct.nmreq_option, align 4
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  %6 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %7 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = call i32 @memset(%struct.nmreq_option* %4, i32 0, i32 8)
  %11 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %4, i32 0, i32 0
  store i32 1234, i32* %11, align 4
  %12 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %13 = call i32 @push_option(%struct.nmreq_option* %4, %struct.TestContext* %12)
  %14 = bitcast %struct.nmreq_option* %5 to i8*
  %15 = bitcast %struct.nmreq_option* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 8, i1 false)
  %16 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %17 = call i64 @port_register_hwall(%struct.TestContext* %16)
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %22 = call i32 @clear_options(%struct.TestContext* %21)
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %5, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = call i32 @checkoption(%struct.nmreq_option* %4, %struct.nmreq_option* %5)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %20, %19
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @memset(%struct.nmreq_option*, i32, i32) #1

declare dso_local i32 @push_option(%struct.nmreq_option*, %struct.TestContext*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @port_register_hwall(%struct.TestContext*) #1

declare dso_local i32 @clear_options(%struct.TestContext*) #1

declare dso_local i32 @checkoption(%struct.nmreq_option*, %struct.nmreq_option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
