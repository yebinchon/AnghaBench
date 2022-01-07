; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rp_releaseresource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp.c_rp_releaseresource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i64, %struct.rp_port* }
%struct.rp_port = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"rpwt\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rp_releaseresource(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.rp_port*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %7 = load %struct.rp_port*, %struct.rp_port** %6, align 8
  %8 = icmp ne %struct.rp_port* %7, null
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %34, %9
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load %struct.rp_port*, %struct.rp_port** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %19, i64 %21
  store %struct.rp_port* %22, %struct.rp_port** %3, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @atomic_add_32(i64* %24, i32 1)
  %26 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %27 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @tty_lock(i32 %28)
  %30 = load %struct.rp_port*, %struct.rp_port** %3, align 8
  %31 = getelementptr inbounds %struct.rp_port, %struct.rp_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @tty_rel_gone(i32 %32)
  br label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %10

37:                                               ; preds = %10
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load %struct.rp_port*, %struct.rp_port** %39, align 8
  %41 = load i32, i32* @M_DEVBUF, align 4
  %42 = call i32 @free(%struct.rp_port* %40, i32 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  store %struct.rp_port* null, %struct.rp_port** %44, align 8
  br label %45

45:                                               ; preds = %37, %1
  br label %46

46:                                               ; preds = %51, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @hz, align 4
  %53 = sdiv i32 %52, 10
  %54 = call i32 @pause(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %46

55:                                               ; preds = %46
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = call i32 @mtx_destroy(i32* %62)
  br label %64

64:                                               ; preds = %60, %55
  ret void
}

declare dso_local i32 @atomic_add_32(i64*, i32) #1

declare dso_local i32 @tty_lock(i32) #1

declare dso_local i32 @tty_rel_gone(i32) #1

declare dso_local i32 @free(%struct.rp_port*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
