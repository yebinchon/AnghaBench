; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/traceroute6/extr_traceroute6.c_get_hoplim.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/traceroute6/extr_traceroute6.c_get_hoplim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.cmsghdr = type { i64, i64, i64 }

@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@IPV6_HOPLIMIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hoplim(%struct.msghdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca %struct.cmsghdr*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  %5 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %6 = call i64 @CMSG_FIRSTHDR(%struct.msghdr* %5)
  %7 = inttoptr i64 %6 to %struct.cmsghdr*
  store %struct.cmsghdr* %7, %struct.cmsghdr** %4, align 8
  br label %8

8:                                                ; preds = %35, %1
  %9 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %10 = icmp ne %struct.cmsghdr* %9, null
  br i1 %10, label %11, label %40

11:                                               ; preds = %8
  %12 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %13 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IPPROTO_IPV6, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %19 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPV6_HOPLIMIT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %25 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @CMSG_LEN(i32 4)
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %31 = call i64 @CMSG_DATA(%struct.cmsghdr* %30)
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %2, align 4
  br label %41

34:                                               ; preds = %23, %17, %11
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %37 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %38 = call i64 @CMSG_NXTHDR(%struct.msghdr* %36, %struct.cmsghdr* %37)
  %39 = inttoptr i64 %38 to %struct.cmsghdr*
  store %struct.cmsghdr* %39, %struct.cmsghdr** %4, align 8
  br label %8

40:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i64 @CMSG_LEN(i32) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i64 @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
