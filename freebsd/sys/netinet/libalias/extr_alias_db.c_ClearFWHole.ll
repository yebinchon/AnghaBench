; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_ClearFWHole.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_ClearFWHole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i64, %struct.TYPE_4__, %struct.libalias* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.libalias = type { i32, i32 }
%struct.ip_fw = type { i32 }

@LINK_TCP = common dso_local global i64 0, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_FW_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alias_link*)* @ClearFWHole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ClearFWHole(%struct.alias_link* %0) #0 {
  %2 = alloca %struct.alias_link*, align 8
  %3 = alloca %struct.libalias*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw, align 4
  store %struct.alias_link* %0, %struct.alias_link** %2, align 8
  %6 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %7 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %6, i32 0, i32 2
  %8 = load %struct.libalias*, %struct.libalias** %7, align 8
  store %struct.libalias* %8, %struct.libalias** %3, align 8
  %9 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %10 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LINK_TCP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %1
  %15 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %16 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %48

24:                                               ; preds = %14
  %25 = call i32 @memset(%struct.ip_fw* %5, i32 0, i32 4)
  br label %26

26:                                               ; preds = %35, %24
  %27 = load %struct.libalias*, %struct.libalias** %3, align 8
  %28 = getelementptr inbounds %struct.libalias, %struct.libalias* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IPPROTO_IP, align 4
  %31 = load i32, i32* @IP_FW_DEL, align 4
  %32 = call i32 @setsockopt(i32 %29, i32 %30, i32 %31, i32* %4, i32 4)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %26

36:                                               ; preds = %26
  %37 = load %struct.libalias*, %struct.libalias** %3, align 8
  %38 = load %struct.libalias*, %struct.libalias** %3, align 8
  %39 = getelementptr inbounds %struct.libalias, %struct.libalias* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @fw_clrfield(%struct.libalias* %37, i32 %40, i32 %41)
  %43 = load %struct.alias_link*, %struct.alias_link** %2, align 8
  %44 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 -1, i32* %47, align 4
  br label %48

48:                                               ; preds = %23, %36, %1
  ret void
}

declare dso_local i32 @memset(%struct.ip_fw*, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @fw_clrfield(%struct.libalias*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
