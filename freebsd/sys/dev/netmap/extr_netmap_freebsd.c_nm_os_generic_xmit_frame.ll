; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_nm_os_generic_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_nm_os_generic_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_os_gen_arg = type { i64, i32, i32, %struct.mbuf*, %struct.ifnet* }
%struct.mbuf = type { %struct.TYPE_5__, i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { %struct.ifnet*, i32, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ifnet = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.ifnet*, %struct.mbuf*)* }

@.str = private unnamed_addr constant [25 x i8] c"invalid refcnt %d for %p\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"in generic_xmit_frame\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"size %d < len %d\00", align 1
@M_PKTHDR = common dso_local global i32 0, align 4
@M_HASHTYPE_OPAQUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nm_os_generic_xmit_frame(%struct.nm_os_gen_arg* %0) #0 {
  %2 = alloca %struct.nm_os_gen_arg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store %struct.nm_os_gen_arg* %0, %struct.nm_os_gen_arg** %2, align 8
  %7 = load %struct.nm_os_gen_arg*, %struct.nm_os_gen_arg** %2, align 8
  %8 = getelementptr inbounds %struct.nm_os_gen_arg, %struct.nm_os_gen_arg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.nm_os_gen_arg*, %struct.nm_os_gen_arg** %2, align 8
  %11 = getelementptr inbounds %struct.nm_os_gen_arg, %struct.nm_os_gen_arg* %10, i32 0, i32 4
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %5, align 8
  %13 = load %struct.nm_os_gen_arg*, %struct.nm_os_gen_arg** %2, align 8
  %14 = getelementptr inbounds %struct.nm_os_gen_arg, %struct.nm_os_gen_arg* %13, i32 0, i32 3
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  store %struct.mbuf* %15, %struct.mbuf** %6, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %17 = call i32 @MBUF_REFCNT(%struct.mbuf* %16)
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %21 = call i32 @MBUF_REFCNT(%struct.mbuf* %20)
  %22 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %23 = call i32 @nm_prerr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.mbuf* %22)
  %24 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @nm_prlim(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %36, i64 %37)
  %39 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %40 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %32, %25
  %44 = load %struct.nm_os_gen_arg*, %struct.nm_os_gen_arg** %2, align 8
  %45 = getelementptr inbounds %struct.nm_os_gen_arg, %struct.nm_os_gen_arg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @bcopy(i32 %46, i32 %49, i64 %50)
  %52 = load i32, i32* @M_PKTHDR, align 4
  %53 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i64 %57, i64* %60, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 1
  store i64 %57, i64* %62, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %64 = call i32 @SET_MBUF_REFCNT(%struct.mbuf* %63, i32 2)
  %65 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %66 = load i32, i32* @M_HASHTYPE_OPAQUE, align 4
  %67 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %65, i32 %66)
  %68 = load %struct.nm_os_gen_arg*, %struct.nm_os_gen_arg** %2, align 8
  %69 = getelementptr inbounds %struct.nm_os_gen_arg, %struct.nm_os_gen_arg* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %72 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  %74 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %75 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store %struct.ifnet* %74, %struct.ifnet** %77, align 8
  %78 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @CURVNET_SET(i32 %80)
  %82 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %83 = call %struct.TYPE_6__* @NA(%struct.ifnet* %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %84, align 8
  %86 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %87 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %88 = call i32 %85(%struct.ifnet* %86, %struct.mbuf* %87)
  store i32 %88, i32* %3, align 4
  %89 = call i32 (...) @CURVNET_RESTORE()
  %90 = load i32, i32* %3, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 -1, i32 0
  ret i32 %93
}

declare dso_local i32 @MBUF_REFCNT(%struct.mbuf*) #1

declare dso_local i32 @nm_prerr(i8*, i32, %struct.mbuf*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @nm_prlim(i32, i8*, i64, i64) #1

declare dso_local i32 @bcopy(i32, i32, i64) #1

declare dso_local i32 @SET_MBUF_REFCNT(%struct.mbuf*, i32) #1

declare dso_local i32 @M_HASHTYPE_SET(%struct.mbuf*, i32) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local %struct.TYPE_6__* @NA(%struct.ifnet*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
