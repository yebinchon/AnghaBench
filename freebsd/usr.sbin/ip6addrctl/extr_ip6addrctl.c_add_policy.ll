; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_add_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_add_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addrpolicy = type { i8*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"bad prefix: %s\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"socket(UDP)\00", align 1
@SIOCAADDRCTL_POLICY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"ioctl(SIOCAADDRCTL_POLICY)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @add_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_policy(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.in6_addrpolicy, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i32 @memset(%struct.in6_addrpolicy* %7, i32 0, i32 16)
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @parse_prefix(i8* %10, %struct.in6_addrpolicy* %7)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @atoi(i8* %17)
  %19 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %7, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @atoi(i8* %20)
  %22 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %7, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* @AF_INET6, align 4
  %24 = load i32, i32* @SOCK_DGRAM, align 4
  %25 = load i32, i32* @IPPROTO_UDP, align 4
  %26 = call i32 @socket(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %16
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @SIOCAADDRCTL_POLICY, align 4
  %33 = call i64 @ioctl(i32 %31, i32 %32, %struct.in6_addrpolicy* %7)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @close(i32 %38)
  ret void
}

declare dso_local i32 @memset(%struct.in6_addrpolicy*, i32, i32) #1

declare dso_local i64 @parse_prefix(i8*, %struct.in6_addrpolicy*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.in6_addrpolicy*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
