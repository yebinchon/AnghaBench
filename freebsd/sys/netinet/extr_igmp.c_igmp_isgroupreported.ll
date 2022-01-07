; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_igmp.c_igmp_isgroupreported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_igmp.c_igmp_isgroupreported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@V_igmp_sendlocal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @igmp_isgroupreported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igmp_isgroupreported(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in_addr, align 4
  %4 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i32 %0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @in_allhosts(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @V_igmp_sendlocal, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntohl(i32 %14)
  %16 = call i64 @IN_LOCAL_GROUP(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %20

19:                                               ; preds = %12, %9
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @in_allhosts(i32) #1

declare dso_local i64 @IN_LOCAL_GROUP(i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
