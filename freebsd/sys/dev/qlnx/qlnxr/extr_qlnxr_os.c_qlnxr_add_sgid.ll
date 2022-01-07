; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_add_sgid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_add_sgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, i32, i32* }
%union.ib_gid = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@QLNXR_MAX_SGID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"copying sgid : %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"sgid present : %llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"didn't find an empty entry in sgid_tbl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %union.ib_gid*)* @qlnxr_add_sgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_add_sgid(%struct.qlnxr_dev* %0, %union.ib_gid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca %union.ib_gid*, align 8
  %6 = alloca %union.ib_gid, align 4
  %7 = alloca i32, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %4, align 8
  store %union.ib_gid* %1, %union.ib_gid** %5, align 8
  %8 = bitcast %union.ib_gid* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %10 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %69, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @QLNXR_MAX_SGID, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %72

16:                                               ; preds = %12
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %18 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @memcmp(i32* %22, %union.ib_gid* %6, i32 4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %16
  %26 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %27 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %33 = call i32 @memcpy(i32* %31, %union.ib_gid* %32, i32 4)
  %34 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %35 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %38 = getelementptr inbounds %union.ib_gid, %union.ib_gid* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @QL_DPRINT12(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %43 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %42, i32 0, i32 0
  %44 = call i32 @mtx_unlock(i32* %43)
  store i32 1, i32* %3, align 4
  br label %85

45:                                               ; preds = %16
  %46 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %47 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %53 = call i32 @memcmp(i32* %51, %union.ib_gid* %52, i32 4)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %45
  %56 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %57 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %56, i32 0, i32 0
  %58 = call i32 @mtx_unlock(i32* %57)
  %59 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %60 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %63 = getelementptr inbounds %union.ib_gid, %union.ib_gid* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @QL_DPRINT12(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  store i32 0, i32* %3, align 4
  br label %85

67:                                               ; preds = %45
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %12

72:                                               ; preds = %12
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @QLNXR_MAX_SGID, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %78 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, ...) @QL_DPRINT12(i32 %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %76, %72
  %82 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %83 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %82, i32 0, i32 0
  %84 = call i32 @mtx_unlock(i32* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %55, %25
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i32 @memcmp(i32*, %union.ib_gid*, i32) #2

declare dso_local i32 @memcpy(i32*, %union.ib_gid*, i32) #2

declare dso_local i32 @QL_DPRINT12(i32, i8*, ...) #2

declare dso_local i32 @mtx_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
