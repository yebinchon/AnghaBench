; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_connect_buddy.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_connect_buddy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connect_buddy(%struct.params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.params*, align 8
  %4 = alloca %struct.sockaddr_in, align 4
  store %struct.params* %0, %struct.params** %3, align 8
  %5 = call i32 @memset(%struct.sockaddr_in* %4, i32 0, i32 12)
  %6 = load i32, i32* @PF_INET, align 4
  %7 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load %struct.params*, %struct.params** %3, align 8
  %9 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @htons(i32 %10)
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load %struct.params*, %struct.params** %3, align 8
  %14 = getelementptr inbounds %struct.params, %struct.params* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SOCK_STREAM, align 4
  %22 = load i32, i32* @IPPROTO_TCP, align 4
  %23 = call i32 @socket(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.params*, %struct.params** %3, align 8
  %25 = getelementptr inbounds %struct.params, %struct.params* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = icmp eq i32 %23, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %37

28:                                               ; preds = %1
  %29 = load %struct.params*, %struct.params** %3, align 8
  %30 = getelementptr inbounds %struct.params, %struct.params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %33 = call i32 @connect(i32 %31, %struct.sockaddr* %32, i32 12)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %37

36:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %35, %27
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
