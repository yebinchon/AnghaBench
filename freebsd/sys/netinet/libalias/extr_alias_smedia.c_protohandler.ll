; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_smedia.c_protohandler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_smedia.c_protohandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { i32, i32 }
%struct.alias_data = type { i32, i32, i32*, i32*, i32* }

@TFTP_PORT_NUMBER = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.ip*, %struct.alias_data*)* @protohandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protohandler(%struct.libalias* %0, %struct.ip* %1, %struct.alias_data* %2) #0 {
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca %struct.ip*, align 8
  %6 = alloca %struct.alias_data*, align 8
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store %struct.ip* %1, %struct.ip** %5, align 8
  store %struct.alias_data* %2, %struct.alias_data** %6, align 8
  %7 = load %struct.alias_data*, %struct.alias_data** %6, align 8
  %8 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @ntohs(i32 %10)
  %12 = load i64, i64* @TFTP_PORT_NUMBER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load %struct.libalias*, %struct.libalias** %4, align 8
  %16 = load %struct.ip*, %struct.ip** %5, align 8
  %17 = getelementptr inbounds %struct.ip, %struct.ip* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ip*, %struct.ip** %5, align 8
  %20 = getelementptr inbounds %struct.ip, %struct.ip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.alias_data*, %struct.alias_data** %6, align 8
  %23 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.alias_data*, %struct.alias_data** %6, align 8
  %27 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IPPROTO_UDP, align 4
  %31 = call i32 @FindRtspOut(%struct.libalias* %15, i32 %18, i32 %21, i32 %25, i32 %29, i32 %30)
  br label %42

32:                                               ; preds = %3
  %33 = load %struct.libalias*, %struct.libalias** %4, align 8
  %34 = load %struct.ip*, %struct.ip** %5, align 8
  %35 = load %struct.alias_data*, %struct.alias_data** %6, align 8
  %36 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.alias_data*, %struct.alias_data** %6, align 8
  %39 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @AliasHandleRtspOut(%struct.libalias* %33, %struct.ip* %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %32, %14
  ret i32 0
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @FindRtspOut(%struct.libalias*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AliasHandleRtspOut(%struct.libalias*, %struct.ip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
