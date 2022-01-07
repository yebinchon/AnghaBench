; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_close_args = type { i32, %struct.thread*, %struct.vnode* }
%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, %struct.vnode* }
%struct.vnode = type { i32, i32*, %struct.cdev* }
%struct.cdev = type { i64 }
%struct.cdevsw = type { i32, i32 (%struct.cdev*, i32, i32, %struct.thread*)* }

@proctree_lock = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@FREVOKE = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@D_TRACKCLOSE = common dso_local global i32 0, align 4
@FLASTCLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"devfs_close() on un-referenced struct cdev *(%s)\00", align 1
@S_IFCHR = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_close_args*)* @devfs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_close(%struct.vop_close_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_close_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.cdev*, align 8
  %9 = alloca %struct.cdevsw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vop_close_args* %0, %struct.vop_close_args** %3, align 8
  %14 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %15 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %14, i32 0, i32 2
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %16, %struct.vnode** %4, align 8
  %17 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %18 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %17, i32 0, i32 1
  %19 = load %struct.thread*, %struct.thread** %18, align 8
  store %struct.thread* %19, %struct.thread** %6, align 8
  %20 = load %struct.vnode*, %struct.vnode** %4, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 2
  %22 = load %struct.cdev*, %struct.cdev** %21, align 8
  store %struct.cdev* %22, %struct.cdev** %8, align 8
  %23 = load %struct.vnode*, %struct.vnode** %4, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %193

28:                                               ; preds = %1
  %29 = load %struct.thread*, %struct.thread** %6, align 8
  %30 = icmp ne %struct.thread* %29, null
  br i1 %30, label %31, label %101

31:                                               ; preds = %28
  %32 = load %struct.thread*, %struct.thread** %6, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load %struct.proc*, %struct.proc** %33, align 8
  store %struct.proc* %34, %struct.proc** %7, align 8
  %35 = load %struct.proc*, %struct.proc** %7, align 8
  %36 = call i32 @PROC_LOCK(%struct.proc* %35)
  %37 = load %struct.vnode*, %struct.vnode** %4, align 8
  %38 = load %struct.proc*, %struct.proc** %7, align 8
  %39 = getelementptr inbounds %struct.proc, %struct.proc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load %struct.vnode*, %struct.vnode** %41, align 8
  %43 = icmp eq %struct.vnode* %37, %42
  br i1 %43, label %44, label %97

44:                                               ; preds = %31
  %45 = load %struct.proc*, %struct.proc** %7, align 8
  %46 = call i32 @PROC_UNLOCK(%struct.proc* %45)
  store %struct.vnode* null, %struct.vnode** %5, align 8
  %47 = call i32 @sx_xlock(i32* @proctree_lock)
  %48 = load %struct.vnode*, %struct.vnode** %4, align 8
  %49 = load %struct.proc*, %struct.proc** %7, align 8
  %50 = getelementptr inbounds %struct.proc, %struct.proc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load %struct.vnode*, %struct.vnode** %52, align 8
  %54 = icmp eq %struct.vnode* %48, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %44
  %56 = load %struct.proc*, %struct.proc** %7, align 8
  %57 = getelementptr inbounds %struct.proc, %struct.proc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = call i32 @SESS_LOCK(%struct.TYPE_3__* %58)
  %60 = load %struct.vnode*, %struct.vnode** %4, align 8
  %61 = call i32 @VI_LOCK(%struct.vnode* %60)
  %62 = load %struct.cdev*, %struct.cdev** %8, align 8
  %63 = call i32 @count_dev(%struct.cdev* %62)
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %82

65:                                               ; preds = %55
  %66 = load %struct.vnode*, %struct.vnode** %4, align 8
  %67 = getelementptr inbounds %struct.vnode, %struct.vnode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @VI_DOOMED, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.proc*, %struct.proc** %7, align 8
  %74 = getelementptr inbounds %struct.proc, %struct.proc* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store %struct.vnode* null, %struct.vnode** %76, align 8
  %77 = load %struct.proc*, %struct.proc** %7, align 8
  %78 = getelementptr inbounds %struct.proc, %struct.proc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  %81 = load %struct.vnode*, %struct.vnode** %4, align 8
  store %struct.vnode* %81, %struct.vnode** %5, align 8
  br label %82

82:                                               ; preds = %72, %65, %55
  %83 = load %struct.vnode*, %struct.vnode** %4, align 8
  %84 = call i32 @VI_UNLOCK(%struct.vnode* %83)
  %85 = load %struct.proc*, %struct.proc** %7, align 8
  %86 = getelementptr inbounds %struct.proc, %struct.proc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = call i32 @SESS_UNLOCK(%struct.TYPE_3__* %87)
  br label %89

89:                                               ; preds = %82, %44
  %90 = call i32 @sx_xunlock(i32* @proctree_lock)
  %91 = load %struct.vnode*, %struct.vnode** %5, align 8
  %92 = icmp ne %struct.vnode* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.vnode*, %struct.vnode** %5, align 8
  %95 = call i32 @vrele(%struct.vnode* %94)
  br label %96

96:                                               ; preds = %93, %89
  br label %100

97:                                               ; preds = %31
  %98 = load %struct.proc*, %struct.proc** %7, align 8
  %99 = call i32 @PROC_UNLOCK(%struct.proc* %98)
  br label %100

100:                                              ; preds = %97, %96
  br label %101

101:                                              ; preds = %100, %28
  %102 = load %struct.cdev*, %struct.cdev** %8, align 8
  %103 = call %struct.cdevsw* @dev_refthread(%struct.cdev* %102, i32* %12)
  store %struct.cdevsw* %103, %struct.cdevsw** %9, align 8
  %104 = load %struct.cdevsw*, %struct.cdevsw** %9, align 8
  %105 = icmp eq %struct.cdevsw* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @ENXIO, align 4
  store i32 %107, i32* %2, align 4
  br label %193

108:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  %109 = load %struct.vnode*, %struct.vnode** %4, align 8
  %110 = call i32 @VI_LOCK(%struct.vnode* %109)
  %111 = load %struct.vnode*, %struct.vnode** %4, align 8
  %112 = getelementptr inbounds %struct.vnode, %struct.vnode* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @VI_DOOMED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %108
  %118 = load i32, i32* @FREVOKE, align 4
  %119 = load i32, i32* @FNONBLOCK, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %10, align 4
  br label %143

123:                                              ; preds = %108
  %124 = load %struct.cdevsw*, %struct.cdevsw** %9, align 8
  %125 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @D_TRACKCLOSE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %142

131:                                              ; preds = %123
  %132 = load %struct.cdev*, %struct.cdev** %8, align 8
  %133 = call i32 @count_dev(%struct.cdev* %132)
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load %struct.vnode*, %struct.vnode** %4, align 8
  %137 = call i32 @VI_UNLOCK(%struct.vnode* %136)
  %138 = load %struct.cdev*, %struct.cdev** %8, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @dev_relthread(%struct.cdev* %138, i32 %139)
  store i32 0, i32* %2, align 4
  br label %193

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141, %130
  br label %143

143:                                              ; preds = %142, %117
  %144 = load %struct.cdev*, %struct.cdev** %8, align 8
  %145 = call i32 @count_dev(%struct.cdev* %144)
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32, i32* @FLASTCLOSE, align 4
  %149 = load i32, i32* %10, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %147, %143
  %152 = load %struct.vnode*, %struct.vnode** %4, align 8
  %153 = call i32 @vholdl(%struct.vnode* %152)
  %154 = load %struct.vnode*, %struct.vnode** %4, align 8
  %155 = call i32 @VI_UNLOCK(%struct.vnode* %154)
  %156 = load %struct.vnode*, %struct.vnode** %4, align 8
  %157 = call i32 @VOP_ISLOCKED(%struct.vnode* %156)
  store i32 %157, i32* %13, align 4
  %158 = load %struct.vnode*, %struct.vnode** %4, align 8
  %159 = call i32 @VOP_UNLOCK(%struct.vnode* %158, i32 0)
  %160 = load %struct.cdev*, %struct.cdev** %8, align 8
  %161 = getelementptr inbounds %struct.cdev, %struct.cdev* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp sgt i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = load %struct.cdev*, %struct.cdev** %8, align 8
  %166 = call i32 @devtoname(%struct.cdev* %165)
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i8*
  %169 = call i32 @KASSERT(i32 %164, i8* %168)
  %170 = load %struct.cdevsw*, %struct.cdevsw** %9, align 8
  %171 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %170, i32 0, i32 1
  %172 = load i32 (%struct.cdev*, i32, i32, %struct.thread*)*, i32 (%struct.cdev*, i32, i32, %struct.thread*)** %171, align 8
  %173 = load %struct.cdev*, %struct.cdev** %8, align 8
  %174 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %175 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @S_IFCHR, align 4
  %180 = load %struct.thread*, %struct.thread** %6, align 8
  %181 = call i32 %172(%struct.cdev* %173, i32 %178, i32 %179, %struct.thread* %180)
  store i32 %181, i32* %11, align 4
  %182 = load %struct.cdev*, %struct.cdev** %8, align 8
  %183 = load i32, i32* %12, align 4
  %184 = call i32 @dev_relthread(%struct.cdev* %182, i32 %183)
  %185 = load %struct.vnode*, %struct.vnode** %4, align 8
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* @LK_RETRY, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @vn_lock(%struct.vnode* %185, i32 %188)
  %190 = load %struct.vnode*, %struct.vnode** %4, align 8
  %191 = call i32 @vdrop(%struct.vnode* %190)
  %192 = load i32, i32* %11, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %151, %135, %106, %27
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @SESS_LOCK(%struct.TYPE_3__*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @count_dev(%struct.cdev*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @SESS_UNLOCK(%struct.TYPE_3__*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local %struct.cdevsw* @dev_refthread(%struct.cdev*, i32*) #1

declare dso_local i32 @dev_relthread(%struct.cdev*, i32) #1

declare dso_local i32 @vholdl(%struct.vnode*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @devtoname(%struct.cdev*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
