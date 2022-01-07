; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_init_bridges2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_init_bridges2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_bridge = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nm_bridge* @netmap_init_bridges2(i32 %0) #0 {
  %2 = alloca %struct.nm_bridge*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.nm_bridge*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = trunc i64 %8 to i32
  %10 = call %struct.nm_bridge* @nm_os_malloc(i32 %9)
  store %struct.nm_bridge* %10, %struct.nm_bridge** %5, align 8
  %11 = load %struct.nm_bridge*, %struct.nm_bridge** %5, align 8
  %12 = icmp eq %struct.nm_bridge* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.nm_bridge* null, %struct.nm_bridge** %2, align 8
  br label %30

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %25, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load %struct.nm_bridge*, %struct.nm_bridge** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nm_bridge, %struct.nm_bridge* %20, i64 %22
  %24 = call i32 @BDG_RWINIT(%struct.nm_bridge* %23)
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %15

28:                                               ; preds = %15
  %29 = load %struct.nm_bridge*, %struct.nm_bridge** %5, align 8
  store %struct.nm_bridge* %29, %struct.nm_bridge** %2, align 8
  br label %30

30:                                               ; preds = %28, %13
  %31 = load %struct.nm_bridge*, %struct.nm_bridge** %2, align 8
  ret %struct.nm_bridge* %31
}

declare dso_local %struct.nm_bridge* @nm_os_malloc(i32) #1

declare dso_local i32 @BDG_RWINIT(%struct.nm_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
