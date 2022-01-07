; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_open_args = type { i32, %struct.file*, %struct.vnode*, %struct.thread* }
%struct.file = type { i32, i32*, %struct.vnode*, %struct.cdev* }
%struct.cdev = type { i64 }
%struct.vnode = type { i64, %struct.cdev* }
%struct.thread = type { %struct.file* }
%struct.cdevsw = type { i32 (%struct.cdev*, i32, %struct.thread*, %struct.file*)*, i32 (%struct.cdev*, i32, i32, %struct.thread*)* }

@VBLK = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@DFLTPHYS = common dso_local global i64 0, align 8
@S_IFCHR = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@badfileops = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i32 0, align 4
@devfs_ops_f = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_open_args*)* @devfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_open(%struct.vop_open_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_open_args*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cdevsw*, align 8
  %12 = alloca %struct.file*, align 8
  store %struct.vop_open_args* %0, %struct.vop_open_args** %3, align 8
  %13 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %13, i32 0, i32 3
  %15 = load %struct.thread*, %struct.thread** %14, align 8
  store %struct.thread* %15, %struct.thread** %4, align 8
  %16 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %16, i32 0, i32 2
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  store %struct.vnode* %18, %struct.vnode** %5, align 8
  %19 = load %struct.vnode*, %struct.vnode** %5, align 8
  %20 = getelementptr inbounds %struct.vnode, %struct.vnode* %19, i32 0, i32 1
  %21 = load %struct.cdev*, %struct.cdev** %20, align 8
  store %struct.cdev* %21, %struct.cdev** %6, align 8
  %22 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %22, i32 0, i32 1
  %24 = load %struct.file*, %struct.file** %23, align 8
  store %struct.file* %24, %struct.file** %7, align 8
  %25 = load %struct.vnode*, %struct.vnode** %5, align 8
  %26 = getelementptr inbounds %struct.vnode, %struct.vnode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VBLK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %160

32:                                               ; preds = %1
  %33 = load %struct.cdev*, %struct.cdev** %6, align 8
  %34 = icmp eq %struct.cdev* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %160

37:                                               ; preds = %32
  %38 = load %struct.cdev*, %struct.cdev** %6, align 8
  %39 = getelementptr inbounds %struct.cdev, %struct.cdev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i64, i64* @DFLTPHYS, align 8
  %44 = load %struct.cdev*, %struct.cdev** %6, align 8
  %45 = getelementptr inbounds %struct.cdev, %struct.cdev* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.cdev*, %struct.cdev** %6, align 8
  %48 = call %struct.cdevsw* @dev_refthread(%struct.cdev* %47, i32* %9)
  store %struct.cdevsw* %48, %struct.cdevsw** %11, align 8
  %49 = load %struct.cdevsw*, %struct.cdevsw** %11, align 8
  %50 = icmp eq %struct.cdevsw* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %2, align 4
  br label %160

53:                                               ; preds = %46
  %54 = load %struct.file*, %struct.file** %7, align 8
  %55 = icmp eq %struct.file* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.cdevsw*, %struct.cdevsw** %11, align 8
  %58 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %57, i32 0, i32 0
  %59 = load i32 (%struct.cdev*, i32, %struct.thread*, %struct.file*)*, i32 (%struct.cdev*, i32, %struct.thread*, %struct.file*)** %58, align 8
  %60 = icmp ne i32 (%struct.cdev*, i32, %struct.thread*, %struct.file*)* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.cdev*, %struct.cdev** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dev_relthread(%struct.cdev* %62, i32 %63)
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %2, align 4
  br label %160

66:                                               ; preds = %56, %53
  %67 = load %struct.vnode*, %struct.vnode** %5, align 8
  %68 = call i32 @VOP_ISLOCKED(%struct.vnode* %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.vnode*, %struct.vnode** %5, align 8
  %70 = call i32 @VOP_UNLOCK(%struct.vnode* %69, i32 0)
  %71 = load %struct.thread*, %struct.thread** %4, align 8
  %72 = getelementptr inbounds %struct.thread, %struct.thread* %71, i32 0, i32 0
  %73 = load %struct.file*, %struct.file** %72, align 8
  store %struct.file* %73, %struct.file** %12, align 8
  %74 = load %struct.file*, %struct.file** %7, align 8
  %75 = load %struct.thread*, %struct.thread** %4, align 8
  %76 = getelementptr inbounds %struct.thread, %struct.thread* %75, i32 0, i32 0
  store %struct.file* %74, %struct.file** %76, align 8
  %77 = load %struct.file*, %struct.file** %7, align 8
  %78 = icmp ne %struct.file* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %66
  %80 = load %struct.cdev*, %struct.cdev** %6, align 8
  %81 = load %struct.file*, %struct.file** %7, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 3
  store %struct.cdev* %80, %struct.cdev** %82, align 8
  %83 = load %struct.vnode*, %struct.vnode** %5, align 8
  %84 = load %struct.file*, %struct.file** %7, align 8
  %85 = getelementptr inbounds %struct.file, %struct.file* %84, i32 0, i32 2
  store %struct.vnode* %83, %struct.vnode** %85, align 8
  br label %86

86:                                               ; preds = %79, %66
  %87 = load %struct.cdevsw*, %struct.cdevsw** %11, align 8
  %88 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %87, i32 0, i32 0
  %89 = load i32 (%struct.cdev*, i32, %struct.thread*, %struct.file*)*, i32 (%struct.cdev*, i32, %struct.thread*, %struct.file*)** %88, align 8
  %90 = icmp ne i32 (%struct.cdev*, i32, %struct.thread*, %struct.file*)* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.cdevsw*, %struct.cdevsw** %11, align 8
  %93 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %92, i32 0, i32 0
  %94 = load i32 (%struct.cdev*, i32, %struct.thread*, %struct.file*)*, i32 (%struct.cdev*, i32, %struct.thread*, %struct.file*)** %93, align 8
  %95 = load %struct.cdev*, %struct.cdev** %6, align 8
  %96 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %97 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.thread*, %struct.thread** %4, align 8
  %100 = load %struct.file*, %struct.file** %7, align 8
  %101 = call i32 %94(%struct.cdev* %95, i32 %98, %struct.thread* %99, %struct.file* %100)
  store i32 %101, i32* %8, align 4
  br label %113

102:                                              ; preds = %86
  %103 = load %struct.cdevsw*, %struct.cdevsw** %11, align 8
  %104 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %103, i32 0, i32 1
  %105 = load i32 (%struct.cdev*, i32, i32, %struct.thread*)*, i32 (%struct.cdev*, i32, i32, %struct.thread*)** %104, align 8
  %106 = load %struct.cdev*, %struct.cdev** %6, align 8
  %107 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %108 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @S_IFCHR, align 4
  %111 = load %struct.thread*, %struct.thread** %4, align 8
  %112 = call i32 %105(%struct.cdev* %106, i32 %109, i32 %110, %struct.thread* %111)
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %102, %91
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i32 (...) @devfs_clear_cdevpriv()
  br label %118

118:                                              ; preds = %116, %113
  %119 = load %struct.file*, %struct.file** %12, align 8
  %120 = load %struct.thread*, %struct.thread** %4, align 8
  %121 = getelementptr inbounds %struct.thread, %struct.thread* %120, i32 0, i32 0
  store %struct.file* %119, %struct.file** %121, align 8
  %122 = load %struct.vnode*, %struct.vnode** %5, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @LK_RETRY, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @vn_lock(%struct.vnode* %122, i32 %125)
  %127 = load %struct.cdev*, %struct.cdev** %6, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @dev_relthread(%struct.cdev* %127, i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %118
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @ERESTART, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* @EINTR, align 4
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %136, %132
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %2, align 4
  br label %160

140:                                              ; preds = %118
  %141 = load %struct.file*, %struct.file** %7, align 8
  %142 = icmp eq %struct.file* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %2, align 4
  br label %160

145:                                              ; preds = %140
  %146 = load %struct.file*, %struct.file** %7, align 8
  %147 = getelementptr inbounds %struct.file, %struct.file* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, @badfileops
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load %struct.file*, %struct.file** %7, align 8
  %152 = load %struct.file*, %struct.file** %7, align 8
  %153 = getelementptr inbounds %struct.file, %struct.file* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @DTYPE_VNODE, align 4
  %156 = load %struct.cdev*, %struct.cdev** %6, align 8
  %157 = call i32 @finit(%struct.file* %151, i32 %154, i32 %155, %struct.cdev* %156, i32* @devfs_ops_f)
  br label %158

158:                                              ; preds = %150, %145
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %158, %143, %138, %61, %51, %35, %30
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.cdevsw* @dev_refthread(%struct.cdev*, i32*) #1

declare dso_local i32 @dev_relthread(%struct.cdev*, i32) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @devfs_clear_cdevpriv(...) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.cdev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
