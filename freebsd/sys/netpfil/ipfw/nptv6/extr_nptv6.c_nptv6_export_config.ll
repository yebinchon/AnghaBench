; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_export_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_export_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.nptv6_cfg = type { i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@NPTV6_DYNAMIC_PREFIX = common dso_local global i32 0, align 4
@IF_NAMESIZE = common dso_local global i32 0, align 4
@NPTV6_FLAGSMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.nptv6_cfg*, %struct.TYPE_5__*)* @nptv6_export_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nptv6_export_config(%struct.ip_fw_chain* %0, %struct.nptv6_cfg* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.nptv6_cfg*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.nptv6_cfg* %1, %struct.nptv6_cfg** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %7 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %5, align 8
  %8 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 4
  %12 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %5, align 8
  %13 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NPTV6_DYNAMIC_PREFIX, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IF_NAMESIZE, align 4
  %26 = call i32 @memcpy(i32 %21, i32 %24, i32 %25)
  br label %33

27:                                               ; preds = %3
  %28 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %5, align 8
  %29 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %18
  %34 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %5, align 8
  %35 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %5, align 8
  %40 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NPTV6_FLAGSMASK, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %5, align 8
  %47 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %5, align 8
  %56 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @strlcpy(i32 %54, i32 %58, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
