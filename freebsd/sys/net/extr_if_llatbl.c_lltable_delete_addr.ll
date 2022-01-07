; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_llatbl.c_lltable_delete_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_llatbl.c_lltable_delete_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lltable = type { i32 (%struct.lltable*, %struct.llentry*)*, %struct.ifnet* }
%struct.llentry = type opaque
%struct.ifnet = type { i32 }
%struct.sockaddr = type { i32 }
%struct.llentry.0 = type { i32 }

@LLE_EXCLUSIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@LLE_IFADDR = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lltable_delete_addr(%struct.lltable* %0, i32 %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lltable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.llentry.0*, align 8
  %9 = alloca %struct.ifnet*, align 8
  store %struct.lltable* %0, %struct.lltable** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %10 = load %struct.lltable*, %struct.lltable** %5, align 8
  %11 = getelementptr inbounds %struct.lltable, %struct.lltable* %10, i32 0, i32 1
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %9, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %14 = call i32 @IF_AFDATA_WLOCK(%struct.ifnet* %13)
  %15 = load %struct.lltable*, %struct.lltable** %5, align 8
  %16 = load i32, i32* @LLE_EXCLUSIVE, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %18 = call %struct.llentry.0* @lla_lookup(%struct.lltable* %15, i32 %16, %struct.sockaddr* %17)
  store %struct.llentry.0* %18, %struct.llentry.0** %8, align 8
  %19 = load %struct.llentry.0*, %struct.llentry.0** %8, align 8
  %20 = icmp eq %struct.llentry.0* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %23 = call i32 @IF_AFDATA_WUNLOCK(%struct.ifnet* %22)
  %24 = load i32, i32* @ENOENT, align 4
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %3
  %26 = load %struct.llentry.0*, %struct.llentry.0** %8, align 8
  %27 = getelementptr inbounds %struct.llentry.0, %struct.llentry.0* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LLE_IFADDR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @LLE_IFADDR, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %39 = call i32 @IF_AFDATA_WUNLOCK(%struct.ifnet* %38)
  %40 = load %struct.llentry.0*, %struct.llentry.0** %8, align 8
  %41 = call i32 @LLE_WUNLOCK(%struct.llentry.0* %40)
  %42 = load i32, i32* @EPERM, align 4
  store i32 %42, i32* %4, align 4
  br label %56

43:                                               ; preds = %32, %25
  %44 = load %struct.lltable*, %struct.lltable** %5, align 8
  %45 = load %struct.llentry.0*, %struct.llentry.0** %8, align 8
  %46 = call i32 @lltable_unlink_entry(%struct.lltable* %44, %struct.llentry.0* %45)
  %47 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %48 = call i32 @IF_AFDATA_WUNLOCK(%struct.ifnet* %47)
  %49 = load %struct.lltable*, %struct.lltable** %5, align 8
  %50 = getelementptr inbounds %struct.lltable, %struct.lltable* %49, i32 0, i32 0
  %51 = load i32 (%struct.lltable*, %struct.llentry*)*, i32 (%struct.lltable*, %struct.llentry*)** %50, align 8
  %52 = load %struct.lltable*, %struct.lltable** %5, align 8
  %53 = load %struct.llentry.0*, %struct.llentry.0** %8, align 8
  %54 = bitcast %struct.llentry.0* %53 to %struct.llentry*
  %55 = call i32 %51(%struct.lltable* %52, %struct.llentry* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %43, %37, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @IF_AFDATA_WLOCK(%struct.ifnet*) #1

declare dso_local %struct.llentry.0* @lla_lookup(%struct.lltable*, i32, %struct.sockaddr*) #1

declare dso_local i32 @IF_AFDATA_WUNLOCK(%struct.ifnet*) #1

declare dso_local i32 @LLE_WUNLOCK(%struct.llentry.0*) #1

declare dso_local i32 @lltable_unlink_entry(%struct.lltable*, %struct.llentry.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
