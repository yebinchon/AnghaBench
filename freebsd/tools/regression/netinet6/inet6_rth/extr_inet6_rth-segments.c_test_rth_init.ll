; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_inet6_rth-segments.c_test_rth_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_inet6_rth-segments.c_test_rth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"test_rth_init\00", align 1
@IPV6_RTHDR_TYPE_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"buffer too small\00\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"0 segments\00\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"127 segments\00\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"negative number of segments\00\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"128 segments\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rth_init() #0 {
  %1 = alloca [10240 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = call i32 @set_funcname(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 15)
  %4 = getelementptr inbounds [10240 x i8], [10240 x i8]* %1, i64 0, i64 0
  %5 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %6 = call i8* @inet6_rth_init(i8* %4, i32 10, i32 %5, i32 100)
  store i8* %6, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @checkptr(i32* null, i8* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %9 = getelementptr inbounds [10240 x i8], [10240 x i8]* %1, i64 0, i64 0
  %10 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %11 = call i8* @inet6_rth_init(i8* %9, i32 10240, i32 %10, i32 0)
  store i8* %11, i8** %2, align 8
  %12 = bitcast [10240 x i8]* %1 to i32*
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @checkptr(i32* %12, i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %15 = getelementptr inbounds [10240 x i8], [10240 x i8]* %1, i64 0, i64 0
  %16 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %17 = call i8* @inet6_rth_init(i8* %15, i32 10240, i32 %16, i32 127)
  store i8* %17, i8** %2, align 8
  %18 = bitcast [10240 x i8]* %1 to i32*
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @checkptr(i32* %18, i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %21 = getelementptr inbounds [10240 x i8], [10240 x i8]* %1, i64 0, i64 0
  %22 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %23 = call i8* @inet6_rth_init(i8* %21, i32 10240, i32 %22, i32 -1)
  store i8* %23, i8** %2, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @checkptr(i32* null, i8* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %26 = getelementptr inbounds [10240 x i8], [10240 x i8]* %1, i64 0, i64 0
  %27 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %28 = call i8* @inet6_rth_init(i8* %26, i32 10240, i32 %27, i32 128)
  store i8* %28, i8** %2, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @checkptr(i32* null, i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @set_funcname(i8*, i32) #1

declare dso_local i8* @inet6_rth_init(i8*, i32, i32, i32) #1

declare dso_local i32 @checkptr(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
