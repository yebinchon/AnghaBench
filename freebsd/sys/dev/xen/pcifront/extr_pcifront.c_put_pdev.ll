; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_put_pdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_put_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { i64, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [34 x i8] c"freeing pdev @ 0x%p (ref_cnt=%d)\0A\00", align 1
@INVALID_EVTCHN = common dso_local global i64 0, align 8
@INVALID_GRANT_REF = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcifront_device*)* @put_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_pdev(%struct.pcifront_device* %0) #0 {
  %2 = alloca %struct.pcifront_device*, align 8
  store %struct.pcifront_device* %0, %struct.pcifront_device** %2, align 8
  %3 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %4 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, -1
  store i64 %6, i64* %4, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %51

9:                                                ; preds = %1
  %10 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %11 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %12 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.pcifront_device* %10, i64 %13)
  %15 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %16 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @INVALID_EVTCHN, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %9
  %21 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %22 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %25 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @xenbus_free_evtchn(%struct.TYPE_2__* %23, i64 %26)
  br label %28

28:                                               ; preds = %20, %9
  %29 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %30 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @INVALID_GRANT_REF, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %36 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %39 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @gnttab_end_foreign_access(i64 %37, i32 0, i8* %41)
  br label %43

43:                                               ; preds = %34, %28
  %44 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %45 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %49 = load i32, i32* @M_DEVBUF, align 4
  %50 = call i32 @free(%struct.pcifront_device* %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %8
  ret void
}

declare dso_local i32 @DPRINTF(i8*, %struct.pcifront_device*, i64) #1

declare dso_local i32 @xenbus_free_evtchn(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @gnttab_end_foreign_access(i64, i32, i8*) #1

declare dso_local i32 @free(%struct.pcifront_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
