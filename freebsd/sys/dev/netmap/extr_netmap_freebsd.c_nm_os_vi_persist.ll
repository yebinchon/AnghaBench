; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_nm_os_vi_persist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_nm_os_vi_persist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i32, i64, i8* }

@EBUSY = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"if_alloc failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IF_DUNIT_NONE = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@nm_vi_dummy = common dso_local global i64 0, align 8
@nm_vi_start = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@IFCAP_LINKSTATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nm_os_vi_persist(i8* %0, %struct.ifnet** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifnet**, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [6 x i64], align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ifnet** %1, %struct.ifnet*** %5, align 8
  %11 = call i32 (...) @nm_vi_get_index()
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EBUSY, align 4
  store i32 %15, i32* %3, align 4
  br label %80

16:                                               ; preds = %2
  %17 = call i64 @htons(i32 190)
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* @ticks, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  %20 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 0
  %21 = call i32 @bcopy(i64* %7, i64* %20, i32 2)
  %22 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 2
  %23 = call i32 @bcopy(i64* %8, i64* %22, i32 8)
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 5
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* @IFT_ETHER, align 4
  %28 = call %struct.ifnet* @if_alloc(i32 %27)
  store %struct.ifnet* %28, %struct.ifnet** %6, align 8
  %29 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %30 = icmp eq %struct.ifnet* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %16
  %32 = call i32 @nm_prerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %3, align 4
  br label %80

34:                                               ; preds = %16
  %35 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* @IF_DUNIT_NONE, align 4
  %38 = call i32 @if_initname(%struct.ifnet* %35, i8* %36, i32 %37)
  %39 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  store i32 65536, i32* %40, align 8
  %41 = load i32, i32* @IFF_UP, align 4
  %42 = load i32, i32* @IFF_SIMPLEX, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @IFF_MULTICAST, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* @nm_vi_dummy, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 7
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* @nm_vi_dummy, align 8
  %53 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 6
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* @nm_vi_start, align 4
  %56 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @ETHERMTU, align 4
  %59 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 4
  %63 = load i32, i32* @ifqmaxlen, align 4
  %64 = call i32 @IFQ_SET_MAXLEN(i32* %62, i32 %63)
  %65 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %66 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %71 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %76 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 0
  %77 = call i32 @ether_ifattach(%struct.ifnet* %75, i64* %76)
  %78 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %79 = load %struct.ifnet**, %struct.ifnet*** %5, align 8
  store %struct.ifnet* %78, %struct.ifnet** %79, align 8
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %34, %31, %14
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @nm_vi_get_index(...) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @bcopy(i64*, i64*, i32) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @nm_prerr(i8*) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @IFQ_SET_MAXLEN(i32*, i32) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
