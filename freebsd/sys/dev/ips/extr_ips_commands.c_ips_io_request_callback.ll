; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_commands.c_ips_io_request_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_commands.c_ips_io_request_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_13__*)*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_10__*, %struct.bio* }
%struct.bio = type { i32, i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"ips: error = %d in ips_sg_request_callback\0A\00", align 1
@BIO_ERROR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPS_SG_READ_CMD = common dso_local global i32 0, align 4
@IPS_SG_WRITE_CMD = common dso_local global i32 0, align 4
@IPS_COMMAND_LEN = common dso_local global i32 0, align 4
@IPS_READ_CMD = common dso_local global i32 0, align 4
@IPS_WRITE_CMD = common dso_local global i32 0, align 4
@IPS_BLKSIZE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"ips test: command id: %d segments: %d pblkno: %lld length: %d, ds_len: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_14__*, i32, i32)* @ips_io_request_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_io_request_callback(i8* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.bio*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %10, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 7
  %21 = load %struct.bio*, %struct.bio** %20, align 8
  store %struct.bio* %21, %struct.bio** %13, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bus_dmamap_unload(i32 %32, i32 %35)
  %37 = load i32, i32* @BIO_ERROR, align 4
  %38 = load %struct.bio*, %struct.bio** %13, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = load %struct.bio*, %struct.bio** %13, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %47 = call i32 @ips_insert_free_cmd(%struct.TYPE_10__* %45, %struct.TYPE_13__* %46)
  %48 = load %struct.bio*, %struct.bio** %13, align 8
  %49 = call i32 @ipsd_finish(%struct.bio* %48)
  br label %219

50:                                               ; preds = %4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %12, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load %struct.bio*, %struct.bio** %13, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %134

67:                                               ; preds = %50
  %68 = load %struct.bio*, %struct.bio** %13, align 8
  %69 = call i64 @ips_read_request(%struct.bio* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @IPS_SG_READ_CMD, align 4
  store i32 %72, i32* %16, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @IPS_SG_WRITE_CMD, align 4
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = load i32, i32* @IPS_COMMAND_LEN, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = bitcast i32* %85 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %11, align 8
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %122, %75
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %125

91:                                               ; preds = %87
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  store i32 %97, i32* %102, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  store i32 %108, i32* %113, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %91
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  br label %87

125:                                              ; preds = %87
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* @IPS_COMMAND_LEN, align 4
  %131 = add nsw i32 %129, %130
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  br label %153

134:                                              ; preds = %50
  %135 = load %struct.bio*, %struct.bio** %13, align 8
  %136 = call i64 @ips_read_request(%struct.bio* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* @IPS_READ_CMD, align 4
  store i32 %139, i32* %16, align 4
  br label %142

140:                                              ; preds = %134
  %141 = load i32, i32* @IPS_WRITE_CMD, align 4
  store i32 %141, i32* %16, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %15, align 4
  br label %153

153:                                              ; preds = %142, %125
  %154 = load i32, i32* %16, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 8
  %157 = load %struct.bio*, %struct.bio** %13, align 8
  %158 = getelementptr inbounds %struct.bio, %struct.bio* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* @IPS_BLKSIZE, align 4
  %164 = add nsw i32 %162, %163
  %165 = sub nsw i32 %164, 1
  %166 = load i32, i32* @IPS_BLKSIZE, align 4
  %167 = sdiv i32 %165, %166
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %178 = call i32 @bus_dmamap_sync(i32 %173, i32 %176, i32 %177)
  %179 = load %struct.bio*, %struct.bio** %13, align 8
  %180 = call i64 @ips_read_request(%struct.bio* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %153
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %190 = call i32 @bus_dmamap_sync(i32 %185, i32 %188, i32 %189)
  br label %200

191:                                              ; preds = %153
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %199 = call i32 @bus_dmamap_sync(i32 %194, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %191, %182
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = load %struct.bio*, %struct.bio** %13, align 8
  %206 = getelementptr inbounds %struct.bio, %struct.bio* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %15, align 4
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @PRINTF(i32 10, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %203, i32 %204, i32 %207, i32 %208, i32 %212)
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %215, align 8
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %218 = call i32 %216(%struct.TYPE_13__* %217)
  br label %219

219:                                              ; preds = %200, %27
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @ips_insert_free_cmd(%struct.TYPE_10__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ipsd_finish(%struct.bio*) #1

declare dso_local i64 @ips_read_request(%struct.bio*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @PRINTF(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
