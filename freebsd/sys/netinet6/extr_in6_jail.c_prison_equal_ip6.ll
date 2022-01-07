; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_jail.c_prison_equal_ip6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_jail.c_prison_equal_ip6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i32, %struct.prison* }

@prison0 = common dso_local global %struct.prison zeroinitializer, align 8
@PR_IP6_USER = common dso_local global i32 0, align 4
@PR_VNET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prison_equal_ip6(%struct.prison* %0, %struct.prison* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.prison*, align 8
  %5 = alloca %struct.prison*, align 8
  store %struct.prison* %0, %struct.prison** %4, align 8
  store %struct.prison* %1, %struct.prison** %5, align 8
  %6 = load %struct.prison*, %struct.prison** %4, align 8
  %7 = load %struct.prison*, %struct.prison** %5, align 8
  %8 = icmp eq %struct.prison* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %51

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %24, %10
  %12 = load %struct.prison*, %struct.prison** %4, align 8
  %13 = icmp ne %struct.prison* %12, @prison0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.prison*, %struct.prison** %4, align 8
  %16 = getelementptr inbounds %struct.prison, %struct.prison* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PR_IP6_USER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %14, %11
  %23 = phi i1 [ false, %11 ], [ %21, %14 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = load %struct.prison*, %struct.prison** %4, align 8
  %26 = getelementptr inbounds %struct.prison, %struct.prison* %25, i32 0, i32 1
  %27 = load %struct.prison*, %struct.prison** %26, align 8
  store %struct.prison* %27, %struct.prison** %4, align 8
  br label %11

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %42, %28
  %30 = load %struct.prison*, %struct.prison** %5, align 8
  %31 = icmp ne %struct.prison* %30, @prison0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.prison*, %struct.prison** %5, align 8
  %34 = getelementptr inbounds %struct.prison, %struct.prison* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PR_IP6_USER, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %32, %29
  %41 = phi i1 [ false, %29 ], [ %39, %32 ]
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = load %struct.prison*, %struct.prison** %5, align 8
  %44 = getelementptr inbounds %struct.prison, %struct.prison* %43, i32 0, i32 1
  %45 = load %struct.prison*, %struct.prison** %44, align 8
  store %struct.prison* %45, %struct.prison** %5, align 8
  br label %29

46:                                               ; preds = %40
  %47 = load %struct.prison*, %struct.prison** %4, align 8
  %48 = load %struct.prison*, %struct.prison** %5, align 8
  %49 = icmp eq %struct.prison* %47, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %9
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
