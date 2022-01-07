; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_cleanup_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_cleanup_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_qp = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_dev*, %struct.qlnxr_qp*)* @qlnxr_cleanup_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_cleanup_user(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1) #0 {
  %3 = alloca %struct.qlnxr_dev*, align 8
  %4 = alloca %struct.qlnxr_qp*, align 8
  %5 = alloca i32*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %3, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %4, align 8
  %6 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %7 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @QL_DPRINT12(i32* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %12 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %18 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @ib_umem_release(i32* %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %24 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %27 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %33 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @ib_umem_release(i32* %35)
  br label %37

37:                                               ; preds = %31, %22
  %38 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %4, align 8
  %39 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @QL_DPRINT12(i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*) #1

declare dso_local i32 @ib_umem_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
