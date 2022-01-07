; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_sc = type { i64, i32, i32*, i8*, i32, i32 }

@SA_XLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to obtain locality\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to switch to ready state\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to write cmd to device\0A\00", align 1
@TPM_STS_VALID = common dso_local global i32 0, align 4
@TPM_INT_STS_VALID = common dso_local global i8* null, align 8
@TPM_STS = common dso_local global i32 0, align 4
@TPM_TIMEOUT_C = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Timeout while waiting for valid bit\0A\00", align 1
@TPM_STS_DATA_EXPECTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [72 x i8] c"Device expects more data even though we already sent everything we had\0A\00", align 1
@TPM_STS_CMD_START = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@TPM_STS_DATA_AVAIL = common dso_local global i32 0, align 4
@TPM_INT_STS_DATA_AVAIL = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [49 x i8] c"Timeout while waiting for device to process cmd\0A\00", align 1
@TPM_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to read response header\0A\00", align 1
@TPM_BUFSIZE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"Incorrect response size: %zu\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Failed to read response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_sc*, i64)* @tpmtis_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpmtis_transmit(%struct.tpm_sc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_sc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tpm_sc* %0, %struct.tpm_sc** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %11 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %10, i32 0, i32 5
  %12 = load i32, i32* @SA_XLOCKED, align 4
  %13 = call i32 @sx_assert(i32* %11, i32 %12)
  %14 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %15 = call i32 @tpmtis_request_locality(%struct.tpm_sc* %14, i32 0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %19 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  store i32 %22, i32* %3, align 4
  br label %195

23:                                               ; preds = %2
  %24 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %25 = call i32 @tpmtis_go_ready(%struct.tpm_sc* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %29 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  store i32 %32, i32* %3, align 4
  br label %195

33:                                               ; preds = %23
  %34 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %37 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @tpmtis_write_bytes(%struct.tpm_sc* %34, i64 %35, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %43 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32, i8*, ...) @device_printf(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  store i32 %46, i32* %3, align 4
  br label %195

47:                                               ; preds = %33
  %48 = load i32, i32* @TPM_STS_VALID, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i8*, i8** @TPM_INT_STS_VALID, align 8
  %50 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %51 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %53 = load i32, i32* @TPM_STS, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @TPM_TIMEOUT_C, align 4
  %57 = call i32 @tpm_wait_for_u32(%struct.tpm_sc* %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %47
  %60 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %61 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @EIO, align 4
  store i32 %64, i32* %3, align 4
  br label %195

65:                                               ; preds = %47
  %66 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %67 = load i32, i32* @TPM_STS, align 4
  %68 = call i32 @RD4(%struct.tpm_sc* %66, i32 %67)
  %69 = load i32, i32* @TPM_STS_DATA_EXPECTED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %74 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i32, i32* @EIO, align 4
  store i32 %77, i32* %3, align 4
  br label %195

78:                                               ; preds = %65
  %79 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %80 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 6
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @be32toh(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @tpm20_get_timeout(i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %89 = load i32, i32* @TPM_STS, align 4
  %90 = load i32, i32* @TPM_STS_CMD_START, align 4
  %91 = call i32 @WR4(%struct.tpm_sc* %88, i32 %89, i32 %90)
  %92 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %93 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @TPM_STS, align 4
  %96 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %97 = call i32 @bus_barrier(i32 %94, i32 %95, i32 4, i32 %96)
  %98 = load i32, i32* @TPM_STS_DATA_AVAIL, align 4
  %99 = load i32, i32* @TPM_STS_VALID, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %7, align 4
  %101 = load i8*, i8** @TPM_INT_STS_DATA_AVAIL, align 8
  %102 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %103 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %105 = load i32, i32* @TPM_STS, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @tpm_wait_for_u32(%struct.tpm_sc* %104, i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %135, label %111

111:                                              ; preds = %78
  %112 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %113 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, ...) @device_printf(i32 %114, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %116 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %117 = call i32 @tpmtis_go_ready(%struct.tpm_sc* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %111
  %120 = load i32, i32* @EIO, align 4
  store i32 %120, i32* %3, align 4
  br label %195

121:                                              ; preds = %111
  %122 = load i8*, i8** @TPM_INT_STS_DATA_AVAIL, align 8
  %123 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %124 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  %125 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %126 = load i32, i32* @TPM_STS, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @TPM_TIMEOUT_C, align 4
  %130 = call i32 @tpm_wait_for_u32(%struct.tpm_sc* %125, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %121
  %133 = load i32, i32* @EIO, align 4
  store i32 %133, i32* %3, align 4
  br label %195

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134, %78
  %136 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %137 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %138 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %139 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @tpmtis_read_bytes(%struct.tpm_sc* %136, i64 %137, i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %135
  %144 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %145 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, i8*, ...) @device_printf(i32 %146, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %148 = load i32, i32* @EIO, align 4
  store i32 %148, i32* %3, align 4
  br label %195

149:                                              ; preds = %135
  %150 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %151 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @be32toh(i32 %154)
  %156 = ptrtoint i8* %155 to i64
  store i64 %156, i64* %6, align 8
  %157 = load i64, i64* %6, align 8
  %158 = load i64, i64* @TPM_BUFSIZE, align 8
  %159 = icmp ugt i64 %157, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %149
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %163 = icmp ult i64 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %160, %149
  %165 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %166 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i64, i64* %6, align 8
  %169 = call i32 (i32, i8*, ...) @device_printf(i32 %167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %168)
  %170 = load i32, i32* @EIO, align 4
  store i32 %170, i32* %3, align 4
  br label %195

171:                                              ; preds = %160
  %172 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %175 = sub i64 %173, %174
  %176 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %177 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = call i32 @tpmtis_read_bytes(%struct.tpm_sc* %172, i64 %175, i32* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %171
  %184 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %185 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = call i32 (i32, i8*, ...) @device_printf(i32 %186, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %188 = load i32, i32* @EIO, align 4
  store i32 %188, i32* %3, align 4
  br label %195

189:                                              ; preds = %171
  %190 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %191 = call i32 @tpmtis_relinquish_locality(%struct.tpm_sc* %190)
  %192 = load i64, i64* %6, align 8
  %193 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %194 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %189, %183, %164, %143, %132, %119, %72, %59, %41, %27, %17
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @tpmtis_request_locality(%struct.tpm_sc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @tpmtis_go_ready(%struct.tpm_sc*) #1

declare dso_local i32 @tpmtis_write_bytes(%struct.tpm_sc*, i64, i32*) #1

declare dso_local i32 @tpm_wait_for_u32(%struct.tpm_sc*, i32, i32, i32, i32) #1

declare dso_local i32 @RD4(%struct.tpm_sc*, i32) #1

declare dso_local i8* @be32toh(i32) #1

declare dso_local i32 @tpm20_get_timeout(i32) #1

declare dso_local i32 @WR4(%struct.tpm_sc*, i32, i32) #1

declare dso_local i32 @bus_barrier(i32, i32, i32, i32) #1

declare dso_local i32 @tpmtis_read_bytes(%struct.tpm_sc*, i64, i32*) #1

declare dso_local i32 @tpmtis_relinquish_locality(%struct.tpm_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
