; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_data = type { i64, i64, i64, i32, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppc_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppc_data*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ppc_data* @DEVTOSOFTC(i32 %5)
  store %struct.ppc_data* %6, %struct.ppc_data** %4, align 8
  %7 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %8 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %72

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_delete_children(i32 %14)
  %16 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %17 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %23 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %26 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @bus_teardown_intr(i32 %21, i64 %24, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SYS_RES_IRQ, align 4
  %31 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %32 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %35 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @bus_release_resource(i32 %29, i32 %30, i32 %33, i64 %36)
  br label %38

38:                                               ; preds = %20, %13
  %39 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %40 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SYS_RES_IOPORT, align 4
  %46 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %47 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %50 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @bus_release_resource(i32 %44, i32 %45, i32 %48, i64 %51)
  br label %53

53:                                               ; preds = %43, %38
  %54 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %55 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @SYS_RES_DRQ, align 4
  %61 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %62 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %65 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @bus_release_resource(i32 %59, i32 %60, i32 %63, i64 %66)
  br label %68

68:                                               ; preds = %58, %53
  %69 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %70 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %69, i32 0, i32 3
  %71 = call i32 @mtx_destroy(i32* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.ppc_data* @DEVTOSOFTC(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
