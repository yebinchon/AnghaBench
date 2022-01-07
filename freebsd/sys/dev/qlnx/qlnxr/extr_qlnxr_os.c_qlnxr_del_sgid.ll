; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_del_sgid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_del_sgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, i32*, i32 }
%union.ib_gid = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"removing gid %llx %llx\0A\00", align 1
@QLNXR_MAX_SGID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %union.ib_gid*)* @qlnxr_del_sgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_del_sgid(%struct.qlnxr_dev* %0, %union.ib_gid* %1) #0 {
  %3 = alloca %struct.qlnxr_dev*, align 8
  %4 = alloca %union.ib_gid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %3, align 8
  store %union.ib_gid* %1, %union.ib_gid** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %8 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %11 = bitcast %union.ib_gid* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %15 = bitcast %union.ib_gid* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @QL_DPRINT12(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17)
  %19 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %20 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %19, i32 0, i32 0
  %21 = call i32 @mtx_lock(i32* %20)
  store i32 1, i32* %6, align 4
  br label %22

22:                                               ; preds = %45, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @QLNXR_MAX_SGID, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %28 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load %union.ib_gid*, %union.ib_gid** %4, align 8
  %34 = call i32 @memcmp(i32* %32, %union.ib_gid* %33, i32 8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %26
  %37 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %38 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @memset(i32* %42, i32 0, i32 8)
  store i32 1, i32* %5, align 4
  br label %48

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %22

48:                                               ; preds = %36, %22
  %49 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %50 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %49, i32 0, i32 0
  %51 = call i32 @mtx_unlock(i32* %50)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @QL_DPRINT12(i32, i8*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @memcmp(i32*, %union.ib_gid*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
