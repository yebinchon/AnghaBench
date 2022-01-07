; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_disk.c_ipsd_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_disk.c_ipsd_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.disk = type { %struct.TYPE_12__* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ipsd: failed to get cmd for dump\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ipsd_dump_block_complete = common dso_local global i32 0, align 4
@IPS_MAX_IO_SIZE = common dso_local global i64 0, align 8
@IPS_BLKSIZE = common dso_local global i64 0, align 8
@ipsd_dump_map_sg = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @ipsd_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsd_dump(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.disk*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.disk*
  store %struct.disk* %22, %struct.disk** %16, align 8
  %23 = load %struct.disk*, %struct.disk** %16, align 8
  %24 = getelementptr inbounds %struct.disk, %struct.disk* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %12, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %27 = icmp eq %struct.TYPE_12__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %6, align 4
  br label %129

30:                                               ; preds = %5
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %13, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %35 = call i64 @ips_get_free_cmd(%struct.TYPE_13__* %34, %struct.TYPE_15__** %14, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %6, align 4
  br label %129

40:                                               ; preds = %30
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @ipsd_dump_block_complete, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %15, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %10, align 8
  store i64 %69, i64* %18, align 8
  %70 = load i8*, i8** %8, align 8
  store i8* %70, i8** %17, align 8
  br label %71

71:                                               ; preds = %110, %40
  %72 = load i64, i64* %11, align 8
  %73 = icmp ugt i64 %72, 0
  br i1 %73, label %74, label %122

74:                                               ; preds = %71
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @IPS_MAX_IO_SIZE, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64, i64* @IPS_MAX_IO_SIZE, align 8
  br label %82

80:                                               ; preds = %74
  %81 = load i64, i64* %11, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i64 [ %79, %78 ], [ %81, %80 ]
  store i64 %83, i64* %19, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* @IPS_BLKSIZE, align 8
  %86 = udiv i64 %84, %85
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %17, align 8
  %96 = load i64, i64* %19, align 8
  %97 = load i32, i32* @ipsd_dump_map_sg, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %99 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %100 = call i64 @bus_dmamap_load(i32 %91, i32 %94, i8* %95, i64 %96, i32 %97, %struct.TYPE_15__* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %82
  %103 = load i32, i32* @EIO, align 4
  store i32 %103, i32* %20, align 4
  br label %122

104:                                              ; preds = %82
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %106 = call i64 @COMMAND_ERROR(%struct.TYPE_15__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @EIO, align 4
  store i32 %109, i32* %20, align 4
  br label %122

110:                                              ; preds = %104
  %111 = load i64, i64* %19, align 8
  %112 = load i64, i64* %11, align 8
  %113 = sub i64 %112, %111
  store i64 %113, i64* %11, align 8
  %114 = load i64, i64* %19, align 8
  %115 = load i64, i64* %18, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %18, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = bitcast i8* %117 to i32*
  %119 = load i64, i64* %19, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = bitcast i32* %120 to i8*
  store i8* %121, i8** %17, align 8
  br label %71

122:                                              ; preds = %108, %102, %71
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %127 = call i32 @ips_insert_free_cmd(i32 %125, %struct.TYPE_15__* %126)
  %128 = load i32, i32* %20, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %122, %37, %28
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i64 @ips_get_free_cmd(%struct.TYPE_13__*, %struct.TYPE_15__**, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i8*, i64, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @COMMAND_ERROR(%struct.TYPE_15__*) #1

declare dso_local i32 @ips_insert_free_cmd(i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
