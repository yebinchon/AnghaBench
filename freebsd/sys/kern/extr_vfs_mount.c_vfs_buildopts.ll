; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_vfs_buildopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_vfs_buildopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.vfsoptlist = type { i32 }
%struct.vfsopt = type { i8*, i8*, i64, i32, i64 }

@M_MOUNT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@VFS_MOUNTARG_SIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_buildopts(%struct.uio* %0, %struct.vfsoptlist** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uio*, align 8
  %5 = alloca %struct.vfsoptlist**, align 8
  %6 = alloca %struct.vfsoptlist*, align 8
  %7 = alloca %struct.vfsopt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.uio* %0, %struct.uio** %4, align 8
  store %struct.vfsoptlist** %1, %struct.vfsoptlist*** %5, align 8
  %14 = load i32, i32* @M_MOUNT, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = call i8* @malloc(i64 4, i32 %14, i32 %15)
  %17 = bitcast i8* %16 to %struct.vfsoptlist*
  store %struct.vfsoptlist* %17, %struct.vfsoptlist** %6, align 8
  %18 = load %struct.vfsoptlist*, %struct.vfsoptlist** %6, align 8
  %19 = call i32 @TAILQ_INIT(%struct.vfsoptlist* %18)
  store i64 0, i64* %8, align 8
  %20 = load %struct.uio*, %struct.uio** %4, align 8
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %195, %2
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %198

27:                                               ; preds = %23
  %28 = load %struct.uio*, %struct.uio** %4, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load %struct.uio*, %struct.uio** %4, align 8
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = add i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add i64 40, %45
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %46, %47
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @VFS_MOUNTARG_SIZE_MAX, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %27
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @VFS_MOUNTARG_SIZE_MAX, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @VFS_MOUNTARG_SIZE_MAX, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %54, %27
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %13, align 4
  br label %203

64:                                               ; preds = %58
  %65 = load i32, i32* @M_MOUNT, align 4
  %66 = load i32, i32* @M_WAITOK, align 4
  %67 = call i8* @malloc(i64 40, i32 %65, i32 %66)
  %68 = bitcast i8* %67 to %struct.vfsopt*
  store %struct.vfsopt* %68, %struct.vfsopt** %7, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* @M_MOUNT, align 4
  %71 = load i32, i32* @M_WAITOK, align 4
  %72 = call i8* @malloc(i64 %69, i32 %70, i32 %71)
  %73 = load %struct.vfsopt*, %struct.vfsopt** %7, align 8
  %74 = getelementptr inbounds %struct.vfsopt, %struct.vfsopt* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.vfsopt*, %struct.vfsopt** %7, align 8
  %76 = getelementptr inbounds %struct.vfsopt, %struct.vfsopt* %75, i32 0, i32 1
  store i8* null, i8** %76, align 8
  %77 = load %struct.vfsopt*, %struct.vfsopt** %7, align 8
  %78 = getelementptr inbounds %struct.vfsopt, %struct.vfsopt* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* %11, align 4
  %80 = udiv i32 %79, 2
  %81 = load %struct.vfsopt*, %struct.vfsopt** %7, align 8
  %82 = getelementptr inbounds %struct.vfsopt, %struct.vfsopt* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.vfsopt*, %struct.vfsopt** %7, align 8
  %84 = getelementptr inbounds %struct.vfsopt, %struct.vfsopt* %83, i32 0, i32 4
  store i64 0, i64* %84, align 8
  %85 = load %struct.vfsoptlist*, %struct.vfsoptlist** %6, align 8
  %86 = load %struct.vfsopt*, %struct.vfsopt** %7, align 8
  %87 = load i32, i32* @link, align 4
  %88 = call i32 @TAILQ_INSERT_TAIL(%struct.vfsoptlist* %85, %struct.vfsopt* %86, i32 %87)
  %89 = load %struct.uio*, %struct.uio** %4, align 8
  %90 = getelementptr inbounds %struct.uio, %struct.uio* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @UIO_SYSSPACE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %64
  %95 = load %struct.uio*, %struct.uio** %4, align 8
  %96 = getelementptr inbounds %struct.uio, %struct.uio* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.vfsopt*, %struct.vfsopt** %7, align 8
  %104 = getelementptr inbounds %struct.vfsopt, %struct.vfsopt* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @bcopy(i32 %102, i8* %105, i64 %106)
  br label %126

108:                                              ; preds = %64
  %109 = load %struct.uio*, %struct.uio** %4, align 8
  %110 = getelementptr inbounds %struct.uio, %struct.uio* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.vfsopt*, %struct.vfsopt** %7, align 8
  %118 = getelementptr inbounds %struct.vfsopt, %struct.vfsopt* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @copyin(i32 %116, i8* %119, i64 %120)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %108
  br label %203

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125, %94
  %127 = load i64, i64* %9, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %126
  %130 = load %struct.vfsopt*, %struct.vfsopt** %7, align 8
  %131 = getelementptr inbounds %struct.vfsopt, %struct.vfsopt* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = sub i64 %133, 1
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %129, %126
  %140 = load i32, i32* @EINVAL, align 4
  store i32 %140, i32* %13, align 4
  br label %203

141:                                              ; preds = %129
  %142 = load i64, i64* %10, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %194

144:                                              ; preds = %141
  %145 = load i64, i64* %10, align 8
  %146 = load %struct.vfsopt*, %struct.vfsopt** %7, align 8
  %147 = getelementptr inbounds %struct.vfsopt, %struct.vfsopt* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  %148 = load i64, i64* %10, align 8
  %149 = load i32, i32* @M_MOUNT, align 4
  %150 = load i32, i32* @M_WAITOK, align 4
  %151 = call i8* @malloc(i64 %148, i32 %149, i32 %150)
  %152 = load %struct.vfsopt*, %struct.vfsopt** %7, align 8
  %153 = getelementptr inbounds %struct.vfsopt, %struct.vfsopt* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = load %struct.uio*, %struct.uio** %4, align 8
  %155 = getelementptr inbounds %struct.uio, %struct.uio* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @UIO_SYSSPACE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %144
  %160 = load %struct.uio*, %struct.uio** %4, align 8
  %161 = getelementptr inbounds %struct.uio, %struct.uio* %160, i32 0, i32 2
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = add i32 %163, 1
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.vfsopt*, %struct.vfsopt** %7, align 8
  %170 = getelementptr inbounds %struct.vfsopt, %struct.vfsopt* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = load i64, i64* %10, align 8
  %173 = call i32 @bcopy(i32 %168, i8* %171, i64 %172)
  br label %193

174:                                              ; preds = %144
  %175 = load %struct.uio*, %struct.uio** %4, align 8
  %176 = getelementptr inbounds %struct.uio, %struct.uio* %175, i32 0, i32 2
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = add i32 %178, 1
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.vfsopt*, %struct.vfsopt** %7, align 8
  %185 = getelementptr inbounds %struct.vfsopt, %struct.vfsopt* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = load i64, i64* %10, align 8
  %188 = call i32 @copyin(i32 %183, i8* %186, i64 %187)
  store i32 %188, i32* %13, align 4
  %189 = load i32, i32* %13, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %174
  br label %203

192:                                              ; preds = %174
  br label %193

193:                                              ; preds = %192, %159
  br label %194

194:                                              ; preds = %193, %141
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %11, align 4
  %197 = add i32 %196, 2
  store i32 %197, i32* %11, align 4
  br label %23

198:                                              ; preds = %23
  %199 = load %struct.vfsoptlist*, %struct.vfsoptlist** %6, align 8
  %200 = call i32 @vfs_sanitizeopts(%struct.vfsoptlist* %199)
  %201 = load %struct.vfsoptlist*, %struct.vfsoptlist** %6, align 8
  %202 = load %struct.vfsoptlist**, %struct.vfsoptlist*** %5, align 8
  store %struct.vfsoptlist* %201, %struct.vfsoptlist** %202, align 8
  store i32 0, i32* %3, align 4
  br label %207

203:                                              ; preds = %191, %139, %124, %62
  %204 = load %struct.vfsoptlist*, %struct.vfsoptlist** %6, align 8
  %205 = call i32 @vfs_freeopts(%struct.vfsoptlist* %204)
  %206 = load i32, i32* %13, align 4
  store i32 %206, i32* %3, align 4
  br label %207

207:                                              ; preds = %203, %198
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(%struct.vfsoptlist*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.vfsoptlist*, %struct.vfsopt*, i32) #1

declare dso_local i32 @bcopy(i32, i8*, i64) #1

declare dso_local i32 @copyin(i32, i8*, i64) #1

declare dso_local i32 @vfs_sanitizeopts(%struct.vfsoptlist*) #1

declare dso_local i32 @vfs_freeopts(%struct.vfsoptlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
