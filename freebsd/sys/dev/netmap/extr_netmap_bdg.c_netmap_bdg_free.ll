; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bdg_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bdg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_bridge = type { i32, i64, i32, i32, i32, i32 }

@NM_BDG_ACTIVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"marking bridge %s as free\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_bdg_free(%struct.nm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nm_bridge*, align 8
  store %struct.nm_bridge* %0, %struct.nm_bridge** %3, align 8
  %4 = load %struct.nm_bridge*, %struct.nm_bridge** %3, align 8
  %5 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @NM_BDG_ACTIVE, align 4
  %8 = and i32 %6, %7
  %9 = sext i32 %8 to i64
  %10 = load %struct.nm_bridge*, %struct.nm_bridge** %3, align 8
  %11 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @EBUSY, align 4
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load %struct.nm_bridge*, %struct.nm_bridge** %3, align 8
  %19 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nm_prdis(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.nm_bridge*, %struct.nm_bridge** %3, align 8
  %23 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @nm_os_free(i32 %24)
  %26 = load %struct.nm_bridge*, %struct.nm_bridge** %3, align 8
  %27 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %26, i32 0, i32 3
  %28 = call i32 @memset(i32* %27, i32 0, i32 4)
  %29 = load %struct.nm_bridge*, %struct.nm_bridge** %3, align 8
  %30 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %29, i32 0, i32 2
  %31 = call i32 @memset(i32* %30, i32 0, i32 4)
  %32 = load %struct.nm_bridge*, %struct.nm_bridge** %3, align 8
  %33 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.nm_bridge*, %struct.nm_bridge** %3, align 8
  %35 = call i32 @NM_BNS_PUT(%struct.nm_bridge* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %17, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @nm_prdis(i8*, i32) #1

declare dso_local i32 @nm_os_free(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @NM_BNS_PUT(%struct.nm_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
