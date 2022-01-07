; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanstats/extr_wlanstats.c_getlladdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanstats/extr_wlanstats.c_getlladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlanstatfoo_p = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_dl = type { i32 }
%struct.ifaddrs = type { %struct.TYPE_4__*, i32, %struct.ifaddrs* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"getifaddrs\00", align 1
@AF_LINK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"did not find link layer address for interface %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlanstatfoo_p*)* @getlladdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getlladdr(%struct.wlanstatfoo_p* %0) #0 {
  %2 = alloca %struct.wlanstatfoo_p*, align 8
  %3 = alloca %struct.sockaddr_dl*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca %struct.ifaddrs*, align 8
  store %struct.wlanstatfoo_p* %0, %struct.wlanstatfoo_p** %2, align 8
  %6 = call i64 @getifaddrs(%struct.ifaddrs** %4)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  store %struct.ifaddrs* %11, %struct.ifaddrs** %5, align 8
  br label %12

12:                                               ; preds = %35, %10
  %13 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %14 = icmp ne %struct.ifaddrs* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %17 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %2, align 8
  %20 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strcmp(i32 %18, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %27 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_LINK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %39

34:                                               ; preds = %25, %15
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %37 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %36, i32 0, i32 2
  %38 = load %struct.ifaddrs*, %struct.ifaddrs** %37, align 8
  store %struct.ifaddrs* %38, %struct.ifaddrs** %5, align 8
  br label %12

39:                                               ; preds = %33, %12
  %40 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %41 = icmp eq %struct.ifaddrs* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %2, align 8
  %44 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %39
  %49 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %50 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = bitcast %struct.TYPE_4__* %51 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %52, %struct.sockaddr_dl** %3, align 8
  %53 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %2, align 8
  %54 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %3, align 8
  %57 = call i32 @LLADDR(%struct.sockaddr_dl* %56)
  %58 = call i32 @IEEE80211_ADDR_COPY(i32 %55, i32 %57)
  %59 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %60 = call i32 @freeifaddrs(%struct.ifaddrs* %59)
  ret void
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
