; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_spdcache_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_spdcache_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spdcache_entry = type { i32 }

@V_spdcachehash_mask = common dso_local global i32 0, align 4
@V_spdcachehashtbl = common dso_local global i32* null, align 8
@chain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spdcache_clear() #0 {
  %1 = alloca %struct.spdcache_entry*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %33, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @V_spdcachehash_mask, align 4
  %6 = add nsw i32 %5, 1
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %3
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @SPDCACHE_LOCK(i32 %9)
  br label %11

11:                                               ; preds = %19, %8
  %12 = load i32*, i32** @V_spdcachehashtbl, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @LIST_EMPTY(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  %20 = load i32*, i32** @V_spdcachehashtbl, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call %struct.spdcache_entry* @LIST_FIRST(i32* %23)
  store %struct.spdcache_entry* %24, %struct.spdcache_entry** %1, align 8
  %25 = load %struct.spdcache_entry*, %struct.spdcache_entry** %1, align 8
  %26 = load i32, i32* @chain, align 4
  %27 = call i32 @LIST_REMOVE(%struct.spdcache_entry* %25, i32 %26)
  %28 = load %struct.spdcache_entry*, %struct.spdcache_entry** %1, align 8
  %29 = call i32 @spdcache_entry_free(%struct.spdcache_entry* %28)
  br label %11

30:                                               ; preds = %11
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @SPDCACHE_UNLOCK(i32 %31)
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %3

36:                                               ; preds = %3
  ret void
}

declare dso_local i32 @SPDCACHE_LOCK(i32) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local %struct.spdcache_entry* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.spdcache_entry*, i32) #1

declare dso_local i32 @spdcache_entry_free(%struct.spdcache_entry*) #1

declare dso_local i32 @SPDCACHE_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
