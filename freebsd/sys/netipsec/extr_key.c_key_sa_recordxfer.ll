; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_sa_recordxfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_sa_recordxfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i64, i32, i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Null secasvar\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Null mbuf\00", align 1
@time_second = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_sa_recordxfer(%struct.secasvar* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.secasvar*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.secasvar* %0, %struct.secasvar** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %5 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %6 = icmp ne %struct.secasvar* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @IPSEC_ASSERT(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %10 = icmp ne %struct.mbuf* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @IPSEC_ASSERT(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %14 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %17 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @counter_u64_add(i32 %15, i32 %19)
  %21 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %22 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @counter_u64_add(i32 %23, i32 1)
  %25 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %26 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i64, i64* @time_second, align 8
  %31 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %32 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %2
  ret void
}

declare dso_local i32 @IPSEC_ASSERT(i32, i8*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
