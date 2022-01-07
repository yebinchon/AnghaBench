; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ctl.c_gctl_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ctl.c_gctl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, %struct.TYPE_2__*, %struct.TYPE_2__* }

@GCTL_PARAM_NAMEKERNEL = common dso_local global i32 0, align 4
@GCTL_PARAM_VALUEKERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*)* @gctl_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gctl_free(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca i64, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  %4 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %5 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @sbuf_delete(i32 %6)
  %8 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %9 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp eq %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %78

13:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %70, %13
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %17 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %14
  %21 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %22 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GCTL_PARAM_NAMEKERNEL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %33 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 @g_free(%struct.TYPE_2__* %38)
  br label %40

40:                                               ; preds = %31, %20
  %41 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %42 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @GCTL_PARAM_VALUEKERNEL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %40
  %52 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %53 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %51
  %61 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %62 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = call i32 @g_free(%struct.TYPE_2__* %67)
  br label %69

69:                                               ; preds = %60, %51, %40
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %3, align 8
  br label %14

73:                                               ; preds = %14
  %74 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %75 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = call i32 @g_free(%struct.TYPE_2__* %76)
  br label %78

78:                                               ; preds = %73, %12
  ret void
}

declare dso_local i32 @sbuf_delete(i32) #1

declare dso_local i32 @g_free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
