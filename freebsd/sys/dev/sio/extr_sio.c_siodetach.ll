; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sio/extr_sio.c_siodetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sio/extr_sio.c_siodetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.com_s = type { %struct.com_s*, i64, i32, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"NULL com in siounload\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siodetach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.com_s*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @device_get_softc(i32 %5)
  %7 = inttoptr i64 %6 to %struct.com_s*
  store %struct.com_s* %7, %struct.com_s** %4, align 8
  %8 = load %struct.com_s*, %struct.com_s** %4, align 8
  %9 = icmp eq %struct.com_s* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_printf(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %78

13:                                               ; preds = %1
  %14 = load i32, i32* @TRUE, align 4
  %15 = load %struct.com_s*, %struct.com_s** %4, align 8
  %16 = getelementptr inbounds %struct.com_s, %struct.com_s* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 8
  %17 = load %struct.com_s*, %struct.com_s** %4, align 8
  %18 = getelementptr inbounds %struct.com_s, %struct.com_s* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.com_s*, %struct.com_s** %4, align 8
  %23 = getelementptr inbounds %struct.com_s, %struct.com_s* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @ttyfree(i64 %24)
  br label %26

26:                                               ; preds = %21, %13
  %27 = load %struct.com_s*, %struct.com_s** %4, align 8
  %28 = getelementptr inbounds %struct.com_s, %struct.com_s* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.com_s*, %struct.com_s** %4, align 8
  %34 = getelementptr inbounds %struct.com_s, %struct.com_s* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.com_s*, %struct.com_s** %4, align 8
  %37 = getelementptr inbounds %struct.com_s, %struct.com_s* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @bus_teardown_intr(i32 %32, i64 %35, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SYS_RES_IRQ, align 4
  %42 = load %struct.com_s*, %struct.com_s** %4, align 8
  %43 = getelementptr inbounds %struct.com_s, %struct.com_s* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @bus_release_resource(i32 %40, i32 %41, i32 0, i64 %44)
  br label %46

46:                                               ; preds = %31, %26
  %47 = load %struct.com_s*, %struct.com_s** %4, align 8
  %48 = getelementptr inbounds %struct.com_s, %struct.com_s* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SYS_RES_IOPORT, align 4
  %54 = load %struct.com_s*, %struct.com_s** %4, align 8
  %55 = getelementptr inbounds %struct.com_s, %struct.com_s* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.com_s*, %struct.com_s** %4, align 8
  %58 = getelementptr inbounds %struct.com_s, %struct.com_s* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @bus_release_resource(i32 %52, i32 %53, i32 %56, i64 %59)
  br label %61

61:                                               ; preds = %51, %46
  %62 = load %struct.com_s*, %struct.com_s** %4, align 8
  %63 = getelementptr inbounds %struct.com_s, %struct.com_s* %62, i32 0, i32 0
  %64 = load %struct.com_s*, %struct.com_s** %63, align 8
  %65 = icmp ne %struct.com_s* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.com_s*, %struct.com_s** %4, align 8
  %68 = getelementptr inbounds %struct.com_s, %struct.com_s* %67, i32 0, i32 0
  %69 = load %struct.com_s*, %struct.com_s** %68, align 8
  %70 = load i32, i32* @M_DEVBUF, align 4
  %71 = call i32 @free(%struct.com_s* %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %61
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @device_set_softc(i32 %73, i32* null)
  %75 = load %struct.com_s*, %struct.com_s** %4, align 8
  %76 = load i32, i32* @M_DEVBUF, align 4
  %77 = call i32 @free(%struct.com_s* %75, i32 %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %72, %10
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ttyfree(i64) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @free(%struct.com_s*, i32) #1

declare dso_local i32 @device_set_softc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
