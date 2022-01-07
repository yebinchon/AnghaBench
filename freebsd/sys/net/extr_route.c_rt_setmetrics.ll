; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_setmetrics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_rt_setmetrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_addrinfo = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.rtentry = type { i64, i64, i32, i32 }

@RTV_MTU = common dso_local global i32 0, align 4
@RTF_FIXEDMTU = common dso_local global i32 0, align 4
@RTV_WEIGHT = common dso_local global i32 0, align 4
@RTV_EXPIRE = common dso_local global i32 0, align 4
@time_second = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_addrinfo*, %struct.rtentry*)* @rt_setmetrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_setmetrics(%struct.rt_addrinfo* %0, %struct.rtentry* %1) #0 {
  %3 = alloca %struct.rt_addrinfo*, align 8
  %4 = alloca %struct.rtentry*, align 8
  store %struct.rt_addrinfo* %0, %struct.rt_addrinfo** %3, align 8
  store %struct.rtentry* %1, %struct.rtentry** %4, align 8
  %5 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %6 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @RTV_MTU, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %13 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load i32, i32* @RTF_FIXEDMTU, align 4
  %20 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %21 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %31

24:                                               ; preds = %11
  %25 = load i32, i32* @RTF_FIXEDMTU, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %28 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %33 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %38 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %31, %2
  %40 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %41 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @RTV_WEIGHT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %48 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %53 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %46, %39
  %55 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %56 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RTV_EXPIRE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %54
  %62 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %63 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %3, align 8
  %70 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @time_second, align 8
  %75 = sub nsw i64 %73, %74
  %76 = load i64, i64* @time_uptime, align 8
  %77 = add nsw i64 %75, %76
  br label %79

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78, %68
  %80 = phi i64 [ %77, %68 ], [ 0, %78 ]
  %81 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %82 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %54
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
