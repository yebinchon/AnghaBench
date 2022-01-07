; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_RuleDelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_RuleDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proxy_entry = type { %struct.TYPE_3__*, %struct.TYPE_4__*, %struct.libalias* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.libalias = type { %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proxy_entry*)* @RuleDelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RuleDelete(%struct.proxy_entry* %0) #0 {
  %2 = alloca %struct.proxy_entry*, align 8
  %3 = alloca %struct.libalias*, align 8
  store %struct.proxy_entry* %0, %struct.proxy_entry** %2, align 8
  %4 = load %struct.proxy_entry*, %struct.proxy_entry** %2, align 8
  %5 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %4, i32 0, i32 2
  %6 = load %struct.libalias*, %struct.libalias** %5, align 8
  store %struct.libalias* %6, %struct.libalias** %3, align 8
  %7 = load %struct.libalias*, %struct.libalias** %3, align 8
  %8 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %7)
  %9 = load %struct.proxy_entry*, %struct.proxy_entry** %2, align 8
  %10 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.proxy_entry*, %struct.proxy_entry** %2, align 8
  %15 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.proxy_entry*, %struct.proxy_entry** %2, align 8
  %18 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %20, align 8
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.proxy_entry*, %struct.proxy_entry** %2, align 8
  %23 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.libalias*, %struct.libalias** %3, align 8
  %26 = getelementptr inbounds %struct.libalias, %struct.libalias* %25, i32 0, i32 0
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %26, align 8
  br label %27

27:                                               ; preds = %21, %13
  %28 = load %struct.proxy_entry*, %struct.proxy_entry** %2, align 8
  %29 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.proxy_entry*, %struct.proxy_entry** %2, align 8
  %34 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load %struct.proxy_entry*, %struct.proxy_entry** %2, align 8
  %37 = getelementptr inbounds %struct.proxy_entry, %struct.proxy_entry* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %39, align 8
  br label %40

40:                                               ; preds = %32, %27
  %41 = load %struct.proxy_entry*, %struct.proxy_entry** %2, align 8
  %42 = call i32 @free(%struct.proxy_entry* %41)
  ret void
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i32 @free(%struct.proxy_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
