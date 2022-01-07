; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_eiface.c_ng_eiface_mediachange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_eiface.c_ng_eiface_mediachange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i8*, i32 }
%struct.TYPE_2__ = type { %struct.ifmedia }
%struct.ifmedia = type { i32 }

@IFM_ETHER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i64 0, align 8
@IFM_1000_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @ng_eiface_mediachange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_eiface_mediachange(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca %struct.ifmedia*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %4, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ifmedia* %12, %struct.ifmedia** %5, align 8
  %13 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %14 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @IFM_TYPE(i32 %15)
  %17 = load i32, i32* @IFM_ETHER, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %2, align 4
  br label %43

21:                                               ; preds = %1
  %22 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %23 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IFM_SUBTYPE(i32 %24)
  %26 = load i64, i64* @IFM_AUTO, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* @IFM_ETHER, align 4
  %30 = load i32, i32* @IFM_1000_T, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @ifmedia_baudrate(i32 %31)
  %33 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %42

35:                                               ; preds = %21
  %36 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %37 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @ifmedia_baudrate(i32 %38)
  %40 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %35, %28
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %19
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @IFM_TYPE(i32) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i8* @ifmedia_baudrate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
