; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i64, i32, %struct.ntb_transport_child*, %struct.ntb_transport_child*, i32, i32, i32, %struct.ntb_transport_child* }
%struct.ntb_transport_child = type { i32, %struct.ntb_transport_child* }

@M_DEVBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Some queues not freed on detach (%jx)\00", align 1
@taskqueue_swi = common dso_local global i32 0, align 4
@M_NTB_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ntb_transport_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_transport_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_transport_ctx*, align 8
  %4 = alloca %struct.ntb_transport_child**, align 8
  %5 = alloca %struct.ntb_transport_child*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.ntb_transport_ctx* @device_get_softc(i32 %8)
  store %struct.ntb_transport_ctx* %9, %struct.ntb_transport_ctx** %3, align 8
  %10 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %10, i32 0, i32 7
  store %struct.ntb_transport_child** %11, %struct.ntb_transport_child*** %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %30, %1
  %13 = load %struct.ntb_transport_child**, %struct.ntb_transport_child*** %4, align 8
  %14 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %13, align 8
  store %struct.ntb_transport_child* %14, %struct.ntb_transport_child** %5, align 8
  %15 = icmp ne %struct.ntb_transport_child* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.ntb_transport_child**, %struct.ntb_transport_child*** %4, align 8
  %18 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %17, align 8
  %19 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %18, i32 0, i32 1
  %20 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %19, align 8
  %21 = load %struct.ntb_transport_child**, %struct.ntb_transport_child*** %4, align 8
  store %struct.ntb_transport_child* %20, %struct.ntb_transport_child** %21, align 8
  %22 = load i32, i32* %2, align 4
  %23 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %5, align 8
  %24 = getelementptr inbounds %struct.ntb_transport_child, %struct.ntb_transport_child* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @device_delete_child(i32 %22, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %34

30:                                               ; preds = %16
  %31 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %5, align 8
  %32 = load i32, i32* @M_DEVBUF, align 4
  %33 = call i32 @free(%struct.ntb_transport_child* %31, i32 %32)
  br label %12

34:                                               ; preds = %29, %12
  %35 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @KASSERT(i32 %39, i8* %43)
  %45 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %46 = call i32 @ntb_transport_link_cleanup(%struct.ntb_transport_ctx* %45)
  %47 = load i32, i32* @taskqueue_swi, align 4
  %48 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %48, i32 0, i32 6
  %50 = call i32 @taskqueue_drain(i32 %47, i32* %49)
  %51 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %51, i32 0, i32 5
  %53 = call i32 @callout_drain(i32* %52)
  %54 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %54, i32 0, i32 4
  %56 = call i32 @callout_drain(i32* %55)
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @ntb_link_disable(i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @ntb_clear_ctx(i32 %59)
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %71, %34
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @ntb_free_mw(%struct.ntb_transport_ctx* %68, i32 %69)
  br label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %61

74:                                               ; preds = %61
  %75 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %75, i32 0, i32 3
  %77 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %76, align 8
  %78 = load i32, i32* @M_NTB_T, align 4
  %79 = call i32 @free(%struct.ntb_transport_child* %77, i32 %78)
  %80 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %80, i32 0, i32 2
  %82 = load %struct.ntb_transport_child*, %struct.ntb_transport_child** %81, align 8
  %83 = load i32, i32* @M_NTB_T, align 4
  %84 = call i32 @free(%struct.ntb_transport_child* %82, i32 %83)
  ret i32 0
}

declare dso_local %struct.ntb_transport_ctx* @device_get_softc(i32) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @free(%struct.ntb_transport_child*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ntb_transport_link_cleanup(%struct.ntb_transport_ctx*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ntb_link_disable(i32) #1

declare dso_local i32 @ntb_clear_ctx(i32) #1

declare dso_local i32 @ntb_free_mw(%struct.ntb_transport_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
