; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_query_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_query_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64, i64 }
%union.ib_gid = type { i32 }
%struct.qlnxr_dev = type { i32*, i32* }

@.str = private unnamed_addr constant [17 x i8] c"enter index: %d\0A\00", align 1
@QLNXR_MAX_SGID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid gid index %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"exit : %p\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@zgid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_query_gid(%struct.ib_device* %0, i32 %1, i32 %2, %union.ib_gid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.ib_gid*, align 8
  %10 = alloca %struct.qlnxr_dev*, align 8
  %11 = alloca i32*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.ib_gid* %3, %union.ib_gid** %9, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %13 = call %struct.qlnxr_dev* @get_qlnxr_dev(%struct.ib_device* %12)
  store %struct.qlnxr_dev* %13, %struct.qlnxr_dev** %10, align 8
  %14 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %15 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @QL_DPRINT12(i32* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @QLNXR_MAX_SGID, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23, %4
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @QL_DPRINT12(i32* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %31 = call i32 @memset(%union.ib_gid* %30, i32 0, i32 4)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %47

34:                                               ; preds = %23
  %35 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %36 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %10, align 8
  %37 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @memcpy(%union.ib_gid* %35, i32* %41, i32 4)
  %43 = load i32*, i32** %11, align 8
  %44 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %45 = ptrtoint %union.ib_gid* %44 to i32
  %46 = call i32 @QL_DPRINT12(i32* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %34, %26
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(%struct.ib_device*) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, i32) #1

declare dso_local i32 @memset(%union.ib_gid*, i32, i32) #1

declare dso_local i32 @memcpy(%union.ib_gid*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
