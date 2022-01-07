; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_vfs.c_g_vfs_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_vfs.c_g_vfs_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i32, %struct.g_consumer*, %struct.buf* }
%struct.g_consumer = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.g_vfs_softc* }
%struct.g_vfs_softc = type { i64, i32, i64 }
%struct.buf = type { i64, i64, i64, i32, i64, %struct.TYPE_6__, %struct.vnode* }
%struct.TYPE_6__ = type { i32 }
%struct.vnode = type { i64, %struct.mount*, %struct.cdev* }
%struct.mount = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.cdev = type { %struct.mount*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@VCHR = common dso_local global i64 0, align 8
@D_DISK = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@LK_KERNPROC = common dso_local global i64 0, align 8
@BIO_WRITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"g_vfs_done():\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@BIO_ERROR = common dso_local global i32 0, align 4
@g_vfs_destroy = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_vfs_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_vfs_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_consumer*, align 8
  %4 = alloca %struct.g_vfs_softc*, align 8
  %5 = alloca %struct.buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mount*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.cdev*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %10 = load %struct.bio*, %struct.bio** %2, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 4
  %12 = load %struct.buf*, %struct.buf** %11, align 8
  store %struct.buf* %12, %struct.buf** %5, align 8
  %13 = load %struct.buf*, %struct.buf** %5, align 8
  %14 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 6
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %8, align 8
  %16 = load %struct.vnode*, %struct.vnode** %8, align 8
  %17 = icmp ne %struct.vnode* %16, null
  br i1 %17, label %18, label %115

18:                                               ; preds = %1
  %19 = load %struct.vnode*, %struct.vnode** %8, align 8
  %20 = call i32 @VI_LOCK(%struct.vnode* %19)
  %21 = load %struct.vnode*, %struct.vnode** %8, align 8
  %22 = getelementptr inbounds %struct.vnode, %struct.vnode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VCHR, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %45, label %26

26:                                               ; preds = %18
  %27 = load %struct.vnode*, %struct.vnode** %8, align 8
  %28 = getelementptr inbounds %struct.vnode, %struct.vnode* %27, i32 0, i32 2
  %29 = load %struct.cdev*, %struct.cdev** %28, align 8
  store %struct.cdev* %29, %struct.cdev** %9, align 8
  %30 = icmp eq %struct.cdev* %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %26
  %32 = load %struct.cdev*, %struct.cdev** %9, align 8
  %33 = getelementptr inbounds %struct.cdev, %struct.cdev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = icmp eq %struct.TYPE_5__* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load %struct.cdev*, %struct.cdev** %9, align 8
  %38 = getelementptr inbounds %struct.cdev, %struct.cdev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @D_DISK, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36, %31, %26, %18
  %46 = load %struct.vnode*, %struct.vnode** %8, align 8
  %47 = getelementptr inbounds %struct.vnode, %struct.vnode* %46, i32 0, i32 1
  %48 = load %struct.mount*, %struct.mount** %47, align 8
  store %struct.mount* %48, %struct.mount** %7, align 8
  br label %53

49:                                               ; preds = %36
  %50 = load %struct.cdev*, %struct.cdev** %9, align 8
  %51 = getelementptr inbounds %struct.cdev, %struct.cdev* %50, i32 0, i32 0
  %52 = load %struct.mount*, %struct.mount** %51, align 8
  store %struct.mount* %52, %struct.mount** %7, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.mount*, %struct.mount** %7, align 8
  %55 = icmp ne %struct.mount* %54, null
  br i1 %55, label %56, label %112

56:                                               ; preds = %53
  %57 = load %struct.buf*, %struct.buf** %5, align 8
  %58 = getelementptr inbounds %struct.buf, %struct.buf* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BIO_READ, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load %struct.buf*, %struct.buf** %5, align 8
  %64 = getelementptr inbounds %struct.buf, %struct.buf* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @LK_HOLDER(i32 %66)
  %68 = load i64, i64* @LK_KERNPROC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.mount*, %struct.mount** %7, align 8
  %72 = getelementptr inbounds %struct.mount, %struct.mount* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %82

76:                                               ; preds = %62
  %77 = load %struct.mount*, %struct.mount** %7, align 8
  %78 = getelementptr inbounds %struct.mount, %struct.mount* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %70
  br label %111

83:                                               ; preds = %56
  %84 = load %struct.buf*, %struct.buf** %5, align 8
  %85 = getelementptr inbounds %struct.buf, %struct.buf* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @BIO_WRITE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %110

89:                                               ; preds = %83
  %90 = load %struct.buf*, %struct.buf** %5, align 8
  %91 = getelementptr inbounds %struct.buf, %struct.buf* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @LK_HOLDER(i32 %93)
  %95 = load i64, i64* @LK_KERNPROC, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %89
  %98 = load %struct.mount*, %struct.mount** %7, align 8
  %99 = getelementptr inbounds %struct.mount, %struct.mount* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %109

103:                                              ; preds = %89
  %104 = load %struct.mount*, %struct.mount** %7, align 8
  %105 = getelementptr inbounds %struct.mount, %struct.mount* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %97
  br label %110

110:                                              ; preds = %109, %83
  br label %111

111:                                              ; preds = %110, %82
  br label %112

112:                                              ; preds = %111, %53
  %113 = load %struct.vnode*, %struct.vnode** %8, align 8
  %114 = call i32 @VI_UNLOCK(%struct.vnode* %113)
  br label %115

115:                                              ; preds = %112, %1
  %116 = load %struct.bio*, %struct.bio** %2, align 8
  %117 = getelementptr inbounds %struct.bio, %struct.bio* %116, i32 0, i32 3
  %118 = load %struct.g_consumer*, %struct.g_consumer** %117, align 8
  store %struct.g_consumer* %118, %struct.g_consumer** %3, align 8
  %119 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %120 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %122, align 8
  store %struct.g_vfs_softc* %123, %struct.g_vfs_softc** %4, align 8
  %124 = load %struct.bio*, %struct.bio** %2, align 8
  %125 = getelementptr inbounds %struct.bio, %struct.bio* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %115
  %129 = load %struct.bio*, %struct.bio** %2, align 8
  %130 = load %struct.bio*, %struct.bio** %2, align 8
  %131 = getelementptr inbounds %struct.bio, %struct.bio* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @g_print_bio(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.bio* %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %132)
  br label %134

134:                                              ; preds = %128, %115
  %135 = load %struct.bio*, %struct.bio** %2, align 8
  %136 = getelementptr inbounds %struct.bio, %struct.bio* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.buf*, %struct.buf** %5, align 8
  %139 = getelementptr inbounds %struct.buf, %struct.buf* %138, i32 0, i32 4
  store i64 %137, i64* %139, align 8
  %140 = load %struct.bio*, %struct.bio** %2, align 8
  %141 = getelementptr inbounds %struct.bio, %struct.bio* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.buf*, %struct.buf** %5, align 8
  %144 = getelementptr inbounds %struct.buf, %struct.buf* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.bio*, %struct.bio** %2, align 8
  %146 = getelementptr inbounds %struct.bio, %struct.bio* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %134
  %150 = load i32, i32* @BIO_ERROR, align 4
  %151 = load %struct.buf*, %struct.buf** %5, align 8
  %152 = getelementptr inbounds %struct.buf, %struct.buf* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %134
  %156 = load %struct.buf*, %struct.buf** %5, align 8
  %157 = getelementptr inbounds %struct.buf, %struct.buf* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.bio*, %struct.bio** %2, align 8
  %160 = getelementptr inbounds %struct.bio, %struct.bio* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %158, %161
  %163 = load %struct.buf*, %struct.buf** %5, align 8
  %164 = getelementptr inbounds %struct.buf, %struct.buf* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  %165 = load %struct.bio*, %struct.bio** %2, align 8
  %166 = call i32 @g_destroy_bio(%struct.bio* %165)
  %167 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %4, align 8
  %168 = getelementptr inbounds %struct.g_vfs_softc, %struct.g_vfs_softc* %167, i32 0, i32 1
  %169 = call i32 @mtx_lock(i32* %168)
  %170 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %4, align 8
  %171 = getelementptr inbounds %struct.g_vfs_softc, %struct.g_vfs_softc* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, -1
  store i64 %173, i64* %171, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %155
  %176 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %4, align 8
  %177 = getelementptr inbounds %struct.g_vfs_softc, %struct.g_vfs_softc* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br label %180

180:                                              ; preds = %175, %155
  %181 = phi i1 [ false, %155 ], [ %179, %175 ]
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %6, align 4
  %183 = load %struct.g_vfs_softc*, %struct.g_vfs_softc** %4, align 8
  %184 = getelementptr inbounds %struct.g_vfs_softc, %struct.g_vfs_softc* %183, i32 0, i32 1
  %185 = call i32 @mtx_unlock(i32* %184)
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %180
  %189 = load i32, i32* @g_vfs_destroy, align 4
  %190 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %191 = load i32, i32* @M_WAITOK, align 4
  %192 = call i32 @g_post_event(i32 %189, %struct.g_consumer* %190, i32 %191, i32* null)
  br label %193

193:                                              ; preds = %188, %180
  %194 = load %struct.buf*, %struct.buf** %5, align 8
  %195 = call i32 @bufdone(%struct.buf* %194)
  ret void
}

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i64 @LK_HOLDER(i32) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @g_print_bio(i8*, %struct.bio*, i8*, i64) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_post_event(i32, %struct.g_consumer*, i32, i32*) #1

declare dso_local i32 @bufdone(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
