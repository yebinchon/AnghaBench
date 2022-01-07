; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_llatbl.c_lltable_try_set_entry_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_llatbl.c_lltable_try_set_entry_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.llentry = type { i32 }

@LLE_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lltable_try_set_entry_addr(%struct.ifnet* %0, %struct.llentry* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.llentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %7, align 8
  store %struct.llentry* %1, %struct.llentry** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.llentry*, %struct.llentry** %8, align 8
  %13 = call i32 @LLE_WLOCK_ASSERT(%struct.llentry* %12)
  %14 = load %struct.llentry*, %struct.llentry** %8, align 8
  %15 = call i32 @LLE_ADDREF(%struct.llentry* %14)
  %16 = load %struct.llentry*, %struct.llentry** %8, align 8
  %17 = call i32 @LLE_WUNLOCK(%struct.llentry* %16)
  %18 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %19 = call i32 @IF_AFDATA_WLOCK(%struct.ifnet* %18)
  %20 = load %struct.llentry*, %struct.llentry** %8, align 8
  %21 = call i32 @LLE_WLOCK(%struct.llentry* %20)
  %22 = load %struct.llentry*, %struct.llentry** %8, align 8
  %23 = getelementptr inbounds %struct.llentry, %struct.llentry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LLE_DELETED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %30 = call i32 @IF_AFDATA_WUNLOCK(%struct.ifnet* %29)
  %31 = load %struct.llentry*, %struct.llentry** %8, align 8
  %32 = call i32 @LLE_FREE_LOCKED(%struct.llentry* %31)
  store i32 0, i32* %6, align 4
  br label %44

33:                                               ; preds = %5
  %34 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %35 = load %struct.llentry*, %struct.llentry** %8, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @lltable_set_entry_addr(%struct.ifnet* %34, %struct.llentry* %35, i8* %36, i64 %37, i32 %38)
  %40 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %41 = call i32 @IF_AFDATA_WUNLOCK(%struct.ifnet* %40)
  %42 = load %struct.llentry*, %struct.llentry** %8, align 8
  %43 = call i32 @LLE_REMREF(%struct.llentry* %42)
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %33, %28
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @LLE_WLOCK_ASSERT(%struct.llentry*) #1

declare dso_local i32 @LLE_ADDREF(%struct.llentry*) #1

declare dso_local i32 @LLE_WUNLOCK(%struct.llentry*) #1

declare dso_local i32 @IF_AFDATA_WLOCK(%struct.ifnet*) #1

declare dso_local i32 @LLE_WLOCK(%struct.llentry*) #1

declare dso_local i32 @IF_AFDATA_WUNLOCK(%struct.ifnet*) #1

declare dso_local i32 @LLE_FREE_LOCKED(%struct.llentry*) #1

declare dso_local i32 @lltable_set_entry_addr(%struct.ifnet*, %struct.llentry*, i8*, i64, i32) #1

declare dso_local i32 @LLE_REMREF(%struct.llentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
