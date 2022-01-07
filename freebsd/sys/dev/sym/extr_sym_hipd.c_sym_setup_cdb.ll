; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_setup_cdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_setup_cdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { i32, %struct.TYPE_7__, %struct.ccb_hdr }
%struct.TYPE_7__ = type { i64, i64 }
%struct.ccb_hdr = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@CAM_CDB_PHYS = common dso_local global i32 0, align 4
@cdb_buf = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ccb_scsiio*, %struct.TYPE_10__*)* @sym_setup_cdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_setup_cdb(i32 %0, %struct.ccb_scsiio* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.ccb_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @SYM_LOCK_ASSERT(i32 %11)
  %13 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %14 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %13, i32 0, i32 2
  store %struct.ccb_hdr* %14, %struct.ccb_hdr** %8, align 8
  %15 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %16 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 %18, 4
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CAM_REQ_INVALID, align 4
  %25 = call i32 @sym_set_cam_status(i32 %23, i32 %24)
  store i32 -1, i32* %4, align 4
  br label %93

26:                                               ; preds = %3
  %27 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %28 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %31 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CAM_CDB_POINTER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %26
  %37 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %38 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CAM_CDB_PHYS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %36
  %44 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %45 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @bcopy(i64 %47, i32 %50, i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = load i32*, i32** @cdb_buf, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @CCB_BA(%struct.TYPE_10__* %53, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %64

58:                                               ; preds = %36
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CAM_REQ_INVALID, align 4
  %63 = call i32 @sym_set_cam_status(i32 %61, i32 %62)
  store i32 -1, i32* %4, align 4
  br label %93

64:                                               ; preds = %43
  br label %80

65:                                               ; preds = %26
  %66 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %67 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @bcopy(i64 %69, i32 %72, i32 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = load i32*, i32** @cdb_buf, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @CCB_BA(%struct.TYPE_10__* %75, i32 %78)
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %65, %64
  %81 = load i32, i32* %9, align 4
  %82 = call i8* @cpu_to_scr(i32 %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i8* %82, i8** %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i8* @cpu_to_scr(i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i8* %88, i8** %92, align 8
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %80, %58, %20
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @SYM_LOCK_ASSERT(i32) #1

declare dso_local i32 @sym_set_cam_status(i32, i32) #1

declare dso_local i32 @bcopy(i64, i32, i32) #1

declare dso_local i32 @CCB_BA(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @cpu_to_scr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
