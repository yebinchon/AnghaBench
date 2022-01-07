; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_inet6_rth-segments.c_init_hdrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet6/inet6_rth/extr_inet6_rth-segments.c_init_hdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.cmsghdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_hdrs(%struct.msghdr* %0, %struct.cmsghdr* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca %struct.cmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.msghdr* %0, %struct.msghdr** %5, align 8
  store %struct.cmsghdr* %1, %struct.cmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %10 = icmp ne %struct.msghdr* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %13 = bitcast %struct.msghdr* %12 to i8*
  %14 = call i32 @memset(i8* %13, i32 0, i64 4)
  br label %15

15:                                               ; preds = %11, %4
  %16 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %17 = icmp ne %struct.cmsghdr* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %20 = bitcast %struct.cmsghdr* %19 to i8*
  %21 = call i32 @memset(i8* %20, i32 0, i64 4)
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @memset(i8* %26, i32 0, i64 %27)
  br label %29

29:                                               ; preds = %25, %22
  ret void
}

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
