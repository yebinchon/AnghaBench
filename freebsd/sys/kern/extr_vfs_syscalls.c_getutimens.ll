; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_getutimens.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_getutimens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i8* }

@UTIMENS_NULL = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UTIME_OMIT = common dso_local global i64 0, align 8
@UTIMENS_EXIT = common dso_local global i32 0, align 4
@UTIME_NOW = common dso_local global i64 0, align 8
@VNOVAL = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timespec*, i32, %struct.timespec*, i32*)* @getutimens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getutimens(%struct.timespec* %0, i32 %1, %struct.timespec* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.timespec, align 8
  %11 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.timespec* %2, %struct.timespec** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = call i32 @vfs_timestamp(%struct.timespec* %10)
  %13 = load i32*, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.timespec*, %struct.timespec** %6, align 8
  %15 = icmp eq %struct.timespec* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %4
  %17 = load %struct.timespec*, %struct.timespec** %8, align 8
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i64 0
  %19 = bitcast %struct.timespec* %18 to i8*
  %20 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = load %struct.timespec*, %struct.timespec** %8, align 8
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i64 1
  %23 = bitcast %struct.timespec* %22 to i8*
  %24 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  %25 = load i32, i32* @UTIMENS_NULL, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  store i32 0, i32* %5, align 4
  br label %173

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @UIO_SYSSPACE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.timespec*, %struct.timespec** %8, align 8
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %34, i64 0
  %36 = load %struct.timespec*, %struct.timespec** %6, align 8
  %37 = getelementptr inbounds %struct.timespec, %struct.timespec* %36, i64 0
  %38 = bitcast %struct.timespec* %35 to i8*
  %39 = bitcast %struct.timespec* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = load %struct.timespec*, %struct.timespec** %8, align 8
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %40, i64 1
  %42 = load %struct.timespec*, %struct.timespec** %6, align 8
  %43 = getelementptr inbounds %struct.timespec, %struct.timespec* %42, i64 1
  %44 = bitcast %struct.timespec* %41 to i8*
  %45 = bitcast %struct.timespec* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false)
  br label %54

46:                                               ; preds = %29
  %47 = load %struct.timespec*, %struct.timespec** %6, align 8
  %48 = load %struct.timespec*, %struct.timespec** %8, align 8
  %49 = call i32 @copyin(%struct.timespec* %47, %struct.timespec* %48, i32 32)
  store i32 %49, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %173

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %33
  %55 = load %struct.timespec*, %struct.timespec** %8, align 8
  %56 = getelementptr inbounds %struct.timespec, %struct.timespec* %55, i64 0
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @UTIME_OMIT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load %struct.timespec*, %struct.timespec** %8, align 8
  %63 = getelementptr inbounds %struct.timespec, %struct.timespec* %62, i64 1
  %64 = getelementptr inbounds %struct.timespec, %struct.timespec* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @UTIME_OMIT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i32, i32* @UTIMENS_EXIT, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %68, %61, %54
  %74 = load %struct.timespec*, %struct.timespec** %8, align 8
  %75 = getelementptr inbounds %struct.timespec, %struct.timespec* %74, i64 0
  %76 = getelementptr inbounds %struct.timespec, %struct.timespec* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @UTIME_NOW, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %73
  %81 = load %struct.timespec*, %struct.timespec** %8, align 8
  %82 = getelementptr inbounds %struct.timespec, %struct.timespec* %81, i64 1
  %83 = getelementptr inbounds %struct.timespec, %struct.timespec* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @UTIME_NOW, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load i32, i32* @UTIMENS_NULL, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %87, %80, %73
  %93 = load %struct.timespec*, %struct.timespec** %8, align 8
  %94 = getelementptr inbounds %struct.timespec, %struct.timespec* %93, i64 0
  %95 = getelementptr inbounds %struct.timespec, %struct.timespec* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @UTIME_OMIT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i8*, i8** @VNOVAL, align 8
  %101 = load %struct.timespec*, %struct.timespec** %8, align 8
  %102 = getelementptr inbounds %struct.timespec, %struct.timespec* %101, i64 0
  %103 = getelementptr inbounds %struct.timespec, %struct.timespec* %102, i32 0, i32 1
  store i8* %100, i8** %103, align 8
  br label %132

104:                                              ; preds = %92
  %105 = load %struct.timespec*, %struct.timespec** %8, align 8
  %106 = getelementptr inbounds %struct.timespec, %struct.timespec* %105, i64 0
  %107 = getelementptr inbounds %struct.timespec, %struct.timespec* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @UTIME_NOW, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.timespec*, %struct.timespec** %8, align 8
  %113 = getelementptr inbounds %struct.timespec, %struct.timespec* %112, i64 0
  %114 = bitcast %struct.timespec* %113 to i8*
  %115 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 16, i1 false)
  br label %131

116:                                              ; preds = %104
  %117 = load %struct.timespec*, %struct.timespec** %8, align 8
  %118 = getelementptr inbounds %struct.timespec, %struct.timespec* %117, i64 0
  %119 = getelementptr inbounds %struct.timespec, %struct.timespec* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = load %struct.timespec*, %struct.timespec** %8, align 8
  %124 = getelementptr inbounds %struct.timespec, %struct.timespec* %123, i64 0
  %125 = getelementptr inbounds %struct.timespec, %struct.timespec* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sge i64 %126, 1000000000
  br i1 %127, label %128, label %130

128:                                              ; preds = %122, %116
  %129 = load i32, i32* @EINVAL, align 4
  store i32 %129, i32* %5, align 4
  br label %173

130:                                              ; preds = %122
  br label %131

131:                                              ; preds = %130, %111
  br label %132

132:                                              ; preds = %131, %99
  %133 = load %struct.timespec*, %struct.timespec** %8, align 8
  %134 = getelementptr inbounds %struct.timespec, %struct.timespec* %133, i64 1
  %135 = getelementptr inbounds %struct.timespec, %struct.timespec* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @UTIME_OMIT, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load i8*, i8** @VNOVAL, align 8
  %141 = load %struct.timespec*, %struct.timespec** %8, align 8
  %142 = getelementptr inbounds %struct.timespec, %struct.timespec* %141, i64 1
  %143 = getelementptr inbounds %struct.timespec, %struct.timespec* %142, i32 0, i32 1
  store i8* %140, i8** %143, align 8
  br label %172

144:                                              ; preds = %132
  %145 = load %struct.timespec*, %struct.timespec** %8, align 8
  %146 = getelementptr inbounds %struct.timespec, %struct.timespec* %145, i64 1
  %147 = getelementptr inbounds %struct.timespec, %struct.timespec* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @UTIME_NOW, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load %struct.timespec*, %struct.timespec** %8, align 8
  %153 = getelementptr inbounds %struct.timespec, %struct.timespec* %152, i64 1
  %154 = bitcast %struct.timespec* %153 to i8*
  %155 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 8 %155, i64 16, i1 false)
  br label %171

156:                                              ; preds = %144
  %157 = load %struct.timespec*, %struct.timespec** %8, align 8
  %158 = getelementptr inbounds %struct.timespec, %struct.timespec* %157, i64 1
  %159 = getelementptr inbounds %struct.timespec, %struct.timespec* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %156
  %163 = load %struct.timespec*, %struct.timespec** %8, align 8
  %164 = getelementptr inbounds %struct.timespec, %struct.timespec* %163, i64 1
  %165 = getelementptr inbounds %struct.timespec, %struct.timespec* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp sge i64 %166, 1000000000
  br i1 %167, label %168, label %170

168:                                              ; preds = %162, %156
  %169 = load i32, i32* @EINVAL, align 4
  store i32 %169, i32* %5, align 4
  br label %173

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170, %151
  br label %172

172:                                              ; preds = %171, %139
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %172, %168, %128, %51, %16
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @vfs_timestamp(%struct.timespec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @copyin(%struct.timespec*, %struct.timespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
