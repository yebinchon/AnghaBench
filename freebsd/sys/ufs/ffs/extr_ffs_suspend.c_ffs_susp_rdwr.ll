; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_suspend.c_ffs_susp_rdwr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_suspend.c_ffs_susp_rdwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64, i64, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8* }
%struct.vnode = type { i32 }
%struct.mount = type { i32 }
%struct.ufsmount = type { %struct.fs*, %struct.vnode* }
%struct.fs = type { i64 }
%struct.buf = type { i32, i32 }

@ffs_susp_lock = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i64 0, align 8
@UIO_WRITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"neither UIO_READ or UIO_WRITE\00", align 1
@UIO_USERSPACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"uio->uio_segflg != UIO_USERSPACE\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@B_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @ffs_susp_rdwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_susp_rdwr(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.mount*, align 8
  %12 = alloca %struct.ufsmount*, align 8
  %13 = alloca %struct.buf*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.fs*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = call i32 @sx_slock(i32* @ffs_susp_lock)
  %19 = bitcast %struct.mount** %11 to i8**
  %20 = call i32 @devfs_get_cdevpriv(i8** %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = call i32 @sx_sunlock(i32* @ffs_susp_lock)
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %4, align 4
  br label %234

26:                                               ; preds = %3
  %27 = load %struct.mount*, %struct.mount** %11, align 8
  %28 = call %struct.ufsmount* @VFSTOUFS(%struct.mount* %27)
  store %struct.ufsmount* %28, %struct.ufsmount** %12, align 8
  %29 = load %struct.ufsmount*, %struct.ufsmount** %12, align 8
  %30 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %29, i32 0, i32 1
  %31 = load %struct.vnode*, %struct.vnode** %30, align 8
  store %struct.vnode* %31, %struct.vnode** %10, align 8
  %32 = load %struct.ufsmount*, %struct.ufsmount** %12, align 8
  %33 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %32, i32 0, i32 0
  %34 = load %struct.fs*, %struct.fs** %33, align 8
  store %struct.fs* %34, %struct.fs** %17, align 8
  %35 = load %struct.mount*, %struct.mount** %11, align 8
  %36 = call i64 @ffs_susp_suspended(%struct.mount* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = call i32 @sx_sunlock(i32* @ffs_susp_lock)
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %4, align 4
  br label %234

41:                                               ; preds = %26
  %42 = load %struct.uio*, %struct.uio** %6, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @UIO_READ, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.uio*, %struct.uio** %6, align 8
  %49 = getelementptr inbounds %struct.uio, %struct.uio* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @UIO_WRITE, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %47, %41
  %54 = phi i1 [ true, %41 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @KASSERT(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.uio*, %struct.uio** %6, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @UIO_USERSPACE, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @KASSERT(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.uio*, %struct.uio** %6, align 8
  %65 = getelementptr inbounds %struct.uio, %struct.uio* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %16, align 8
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %220, %53
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.uio*, %struct.uio** %6, align 8
  %70 = getelementptr inbounds %struct.uio, %struct.uio* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %223

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %181, %73
  %75 = load %struct.uio*, %struct.uio** %6, align 8
  %76 = getelementptr inbounds %struct.uio, %struct.uio* %75, i32 0, i32 5
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %219

84:                                               ; preds = %74
  %85 = load %struct.uio*, %struct.uio** %6, align 8
  %86 = getelementptr inbounds %struct.uio, %struct.uio* %85, i32 0, i32 5
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %14, align 8
  %93 = load %struct.uio*, %struct.uio** %6, align 8
  %94 = getelementptr inbounds %struct.uio, %struct.uio* %93, i32 0, i32 5
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %15, align 8
  %102 = load %struct.fs*, %struct.fs** %17, align 8
  %103 = getelementptr inbounds %struct.fs, %struct.fs* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ugt i64 %101, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %84
  %107 = load %struct.fs*, %struct.fs** %17, align 8
  %108 = getelementptr inbounds %struct.fs, %struct.fs* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %15, align 8
  br label %110

110:                                              ; preds = %106, %84
  %111 = load %struct.fs*, %struct.fs** %17, align 8
  %112 = load %struct.uio*, %struct.uio** %6, align 8
  %113 = getelementptr inbounds %struct.uio, %struct.uio* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @fragoff(%struct.fs* %111, i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %110
  %118 = load %struct.fs*, %struct.fs** %17, align 8
  %119 = load i64, i64* %15, align 8
  %120 = call i64 @fragoff(%struct.fs* %118, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117, %110
  %123 = load i32, i32* @EINVAL, align 4
  store i32 %123, i32* %8, align 4
  br label %224

124:                                              ; preds = %117
  %125 = load %struct.vnode*, %struct.vnode** %10, align 8
  %126 = load %struct.uio*, %struct.uio** %6, align 8
  %127 = getelementptr inbounds %struct.uio, %struct.uio* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @btodb(i64 %128)
  %130 = load i64, i64* %15, align 8
  %131 = load i32, i32* @NOCRED, align 4
  %132 = call i32 @bread(%struct.vnode* %125, i32 %129, i64 %130, i32 %131, %struct.buf** %13)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  br label %224

136:                                              ; preds = %124
  %137 = load %struct.uio*, %struct.uio** %6, align 8
  %138 = getelementptr inbounds %struct.uio, %struct.uio* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @UIO_WRITE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %168

142:                                              ; preds = %136
  %143 = load i8*, i8** %14, align 8
  %144 = load %struct.buf*, %struct.buf** %13, align 8
  %145 = getelementptr inbounds %struct.buf, %struct.buf* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %15, align 8
  %148 = call i32 @copyin(i8* %143, i32 %146, i64 %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %142
  %152 = load i32, i32* @B_INVAL, align 4
  %153 = load i32, i32* @B_NOCACHE, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.buf*, %struct.buf** %13, align 8
  %156 = getelementptr inbounds %struct.buf, %struct.buf* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load %struct.buf*, %struct.buf** %13, align 8
  %160 = call i32 @brelse(%struct.buf* %159)
  br label %224

161:                                              ; preds = %142
  %162 = load %struct.buf*, %struct.buf** %13, align 8
  %163 = call i32 @bwrite(%struct.buf* %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %224

167:                                              ; preds = %161
  br label %181

168:                                              ; preds = %136
  %169 = load %struct.buf*, %struct.buf** %13, align 8
  %170 = getelementptr inbounds %struct.buf, %struct.buf* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i8*, i8** %14, align 8
  %173 = load i64, i64* %15, align 8
  %174 = call i32 @copyout(i32 %171, i8* %172, i64 %173)
  store i32 %174, i32* %8, align 4
  %175 = load %struct.buf*, %struct.buf** %13, align 8
  %176 = call i32 @brelse(%struct.buf* %175)
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %224

180:                                              ; preds = %168
  br label %181

181:                                              ; preds = %180, %167
  %182 = load %struct.uio*, %struct.uio** %6, align 8
  %183 = getelementptr inbounds %struct.uio, %struct.uio* %182, i32 0, i32 5
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = load i64, i64* %15, align 8
  %191 = getelementptr inbounds i8, i8* %189, i64 %190
  %192 = load %struct.uio*, %struct.uio** %6, align 8
  %193 = getelementptr inbounds %struct.uio, %struct.uio* %192, i32 0, i32 5
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  store i8* %191, i8** %198, align 8
  %199 = load i64, i64* %15, align 8
  %200 = load %struct.uio*, %struct.uio** %6, align 8
  %201 = getelementptr inbounds %struct.uio, %struct.uio* %200, i32 0, i32 5
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = sub i64 %207, %199
  store i64 %208, i64* %206, align 8
  %209 = load i64, i64* %15, align 8
  %210 = load %struct.uio*, %struct.uio** %6, align 8
  %211 = getelementptr inbounds %struct.uio, %struct.uio* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = sub i64 %212, %209
  store i64 %213, i64* %211, align 8
  %214 = load i64, i64* %15, align 8
  %215 = load %struct.uio*, %struct.uio** %6, align 8
  %216 = getelementptr inbounds %struct.uio, %struct.uio* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = add i64 %217, %214
  store i64 %218, i64* %216, align 8
  br label %74

219:                                              ; preds = %74
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %9, align 4
  br label %67

223:                                              ; preds = %67
  br label %224

224:                                              ; preds = %223, %179, %166, %151, %135, %122
  %225 = call i32 @sx_sunlock(i32* @ffs_susp_lock)
  %226 = load %struct.uio*, %struct.uio** %6, align 8
  %227 = getelementptr inbounds %struct.uio, %struct.uio* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* %16, align 8
  %230 = icmp slt i64 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  store i32 0, i32* %4, align 4
  br label %234

232:                                              ; preds = %224
  %233 = load i32, i32* %8, align 4
  store i32 %233, i32* %4, align 4
  br label %234

234:                                              ; preds = %232, %231, %38, %23
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local %struct.ufsmount* @VFSTOUFS(%struct.mount*) #1

declare dso_local i64 @ffs_susp_suspended(%struct.mount*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @fragoff(%struct.fs*, i64) #1

declare dso_local i32 @bread(%struct.vnode*, i32, i64, i32, %struct.buf**) #1

declare dso_local i32 @btodb(i64) #1

declare dso_local i32 @copyin(i8*, i32, i64) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @copyout(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
