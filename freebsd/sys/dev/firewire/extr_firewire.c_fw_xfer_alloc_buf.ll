; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_xfer_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_xfer_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xfer = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.malloc_type = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fw_xfer* @fw_xfer_alloc_buf(%struct.malloc_type* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fw_xfer*, align 8
  %5 = alloca %struct.malloc_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_xfer*, align 8
  store %struct.malloc_type* %0, %struct.malloc_type** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.malloc_type*, %struct.malloc_type** %5, align 8
  %10 = call %struct.fw_xfer* @fw_xfer_alloc(%struct.malloc_type* %9)
  store %struct.fw_xfer* %10, %struct.fw_xfer** %8, align 8
  %11 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %12 = icmp eq %struct.fw_xfer* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.fw_xfer* null, %struct.fw_xfer** %4, align 8
  br label %81

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %17 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %21 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.malloc_type*, %struct.malloc_type** %5, align 8
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call i8* @malloc(i32 %26, %struct.malloc_type* %27, i32 %30)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %34 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32* %32, i32** %35, align 8
  %36 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %37 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %43 = call i32 @fw_xfer_free(%struct.fw_xfer* %42)
  store %struct.fw_xfer* null, %struct.fw_xfer** %4, align 8
  br label %81

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44, %14
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.malloc_type*, %struct.malloc_type** %5, align 8
  %51 = load i32, i32* @M_NOWAIT, align 4
  %52 = call i8* @malloc(i32 %49, %struct.malloc_type* %50, i32 %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %55 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32* %53, i32** %56, align 8
  %57 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %58 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %48
  %63 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %64 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %70 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.malloc_type*, %struct.malloc_type** %5, align 8
  %74 = call i32 @free(i32* %72, %struct.malloc_type* %73)
  br label %75

75:                                               ; preds = %68, %62
  %76 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %77 = call i32 @fw_xfer_free(%struct.fw_xfer* %76)
  store %struct.fw_xfer* null, %struct.fw_xfer** %4, align 8
  br label %81

78:                                               ; preds = %48
  br label %79

79:                                               ; preds = %78, %45
  %80 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  store %struct.fw_xfer* %80, %struct.fw_xfer** %4, align 8
  br label %81

81:                                               ; preds = %79, %75, %41, %13
  %82 = load %struct.fw_xfer*, %struct.fw_xfer** %4, align 8
  ret %struct.fw_xfer* %82
}

declare dso_local %struct.fw_xfer* @fw_xfer_alloc(%struct.malloc_type*) #1

declare dso_local i8* @malloc(i32, %struct.malloc_type*, i32) #1

declare dso_local i32 @fw_xfer_free(%struct.fw_xfer*) #1

declare dso_local i32 @free(i32*, %struct.malloc_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
