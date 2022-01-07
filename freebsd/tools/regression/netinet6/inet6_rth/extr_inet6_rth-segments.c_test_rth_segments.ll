; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_inet6_rth-segments.c_test_rth_segments.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_inet6_rth-segments.c_test_rth_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_rthdr = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"test_rth_segments\00", align 1
@IPV6_RTHDR_TYPE_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid routing header type\00\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"0 segments\00\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"127 segments\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rth_segments() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10240 x i8], align 16
  %3 = call i32 @set_funcname(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 19)
  %4 = getelementptr inbounds [10240 x i8], [10240 x i8]* %2, i64 0, i64 0
  %5 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %6 = call i32* @inet6_rth_init(i8* %4, i32 10240, i32 %5, i32 0)
  %7 = icmp eq i32* null, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @abort() #3
  unreachable

10:                                               ; preds = %0
  %11 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %12 = xor i32 %11, -1
  %13 = getelementptr inbounds [10240 x i8], [10240 x i8]* %2, i64 0, i64 0
  %14 = bitcast i8* %13 to %struct.ip6_rthdr*
  %15 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 16
  %16 = getelementptr inbounds [10240 x i8], [10240 x i8]* %2, i64 0, i64 0
  %17 = call i32 @inet6_rth_segments(i8* %16)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @checknum(i32 -1, i32 %18, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %20 = getelementptr inbounds [10240 x i8], [10240 x i8]* %2, i64 0, i64 0
  %21 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %22 = call i32* @inet6_rth_init(i8* %20, i32 10240, i32 %21, i32 0)
  %23 = icmp eq i32* null, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %10
  %25 = call i32 (...) @abort() #3
  unreachable

26:                                               ; preds = %10
  %27 = getelementptr inbounds [10240 x i8], [10240 x i8]* %2, i64 0, i64 0
  %28 = call i32 @inet6_rth_segments(i8* %27)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @checknum(i32 0, i32 %29, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %31 = getelementptr inbounds [10240 x i8], [10240 x i8]* %2, i64 0, i64 0
  %32 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %33 = call i32* @inet6_rth_init(i8* %31, i32 10240, i32 %32, i32 127)
  %34 = icmp eq i32* null, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 (...) @abort() #3
  unreachable

37:                                               ; preds = %26
  %38 = getelementptr inbounds [10240 x i8], [10240 x i8]* %2, i64 0, i64 0
  %39 = call i32 @inet6_rth_segments(i8* %38)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @checknum(i32 127, i32 %40, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @set_funcname(i8*, i32) #1

declare dso_local i32* @inet6_rth_init(i8*, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @inet6_rth_segments(i8*) #1

declare dso_local i32 @checknum(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
