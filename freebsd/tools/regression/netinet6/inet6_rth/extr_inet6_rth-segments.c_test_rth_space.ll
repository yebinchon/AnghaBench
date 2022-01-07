; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_inet6_rth-segments.c_test_rth_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_inet6_rth-segments.c_test_rth_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"test_rth_space\00", align 1
@IPV6_RTHDR_TYPE_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid routing header type\00\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"0 segments\00\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"-1 segments\00\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"128 segments\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rth_space() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @set_funcname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 16)
  %3 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %4 = xor i32 %3, -1
  %5 = call i32 @inet6_rth_space(i32 %4, i32 0)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @checknum(i32 0, i32 %6, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %9 = call i32 @inet6_rth_space(i32 %8, i32 0)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @checknum(i32 0, i32 %10, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %13 = call i32 @inet6_rth_space(i32 %12, i32 127)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @checknum(i32 0, i32 %14, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %17 = call i32 @inet6_rth_space(i32 %16, i32 -1)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @checknum(i32 0, i32 %18, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i32, i32* @IPV6_RTHDR_TYPE_0, align 4
  %21 = call i32 @inet6_rth_space(i32 %20, i32 128)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @checknum(i32 0, i32 %22, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @set_funcname(i8*, i32) #1

declare dso_local i32 @inet6_rth_space(i32, i32) #1

declare dso_local i32 @checknum(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
