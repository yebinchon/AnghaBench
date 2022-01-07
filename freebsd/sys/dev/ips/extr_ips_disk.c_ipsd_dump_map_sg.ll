; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_disk.c_ipsd_dump_map_sg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_disk.c_ipsd_dump_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i64, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"ipsd_dump_map_sg: error %d\0A\00", align 1
@IPS_COMMAND_LEN = common dso_local global i32 0, align 4
@IPS_SG_WRITE_CMD = common dso_local global i32 0, align 4
@IPS_WRITE_CMD = common dso_local global i32 0, align 4
@IPS_BLKSIZE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_14__*, i32, i32)* @ipsd_dump_map_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipsd_dump_map_sg(i8* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %10, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %9, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @ips_set_error(%struct.TYPE_13__* %25, i32 %26)
  br label %149

28:                                               ; preds = %4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %12, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %97

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* @IPS_COMMAND_LEN, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = bitcast i32* %45 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %11, align 8
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %82, %35
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %47
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i32 %68, i32* %73, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %51
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %47

85:                                               ; preds = %47
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* @IPS_COMMAND_LEN, align 4
  %91 = add nsw i32 %89, %90
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @IPS_SG_WRITE_CMD, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  br label %113

97:                                               ; preds = %28
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %14, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i32 0, i32* %109, align 4
  %110 = load i32, i32* @IPS_WRITE_CMD, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %97, %85
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @IPS_BLKSIZE, align 4
  %116 = add nsw i32 %114, %115
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* @IPS_BLKSIZE, align 4
  %119 = sdiv i32 %117, %118
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %130 = call i32 @bus_dmamap_sync(i32 %125, i32 %128, i32 %129)
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %138 = call i32 @bus_dmamap_sync(i32 %133, i32 %136, i32 %137)
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %140, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %143 = call i32 %141(%struct.TYPE_13__* %142)
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %145, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %148 = call i32 %146(%struct.TYPE_13__* %147)
  br label %149

149:                                              ; preds = %113, %22
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ips_set_error(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
