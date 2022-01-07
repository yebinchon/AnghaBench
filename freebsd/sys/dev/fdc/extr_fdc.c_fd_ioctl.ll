; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_type = type { i32 }
%struct.g_provider = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.fd_data* }
%struct.fd_data = type { i64, i32, %struct.TYPE_4__*, i32, %struct.fd_type*, %struct.fd_type }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.thread = type { i32 }
%struct.fdc_status = type { i32 }
%struct.fdc_readid = type { i32, i32 }
%struct.fd_formb = type { i32 }

@fd_native_types = common dso_local global %struct.fd_type** null, align 8
@debugflags = common dso_local global i32 0, align 4
@PRIV_DRIVER = common dso_local global i32 0, align 4
@FDC_STAT_VALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@FD_FORMAT_VERSION = common dso_local global i32 0, align 4
@BIO_FMT = common dso_local global i32 0, align 4
@FD_NEWDISK = common dso_local global i32 0, align 4
@BIO_RDID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unknown ioctl %lx\0A\00", align 1
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_provider*, i32, i8*, i32, %struct.thread*)* @fd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_ioctl(%struct.g_provider* %0, i32 %1, i8* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.fd_data*, align 8
  %13 = alloca %struct.fdc_status*, align 8
  %14 = alloca %struct.fdc_readid*, align 8
  %15 = alloca i32, align 4
  store %struct.g_provider* %0, %struct.g_provider** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %16 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %17 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.fd_data*, %struct.fd_data** %19, align 8
  store %struct.fd_data* %20, %struct.fd_data** %12, align 8
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %177 [
    i32 133, label %22
    i32 130, label %30
    i32 135, label %66
    i32 131, label %72
    i32 138, label %78
    i32 134, label %91
    i32 136, label %114
    i32 137, label %121
    i32 132, label %157
    i32 128, label %176
    i32 129, label %176
  ]

22:                                               ; preds = %5
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.fd_type*
  %25 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %26 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %25, i32 0, i32 4
  %27 = load %struct.fd_type*, %struct.fd_type** %26, align 8
  %28 = bitcast %struct.fd_type* %24 to i8*
  %29 = bitcast %struct.fd_type* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  store i32 0, i32* %6, align 4
  br label %188

30:                                               ; preds = %5
  %31 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %32 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %31, i32 0, i32 5
  %33 = load i8*, i8** %9, align 8
  %34 = bitcast i8* %33 to %struct.fd_type*
  %35 = bitcast %struct.fd_type* %32 to i8*
  %36 = bitcast %struct.fd_type* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %38 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %44 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %45 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %44, i32 0, i32 5
  %46 = call i32 @fdsettype(%struct.fd_data* %43, %struct.fd_type* %45)
  br label %56

47:                                               ; preds = %30
  %48 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %49 = load %struct.fd_type**, %struct.fd_type*** @fd_native_types, align 8
  %50 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %51 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.fd_type*, %struct.fd_type** %49, i64 %52
  %54 = load %struct.fd_type*, %struct.fd_type** %53, align 8
  %55 = call i32 @fdsettype(%struct.fd_data* %48, %struct.fd_type* %54)
  br label %56

56:                                               ; preds = %47, %42
  %57 = load i32, i32* @debugflags, align 4
  %58 = and i32 %57, 64
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %62 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %61, i32 0, i32 4
  %63 = load %struct.fd_type*, %struct.fd_type** %62, align 8
  %64 = call i32 @fdprinttype(%struct.fd_type* %63)
  br label %65

65:                                               ; preds = %60, %56
  store i32 0, i32* %6, align 4
  br label %188

66:                                               ; preds = %5
  %67 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %68 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = bitcast i8* %70 to i32*
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %6, align 4
  br label %188

72:                                               ; preds = %5
  %73 = load i8*, i8** %9, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %77 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %6, align 4
  br label %188

78:                                               ; preds = %5
  %79 = load %struct.thread*, %struct.thread** %11, align 8
  %80 = load i32, i32* @PRIV_DRIVER, align 4
  %81 = call i32 @priv_check(%struct.thread* %79, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %6, align 4
  br label %188

86:                                               ; preds = %78
  %87 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %88 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  store i32 0, i32* %90, align 4
  store i32 0, i32* %6, align 4
  br label %188

91:                                               ; preds = %5
  %92 = load i8*, i8** %9, align 8
  %93 = bitcast i8* %92 to %struct.fdc_status*
  store %struct.fdc_status* %93, %struct.fdc_status** %13, align 8
  %94 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %95 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @FDC_STAT_VALID, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %91
  %103 = load i32, i32* @EINVAL, align 4
  store i32 %103, i32* %6, align 4
  br label %188

104:                                              ; preds = %91
  %105 = load %struct.fdc_status*, %struct.fdc_status** %13, align 8
  %106 = getelementptr inbounds %struct.fdc_status, %struct.fdc_status* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %109 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @memcpy(i32 %107, i32 %112, i32 28)
  store i32 0, i32* %6, align 4
  br label %188

114:                                              ; preds = %5
  %115 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %116 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load i8*, i8** %9, align 8
  %120 = bitcast i8* %119 to i32*
  store i32 %118, i32* %120, align 4
  store i32 0, i32* %6, align 4
  br label %188

121:                                              ; preds = %5
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @FWRITE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* @EPERM, align 4
  store i32 %127, i32* %6, align 4
  br label %188

128:                                              ; preds = %121
  %129 = load i8*, i8** %9, align 8
  %130 = bitcast i8* %129 to %struct.fd_formb*
  %131 = getelementptr inbounds %struct.fd_formb, %struct.fd_formb* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @FD_FORMAT_VERSION, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* @EINVAL, align 4
  store i32 %136, i32* %6, align 4
  br label %188

137:                                              ; preds = %128
  %138 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %139 = load i32, i32* @BIO_FMT, align 4
  %140 = load i8*, i8** %9, align 8
  %141 = call i32 @fdmisccmd(%struct.fd_data* %138, i32 %139, i8* %140)
  store i32 %141, i32* %15, align 4
  %142 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %143 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %142, i32 0, i32 2
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = call i32 @mtx_lock(i32* %145)
  %147 = load i32, i32* @FD_NEWDISK, align 4
  %148 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %149 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %153 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %152, i32 0, i32 2
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = call i32 @mtx_unlock(i32* %155)
  br label %186

157:                                              ; preds = %5
  %158 = load i8*, i8** %9, align 8
  %159 = bitcast i8* %158 to %struct.fdc_readid*
  store %struct.fdc_readid* %159, %struct.fdc_readid** %14, align 8
  %160 = load %struct.fdc_readid*, %struct.fdc_readid** %14, align 8
  %161 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %162, 85
  br i1 %163, label %169, label %164

164:                                              ; preds = %157
  %165 = load %struct.fdc_readid*, %struct.fdc_readid** %14, align 8
  %166 = getelementptr inbounds %struct.fdc_readid, %struct.fdc_readid* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp sgt i32 %167, 1
  br i1 %168, label %169, label %171

169:                                              ; preds = %164, %157
  %170 = load i32, i32* @EINVAL, align 4
  store i32 %170, i32* %6, align 4
  br label %188

171:                                              ; preds = %164
  %172 = load %struct.fd_data*, %struct.fd_data** %12, align 8
  %173 = load i32, i32* @BIO_RDID, align 4
  %174 = load i8*, i8** %9, align 8
  %175 = call i32 @fdmisccmd(%struct.fd_data* %172, i32 %173, i8* %174)
  store i32 %175, i32* %15, align 4
  br label %186

176:                                              ; preds = %5, %5
  store i32 0, i32* %15, align 4
  br label %186

177:                                              ; preds = %5
  %178 = load i32, i32* @debugflags, align 4
  %179 = and i32 %178, 128
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %181, %177
  %185 = load i32, i32* @ENOIOCTL, align 4
  store i32 %185, i32* %15, align 4
  br label %186

186:                                              ; preds = %184, %176, %171, %137
  %187 = load i32, i32* %15, align 4
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %186, %169, %135, %126, %114, %104, %102, %86, %84, %72, %66, %65, %22
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fdsettype(%struct.fd_data*, %struct.fd_type*) #2

declare dso_local i32 @fdprinttype(%struct.fd_type*) #2

declare dso_local i32 @priv_check(%struct.thread*, i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @fdmisccmd(%struct.fd_data*, i32, i8*) #2

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i32 @mtx_unlock(i32*) #2

declare dso_local i32 @printf(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
