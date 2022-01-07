; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_cleanup_kernel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_cleanup_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qlnxr_qp = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"freeing SQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"freeing RQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_dev*, %struct.qlnxr_qp*)* @qlnxr_cleanup_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_cleanup_kernel(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1) #0 {
  %3 = alloca %struct.qlnxr_dev*, align 8
  %4 = alloca %struct.qlnxr_qp*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %3, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %4, align 8
  %6 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %7 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = call i32 @QL_DPRINT12(%struct.TYPE_3__* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %12 = call i64 @qlnxr_qp_has_sq(%struct.qlnxr_qp* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = call i32 @QL_DPRINT12(%struct.TYPE_3__* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %22 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree(i32 %23)
  br label %25

25:                                               ; preds = %14, %2
  %26 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %27 = call i64 @qlnxr_qp_has_rq(%struct.qlnxr_qp* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = call i32 @QL_DPRINT12(%struct.TYPE_3__* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %37 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @kfree(i32 %38)
  br label %40

40:                                               ; preds = %29, %25
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = call i32 @QL_DPRINT12(%struct.TYPE_3__* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_3__*, i8*) #1

declare dso_local i64 @qlnxr_qp_has_sq(%struct.qlnxr_qp*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i64 @qlnxr_qp_has_rq(%struct.qlnxr_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
