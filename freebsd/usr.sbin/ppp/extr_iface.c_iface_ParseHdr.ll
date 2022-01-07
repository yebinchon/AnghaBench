; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_ParseHdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iface.c_iface_ParseHdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifa_msghdr = type { i32 }
%struct.sockaddr = type { i32 }

@RTAX_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iface_ParseHdr(%struct.ifa_msghdr* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca %struct.ifa_msghdr*, align 8
  %4 = alloca %struct.sockaddr**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ifa_msghdr* %0, %struct.ifa_msghdr** %3, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %4, align 8
  %7 = load i32, i32* @RTAX_MAX, align 4
  %8 = zext i32 %7 to i64
  %9 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %3, align 8
  %10 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %9, i64 1
  %11 = bitcast %struct.ifa_msghdr* %10 to i8*
  store i8* %11, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %48, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RTAX_MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %3, align 8
  %18 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to %struct.sockaddr*
  %27 = load %struct.sockaddr**, %struct.sockaddr*** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %27, i64 %29
  store %struct.sockaddr* %26, %struct.sockaddr** %30, align 8
  %31 = load %struct.sockaddr**, %struct.sockaddr*** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %31, i64 %33
  %35 = load %struct.sockaddr*, %struct.sockaddr** %34, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ROUNDUP(i32 %37)
  %39 = load i8*, i8** %5, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %5, align 8
  br label %47

42:                                               ; preds = %16
  %43 = load %struct.sockaddr**, %struct.sockaddr*** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %43, i64 %45
  store %struct.sockaddr* null, %struct.sockaddr** %46, align 8
  br label %47

47:                                               ; preds = %42, %24
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %12

51:                                               ; preds = %12
  ret void
}

declare dso_local i32 @ROUNDUP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
