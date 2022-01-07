; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_llatbl.c_htable_link_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_llatbl.c_htable_link_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lltable = type { i64 (%struct.llentry*, i32)*, %struct.llentries*, i32, i32 }
%struct.llentry = type opaque
%struct.llentries = type { i32 }
%struct.llentry.0 = type { i32, %struct.llentries*, %struct.lltable* }

@LLE_LINKED = common dso_local global i32 0, align 4
@lle_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lltable*, %struct.llentry.0*)* @htable_link_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htable_link_entry(%struct.lltable* %0, %struct.llentry.0* %1) #0 {
  %3 = alloca %struct.lltable*, align 8
  %4 = alloca %struct.llentry.0*, align 8
  %5 = alloca %struct.llentries*, align 8
  %6 = alloca i64, align 8
  store %struct.lltable* %0, %struct.lltable** %3, align 8
  store %struct.llentry.0* %1, %struct.llentry.0** %4, align 8
  %7 = load %struct.llentry.0*, %struct.llentry.0** %4, align 8
  %8 = getelementptr inbounds %struct.llentry.0, %struct.llentry.0* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @LLE_LINKED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.lltable*, %struct.lltable** %3, align 8
  %16 = getelementptr inbounds %struct.lltable, %struct.lltable* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IF_AFDATA_WLOCK_ASSERT(i32 %17)
  %19 = load %struct.lltable*, %struct.lltable** %3, align 8
  %20 = getelementptr inbounds %struct.lltable, %struct.lltable* %19, i32 0, i32 0
  %21 = load i64 (%struct.llentry*, i32)*, i64 (%struct.llentry*, i32)** %20, align 8
  %22 = load %struct.llentry.0*, %struct.llentry.0** %4, align 8
  %23 = bitcast %struct.llentry.0* %22 to %struct.llentry*
  %24 = load %struct.lltable*, %struct.lltable** %3, align 8
  %25 = getelementptr inbounds %struct.lltable, %struct.lltable* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 %21(%struct.llentry* %23, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.lltable*, %struct.lltable** %3, align 8
  %29 = getelementptr inbounds %struct.lltable, %struct.lltable* %28, i32 0, i32 1
  %30 = load %struct.llentries*, %struct.llentries** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.llentries, %struct.llentries* %30, i64 %31
  store %struct.llentries* %32, %struct.llentries** %5, align 8
  %33 = load %struct.lltable*, %struct.lltable** %3, align 8
  %34 = load %struct.llentry.0*, %struct.llentry.0** %4, align 8
  %35 = getelementptr inbounds %struct.llentry.0, %struct.llentry.0* %34, i32 0, i32 2
  store %struct.lltable* %33, %struct.lltable** %35, align 8
  %36 = load %struct.llentries*, %struct.llentries** %5, align 8
  %37 = load %struct.llentry.0*, %struct.llentry.0** %4, align 8
  %38 = getelementptr inbounds %struct.llentry.0, %struct.llentry.0* %37, i32 0, i32 1
  store %struct.llentries* %36, %struct.llentries** %38, align 8
  %39 = load i32, i32* @LLE_LINKED, align 4
  %40 = load %struct.llentry.0*, %struct.llentry.0** %4, align 8
  %41 = getelementptr inbounds %struct.llentry.0, %struct.llentry.0* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.llentries*, %struct.llentries** %5, align 8
  %45 = load %struct.llentry.0*, %struct.llentry.0** %4, align 8
  %46 = load i32, i32* @lle_next, align 4
  %47 = call i32 @CK_LIST_INSERT_HEAD(%struct.llentries* %44, %struct.llentry.0* %45, i32 %46)
  br label %48

48:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @IF_AFDATA_WLOCK_ASSERT(i32) #1

declare dso_local i32 @CK_LIST_INSERT_HEAD(%struct.llentries*, %struct.llentry.0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
