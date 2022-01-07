; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_rmx.c_in6_mtuexpire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_rmx.c_in6_mtuexpire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32, i32 }
%struct.mtuex_arg = type { i32 }

@RTF_PROBEMTU = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtentry*, i8*)* @in6_mtuexpire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_mtuexpire(%struct.rtentry* %0, i8* %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtuex_arg*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.mtuex_arg*
  store %struct.mtuex_arg* %7, %struct.mtuex_arg** %5, align 8
  %8 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %9 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  %13 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %14 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RTF_PROBEMTU, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %12
  %20 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %21 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @time_uptime, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @RTF_PROBEMTU, align 4
  %27 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %28 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %41

31:                                               ; preds = %19
  %32 = load %struct.mtuex_arg*, %struct.mtuex_arg** %5, align 8
  %33 = getelementptr inbounds %struct.mtuex_arg, %struct.mtuex_arg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %36 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @lmin(i32 %34, i32 %37)
  %39 = load %struct.mtuex_arg*, %struct.mtuex_arg** %5, align 8
  %40 = getelementptr inbounds %struct.mtuex_arg, %struct.mtuex_arg* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %31, %25
  br label %42

42:                                               ; preds = %41, %12, %2
  ret i32 0
}

declare dso_local i32 @lmin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
