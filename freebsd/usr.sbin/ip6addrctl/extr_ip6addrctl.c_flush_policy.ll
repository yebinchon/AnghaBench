; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_flush_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_flush_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policyqueue = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"socket(UDP)\00", align 1
@policyhead = common dso_local global i32 0, align 4
@SIOCDADDRCTL_POLICY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ioctl(SIOCDADDRCTL_POLICY)\00", align 1
@pc_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flush_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_policy() #0 {
  %1 = alloca %struct.policyqueue*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @AF_INET6, align 4
  %4 = load i32, i32* @SOCK_DGRAM, align 4
  %5 = load i32, i32* @IPPROTO_UDP, align 4
  %6 = call i32 @socket(i32 %3, i32 %4, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  %11 = call %struct.policyqueue* @TAILQ_FIRST(i32* @policyhead)
  store %struct.policyqueue* %11, %struct.policyqueue** %1, align 8
  br label %12

12:                                               ; preds = %25, %10
  %13 = load %struct.policyqueue*, %struct.policyqueue** %1, align 8
  %14 = icmp ne %struct.policyqueue* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @SIOCDADDRCTL_POLICY, align 4
  %18 = load %struct.policyqueue*, %struct.policyqueue** %1, align 8
  %19 = getelementptr inbounds %struct.policyqueue, %struct.policyqueue* %18, i32 0, i32 0
  %20 = call i64 @ioctl(i32 %16, i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %15
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.policyqueue*, %struct.policyqueue** %1, align 8
  %27 = load i32, i32* @pc_entry, align 4
  %28 = call %struct.policyqueue* @TAILQ_NEXT(%struct.policyqueue* %26, i32 %27)
  store %struct.policyqueue* %28, %struct.policyqueue** %1, align 8
  br label %12

29:                                               ; preds = %12
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @close(i32 %30)
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.policyqueue* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local %struct.policyqueue* @TAILQ_NEXT(%struct.policyqueue*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
