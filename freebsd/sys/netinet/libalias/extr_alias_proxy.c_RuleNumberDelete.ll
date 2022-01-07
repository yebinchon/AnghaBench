; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_RuleNumberDelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_RuleNumberDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { %struct.proxy_entry* }
%struct.proxy_entry = type { i32, %struct.proxy_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, i32)* @RuleNumberDelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RuleNumberDelete(%struct.libalias* %0, i32 %1) #0 {
  %3 = alloca %struct.libalias*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.proxy_entry*, align 8
  %7 = alloca %struct.proxy_entry*, align 8
  store %struct.libalias* %0, %struct.libalias** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.libalias*, %struct.libalias** %3, align 8
  %9 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %8)
  store i32 -1, i32* %5, align 4
  %10 = load %struct.libalias*, %struct.libalias** %3, align 8
  %11 = getelementptr inbounds %struct.libalias, %struct.libalias* %10, i32 0, i32 0
  %12 = load %struct.proxy_entry*, %struct.proxy_entry** %11, align 8
  store %struct.proxy_entry* %12, %struct.proxy_entry** %6, align 8
  br label %13

13:                                               ; preds = %28, %2
  %14 = load %struct.proxy_entry*, %struct.proxy_entry** %6, align 8
  %15 = icmp ne %struct.proxy_entry* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load %struct.proxy_entry*, %struct.proxy_entry** %6, align 8
  %18 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %17, i32 0, i32 1
  %19 = load %struct.proxy_entry*, %struct.proxy_entry** %18, align 8
  store %struct.proxy_entry* %19, %struct.proxy_entry** %7, align 8
  %20 = load %struct.proxy_entry*, %struct.proxy_entry** %6, align 8
  %21 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  %26 = load %struct.proxy_entry*, %struct.proxy_entry** %6, align 8
  %27 = call i32 @RuleDelete(%struct.proxy_entry* %26)
  br label %28

28:                                               ; preds = %25, %16
  %29 = load %struct.proxy_entry*, %struct.proxy_entry** %7, align 8
  store %struct.proxy_entry* %29, %struct.proxy_entry** %6, align 8
  br label %13

30:                                               ; preds = %13
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i32 @RuleDelete(%struct.proxy_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
