; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_foreach_fib_walk_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_foreach_fib_walk_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rib_head = type { i32, i32 (i32*, i32, %struct.rt_delinfo*)* }
%struct.rt_delinfo = type { %struct.TYPE_2__, %struct.rtentry*, %struct.rib_head* }
%struct.TYPE_2__ = type { i32*, i8*, i32* }
%struct.rtentry = type { %struct.rtentry* }

@rt_numfibs = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i32 0, align 4
@AF_MAX = common dso_local global i32 0, align 4
@rt_checkdelroute = common dso_local global i32 0, align 4
@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_foreach_fib_walk_del(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rib_head*, align 8
  %8 = alloca %struct.rt_delinfo, align 8
  %9 = alloca %struct.rtentry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = call i32 @bzero(%struct.rt_delinfo* %8, i32 40)
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds %struct.rt_delinfo, %struct.rt_delinfo* %8, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds %struct.rt_delinfo, %struct.rt_delinfo* %8, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %103, %3
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @rt_numfibs, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %106

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @AF_UNSPEC, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %13, align 4
  br label %34

32:                                               ; preds = %25
  store i32 1, i32* %12, align 4
  %33 = load i32, i32* @AF_MAX, align 4
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %99, %34
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %102

40:                                               ; preds = %36
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call %struct.rib_head* @rt_tables_get_rnh(i64 %41, i32 %42)
  store %struct.rib_head* %43, %struct.rib_head** %7, align 8
  %44 = load %struct.rib_head*, %struct.rib_head** %7, align 8
  %45 = icmp eq %struct.rib_head* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %99

47:                                               ; preds = %40
  %48 = load %struct.rib_head*, %struct.rib_head** %7, align 8
  %49 = getelementptr inbounds %struct.rt_delinfo, %struct.rt_delinfo* %8, i32 0, i32 2
  store %struct.rib_head* %48, %struct.rib_head** %49, align 8
  %50 = load %struct.rib_head*, %struct.rib_head** %7, align 8
  %51 = call i32 @RIB_WLOCK(%struct.rib_head* %50)
  %52 = load %struct.rib_head*, %struct.rib_head** %7, align 8
  %53 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %52, i32 0, i32 1
  %54 = load i32 (i32*, i32, %struct.rt_delinfo*)*, i32 (i32*, i32, %struct.rt_delinfo*)** %53, align 8
  %55 = load %struct.rib_head*, %struct.rib_head** %7, align 8
  %56 = getelementptr inbounds %struct.rib_head, %struct.rib_head* %55, i32 0, i32 0
  %57 = load i32, i32* @rt_checkdelroute, align 4
  %58 = call i32 %54(i32* %56, i32 %57, %struct.rt_delinfo* %8)
  %59 = load %struct.rib_head*, %struct.rib_head** %7, align 8
  %60 = call i32 @RIB_WUNLOCK(%struct.rib_head* %59)
  %61 = getelementptr inbounds %struct.rt_delinfo, %struct.rt_delinfo* %8, i32 0, i32 1
  %62 = load %struct.rtentry*, %struct.rtentry** %61, align 8
  %63 = icmp eq %struct.rtentry* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  br label %99

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %70, %65
  %67 = getelementptr inbounds %struct.rt_delinfo, %struct.rt_delinfo* %8, i32 0, i32 1
  %68 = load %struct.rtentry*, %struct.rtentry** %67, align 8
  %69 = icmp ne %struct.rtentry* %68, null
  br i1 %69, label %70, label %98

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.rt_delinfo, %struct.rt_delinfo* %8, i32 0, i32 1
  %72 = load %struct.rtentry*, %struct.rtentry** %71, align 8
  store %struct.rtentry* %72, %struct.rtentry** %9, align 8
  %73 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %74 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %73, i32 0, i32 0
  %75 = load %struct.rtentry*, %struct.rtentry** %74, align 8
  %76 = getelementptr inbounds %struct.rt_delinfo, %struct.rt_delinfo* %8, i32 0, i32 1
  store %struct.rtentry* %75, %struct.rtentry** %76, align 8
  %77 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %78 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %77, i32 0, i32 0
  store %struct.rtentry* null, %struct.rtentry** %78, align 8
  %79 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %80 = call i32 @rt_key(%struct.rtentry* %79)
  %81 = getelementptr inbounds %struct.rt_delinfo, %struct.rt_delinfo* %8, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @RTAX_DST, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %87 = call i32 @rt_mask(%struct.rtentry* %86)
  %88 = getelementptr inbounds %struct.rt_delinfo, %struct.rt_delinfo* %8, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @RTAX_NETMASK, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %87, i32* %92, align 4
  %93 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %94 = getelementptr inbounds %struct.rt_delinfo, %struct.rt_delinfo* %8, i32 0, i32 0
  %95 = call i32 @rt_notifydelete(%struct.rtentry* %93, %struct.TYPE_2__* %94)
  %96 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  %97 = call i32 @RTFREE_LOCKED(%struct.rtentry* %96)
  br label %66

98:                                               ; preds = %66
  br label %99

99:                                               ; preds = %98, %64, %46
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %36

102:                                              ; preds = %36
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %10, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %10, align 8
  br label %21

106:                                              ; preds = %21
  ret void
}

declare dso_local i32 @bzero(%struct.rt_delinfo*, i32) #1

declare dso_local %struct.rib_head* @rt_tables_get_rnh(i64, i32) #1

declare dso_local i32 @RIB_WLOCK(%struct.rib_head*) #1

declare dso_local i32 @RIB_WUNLOCK(%struct.rib_head*) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @rt_mask(%struct.rtentry*) #1

declare dso_local i32 @rt_notifydelete(%struct.rtentry*, %struct.TYPE_2__*) #1

declare dso_local i32 @RTFREE_LOCKED(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
