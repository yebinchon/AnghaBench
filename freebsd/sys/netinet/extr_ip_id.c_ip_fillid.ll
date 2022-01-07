; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_id.c_ip_fillid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_id.c_ip_fillid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32, i32 }

@V_ip_rfc6864 = common dso_local global i64 0, align 8
@IP_DF = common dso_local global i32 0, align 4
@V_ip_do_randomid = common dso_local global i64 0, align 8
@V_ip_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_fillid(%struct.ip* %0) #0 {
  %2 = alloca %struct.ip*, align 8
  store %struct.ip* %0, %struct.ip** %2, align 8
  %3 = load i64, i64* @V_ip_rfc6864, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.ip*, %struct.ip** %2, align 8
  %7 = getelementptr inbounds %struct.ip, %struct.ip* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IP_DF, align 4
  %10 = call i32 @htons(i32 %9)
  %11 = and i32 %8, %10
  %12 = load i32, i32* @IP_DF, align 4
  %13 = call i32 @htons(i32 %12)
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load %struct.ip*, %struct.ip** %2, align 8
  %17 = getelementptr inbounds %struct.ip, %struct.ip* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  br label %37

18:                                               ; preds = %5, %1
  %19 = load i64, i64* @V_ip_do_randomid, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = call i32 (...) @ip_randomid()
  %23 = load %struct.ip*, %struct.ip** %2, align 8
  %24 = getelementptr inbounds %struct.ip, %struct.ip* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %36

25:                                               ; preds = %18
  %26 = load i32, i32* @V_ip_id, align 4
  %27 = call i32 @counter_u64_add(i32 %26, i32 1)
  %28 = load i32, i32* @V_ip_id, align 4
  %29 = call i64 @zpcpu_get(i32 %28)
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 65535
  %33 = call i32 @htons(i32 %32)
  %34 = load %struct.ip*, %struct.ip** %2, align 8
  %35 = getelementptr inbounds %struct.ip, %struct.ip* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %25, %21
  br label %37

37:                                               ; preds = %36, %15
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ip_randomid(...) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i64 @zpcpu_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
