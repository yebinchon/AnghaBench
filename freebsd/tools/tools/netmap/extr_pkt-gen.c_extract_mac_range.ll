; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_extract_mac_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_extract_mac_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.ether_addr*, %struct.ether_addr* }
%struct.ether_addr = type { i32 }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__*, %struct.ether_addr*, i8*, %struct.ether_addr* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mac_range = type { %struct.ether_addr, i32, %struct.ether_addr }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"extract MAC range from %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid MAC address '%s'\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s starts at %s\00", align 1
@eh = common dso_local global %struct.TYPE_6__* null, align 8
@p = common dso_local global i64 0, align 8
@targ = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_range*)* @extract_mac_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_mac_range(%struct.mac_range* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mac_range*, align 8
  %4 = alloca %struct.ether_addr*, align 8
  store %struct.mac_range* %0, %struct.mac_range** %3, align 8
  %5 = load i64, i64* @verbose, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.mac_range*, %struct.mac_range** %3, align 8
  %9 = getelementptr inbounds %struct.mac_range, %struct.mac_range* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, i32, ...) @D(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.mac_range*, %struct.mac_range** %3, align 8
  %14 = getelementptr inbounds %struct.mac_range, %struct.mac_range* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ether_addr* @ether_aton(i32 %15)
  store %struct.ether_addr* %16, %struct.ether_addr** %4, align 8
  %17 = load %struct.ether_addr*, %struct.ether_addr** %4, align 8
  %18 = icmp eq %struct.ether_addr* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.mac_range*, %struct.mac_range** %3, align 8
  %21 = getelementptr inbounds %struct.mac_range, %struct.mac_range* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, i32, ...) @D(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store i32 1, i32* %2, align 4
  br label %44

24:                                               ; preds = %12
  %25 = load %struct.ether_addr*, %struct.ether_addr** %4, align 8
  %26 = load %struct.mac_range*, %struct.mac_range** %3, align 8
  %27 = getelementptr inbounds %struct.mac_range, %struct.mac_range* %26, i32 0, i32 0
  %28 = call i32 @bcopy(%struct.ether_addr* %25, %struct.ether_addr* %27, i32 6)
  %29 = load %struct.ether_addr*, %struct.ether_addr** %4, align 8
  %30 = load %struct.mac_range*, %struct.mac_range** %3, align 8
  %31 = getelementptr inbounds %struct.mac_range, %struct.mac_range* %30, i32 0, i32 2
  %32 = call i32 @bcopy(%struct.ether_addr* %29, %struct.ether_addr* %31, i32 6)
  %33 = load i64, i64* @verbose, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  %36 = load %struct.mac_range*, %struct.mac_range** %3, align 8
  %37 = getelementptr inbounds %struct.mac_range, %struct.mac_range* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mac_range*, %struct.mac_range** %3, align 8
  %40 = getelementptr inbounds %struct.mac_range, %struct.mac_range* %39, i32 0, i32 0
  %41 = call i32 @ether_ntoa(%struct.ether_addr* %40)
  %42 = call i32 (i8*, i32, ...) @D(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %35, %24
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @D(i8*, i32, ...) #1

declare dso_local %struct.ether_addr* @ether_aton(i32) #1

declare dso_local i32 @bcopy(%struct.ether_addr*, %struct.ether_addr*, i32) #1

declare dso_local i32 @ether_ntoa(%struct.ether_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
