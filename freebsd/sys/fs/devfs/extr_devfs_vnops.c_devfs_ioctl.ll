; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_ioctl_args = type { i32, i32, %struct.fiodgname_arg*, %struct.thread*, %struct.vnode* }
%struct.fiodgname_arg = type { i32 }
%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.cdevsw = type { i32, i32 (%struct.cdev*, i32, %struct.fiodgname_arg*, i32, %struct.thread*)* }
%struct.cdev = type opaque
%struct.cdev.0 = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"devfs: un-referenced struct cdev *(%s)\00", align 1
@D_TYPEMASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@TIOCSCTTY = common dso_local global i32 0, align 4
@proctree_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_ioctl_args*)* @devfs_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_ioctl(%struct.vop_ioctl_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_ioctl_args*, align 8
  %4 = alloca %struct.fiodgname_arg*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.cdevsw*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.cdev.0*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.vop_ioctl_args* %0, %struct.vop_ioctl_args** %3, align 8
  %15 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %15, i32 0, i32 4
  %17 = load %struct.vnode*, %struct.vnode** %16, align 8
  store %struct.vnode* %17, %struct.vnode** %6, align 8
  %18 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %14, align 4
  %21 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %22 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %21, i32 0, i32 3
  %23 = load %struct.thread*, %struct.thread** %22, align 8
  store %struct.thread* %23, %struct.thread** %8, align 8
  %24 = load %struct.vnode*, %struct.vnode** %6, align 8
  %25 = call %struct.cdevsw* @devvn_refthread(%struct.vnode* %24, %struct.cdev.0** %9, i32* %11)
  store %struct.cdevsw* %25, %struct.cdevsw** %7, align 8
  %26 = load %struct.cdevsw*, %struct.cdevsw** %7, align 8
  %27 = icmp eq %struct.cdevsw* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %164

30:                                               ; preds = %1
  %31 = load %struct.cdev.0*, %struct.cdev.0** %9, align 8
  %32 = getelementptr inbounds %struct.cdev.0, %struct.cdev.0* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load %struct.cdev.0*, %struct.cdev.0** %9, align 8
  %37 = call i8* @devtoname(%struct.cdev.0* %36)
  %38 = call i32 @KASSERT(i32 %35, i8* %37)
  %39 = load i32, i32* %14, align 4
  switch i32 %39, label %74 [
    i32 128, label %40
    i32 130, label %50
  ]

40:                                               ; preds = %30
  %41 = load %struct.cdevsw*, %struct.cdevsw** %7, align 8
  %42 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @D_TYPEMASK, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %47 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %46, i32 0, i32 2
  %48 = load %struct.fiodgname_arg*, %struct.fiodgname_arg** %47, align 8
  %49 = bitcast %struct.fiodgname_arg* %48 to i32*
  store i32 %45, i32* %49, align 4
  store i32 0, i32* %10, align 4
  br label %89

50:                                               ; preds = %30
  %51 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %52 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %51, i32 0, i32 2
  %53 = load %struct.fiodgname_arg*, %struct.fiodgname_arg** %52, align 8
  store %struct.fiodgname_arg* %53, %struct.fiodgname_arg** %4, align 8
  %54 = load %struct.cdev.0*, %struct.cdev.0** %9, align 8
  %55 = call i8* @devtoname(%struct.cdev.0* %54)
  store i8* %55, i8** %13, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.fiodgname_arg*, %struct.fiodgname_arg** %4, align 8
  %61 = getelementptr inbounds %struct.fiodgname_arg, %struct.fiodgname_arg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %10, align 4
  br label %73

66:                                               ; preds = %50
  %67 = load i8*, i8** %13, align 8
  %68 = load %struct.fiodgname_arg*, %struct.fiodgname_arg** %4, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @fiodgname_buf_get_ptr(%struct.fiodgname_arg* %68, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @copyout(i8* %67, i32 %70, i32 %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %66, %64
  br label %89

74:                                               ; preds = %30
  %75 = load %struct.cdevsw*, %struct.cdevsw** %7, align 8
  %76 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %75, i32 0, i32 1
  %77 = load i32 (%struct.cdev*, i32, %struct.fiodgname_arg*, i32, %struct.thread*)*, i32 (%struct.cdev*, i32, %struct.fiodgname_arg*, i32, %struct.thread*)** %76, align 8
  %78 = load %struct.cdev.0*, %struct.cdev.0** %9, align 8
  %79 = bitcast %struct.cdev.0* %78 to %struct.cdev*
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %82 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %81, i32 0, i32 2
  %83 = load %struct.fiodgname_arg*, %struct.fiodgname_arg** %82, align 8
  %84 = load %struct.vop_ioctl_args*, %struct.vop_ioctl_args** %3, align 8
  %85 = getelementptr inbounds %struct.vop_ioctl_args, %struct.vop_ioctl_args* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.thread*, %struct.thread** %8, align 8
  %88 = call i32 %77(%struct.cdev* %79, i32 %80, %struct.fiodgname_arg* %83, i32 %86, %struct.thread* %87)
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %74, %73, %40
  %90 = load %struct.cdev.0*, %struct.cdev.0** %9, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @dev_relthread(%struct.cdev.0* %90, i32 %91)
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @ENOIOCTL, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @ENOTTY, align 4
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %96, %89
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %162

101:                                              ; preds = %98
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @TIOCSCTTY, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %162

105:                                              ; preds = %101
  %106 = call i32 @sx_slock(i32* @proctree_lock)
  %107 = load %struct.thread*, %struct.thread** %8, align 8
  %108 = getelementptr inbounds %struct.thread, %struct.thread* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load %struct.vnode*, %struct.vnode** %112, align 8
  %114 = load %struct.vnode*, %struct.vnode** %6, align 8
  %115 = icmp eq %struct.vnode* %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %105
  %117 = call i32 @sx_sunlock(i32* @proctree_lock)
  store i32 0, i32* %2, align 4
  br label %164

118:                                              ; preds = %105
  %119 = load %struct.thread*, %struct.thread** %8, align 8
  %120 = getelementptr inbounds %struct.thread, %struct.thread* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load %struct.vnode*, %struct.vnode** %124, align 8
  store %struct.vnode* %125, %struct.vnode** %5, align 8
  %126 = load %struct.vnode*, %struct.vnode** %6, align 8
  %127 = call i32 @VREF(%struct.vnode* %126)
  %128 = load %struct.thread*, %struct.thread** %8, align 8
  %129 = getelementptr inbounds %struct.thread, %struct.thread* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = call i32 @SESS_LOCK(%struct.TYPE_5__* %132)
  %134 = load %struct.vnode*, %struct.vnode** %6, align 8
  %135 = load %struct.thread*, %struct.thread** %8, align 8
  %136 = getelementptr inbounds %struct.thread, %struct.thread* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  store %struct.vnode* %134, %struct.vnode** %140, align 8
  %141 = load %struct.cdev.0*, %struct.cdev.0** %9, align 8
  %142 = call i32 @cdev2priv(%struct.cdev.0* %141)
  %143 = load %struct.thread*, %struct.thread** %8, align 8
  %144 = getelementptr inbounds %struct.thread, %struct.thread* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  store i32 %142, i32* %148, align 8
  %149 = load %struct.thread*, %struct.thread** %8, align 8
  %150 = getelementptr inbounds %struct.thread, %struct.thread* %149, i32 0, i32 0
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = call i32 @SESS_UNLOCK(%struct.TYPE_5__* %153)
  %155 = call i32 @sx_sunlock(i32* @proctree_lock)
  %156 = load %struct.vnode*, %struct.vnode** %5, align 8
  %157 = icmp ne %struct.vnode* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %118
  %159 = load %struct.vnode*, %struct.vnode** %5, align 8
  %160 = call i32 @vrele(%struct.vnode* %159)
  br label %161

161:                                              ; preds = %158, %118
  br label %162

162:                                              ; preds = %161, %101, %98
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %162, %116, %28
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.cdevsw* @devvn_refthread(%struct.vnode*, %struct.cdev.0**, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i8* @devtoname(%struct.cdev.0*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @copyout(i8*, i32, i32) #1

declare dso_local i32 @fiodgname_buf_get_ptr(%struct.fiodgname_arg*, i32) #1

declare dso_local i32 @dev_relthread(%struct.cdev.0*, i32) #1

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local i32 @VREF(%struct.vnode*) #1

declare dso_local i32 @SESS_LOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @cdev2priv(%struct.cdev.0*) #1

declare dso_local i32 @SESS_UNLOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
