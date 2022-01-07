; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_reassign_blocks.c_sati_reassign_blocks_initial_processing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_reassign_blocks.c_sati_reassign_blocks_initial_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i64 }

@SCSI_REASSIGN_BLOCKS_LONGLBA_BIT = common dso_local global i32 0, align 4
@SCSI_REASSIGN_BLOCKS_LONGLIST_BIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SATI_REASSIGN_BLOCKS_COMMAND_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i8*)* @sati_reassign_blocks_initial_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sati_reassign_blocks_initial_processing(%struct.TYPE_8__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = bitcast [4 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 16, i1 false)
  %16 = load i8*, i8** %5, align 8
  %17 = call i32* @sati_cb_get_cdb_address(i8* %16)
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = call i32 @sati_get_cdb_byte(i32* %18, i32 1)
  %20 = load i32, i32* @SCSI_REASSIGN_BLOCKS_LONGLBA_BIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  store i32 4, i32* %11, align 4
  br label %25

24:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  store i32 8, i32* %11, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32*, i32** %14, align 8
  %27 = call i32 @sati_get_cdb_byte(i32* %26, i32 1)
  %28 = load i32, i32* @SCSI_REASSIGN_BLOCKS_LONGLIST_BIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %33

32:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 4, i32* %35, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %47, %33
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %44
  %46 = call i32 @sati_get_data_byte(%struct.TYPE_8__* %40, i8* %41, i32 %42, i32* %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %36

50:                                               ; preds = %36
  store i32 4, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 %55, 8
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %56, %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %12, align 4
  br label %79

62:                                               ; preds = %50
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %64 = load i32, i32* %63, align 16
  %65 = shl i32 %64, 24
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 16
  %69 = add nsw i32 %65, %68
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %71 = load i32, i32* %70, align 8
  %72 = shl i32 %71, 8
  %73 = add nsw i32 %69, %72
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %73, %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %62, %53
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32 %88, i32* %92, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 6
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  store i32 %99, i32* %103, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 5
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* @FALSE, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  store i32 %108, i32* %112, align 8
  %113 = load i32, i32* @SATI_REASSIGN_BLOCKS_COMMAND_FAIL, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  store i32 %113, i32* %117, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #2

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #2

declare dso_local i32 @sati_get_data_byte(%struct.TYPE_8__*, i8*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
