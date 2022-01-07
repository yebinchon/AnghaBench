; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_bmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vop_bmap_args = type { i32, i32*, i32*, i32*, %struct.bufobj**, %struct.vnode* }
%struct.bufobj = type { i32 }
%struct.vnode = type { %struct.bufobj, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mount = type { i32 }
%struct.fuse_dispatcher = type { %struct.fuse_bmap_out*, %struct.fuse_bmap_in* }
%struct.fuse_bmap_out = type { i32 }
%struct.fuse_bmap_in = type { i32, i32 }
%struct.fuse_data = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@FUSE_BMAP = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_bmap_args*)* @fuse_vnop_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_bmap(%struct.vop_bmap_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_bmap_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.bufobj**, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.mount*, align 8
  %8 = alloca %struct.fuse_dispatcher, align 8
  %9 = alloca %struct.fuse_bmap_in*, align 8
  %10 = alloca %struct.fuse_bmap_out*, align 8
  %11 = alloca %struct.fuse_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vop_bmap_args* %0, %struct.vop_bmap_args** %3, align 8
  %20 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %21 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %20, i32 0, i32 5
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  store %struct.vnode* %22, %struct.vnode** %4, align 8
  %23 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %23, i32 0, i32 4
  %25 = load %struct.bufobj**, %struct.bufobj*** %24, align 8
  store %struct.bufobj** %25, %struct.bufobj*** %5, align 8
  %26 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %26, %struct.thread** %6, align 8
  %27 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %28 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %14, align 4
  %30 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %31 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %15, align 8
  %33 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %34 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %16, align 8
  %36 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %37 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %17, align 8
  store i32 0, i32* %18, align 4
  %39 = load %struct.vnode*, %struct.vnode** %4, align 8
  %40 = call i64 @fuse_isdeadfs(%struct.vnode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %162

44:                                               ; preds = %1
  %45 = load %struct.vnode*, %struct.vnode** %4, align 8
  %46 = call %struct.mount* @vnode_mount(%struct.vnode* %45)
  store %struct.mount* %46, %struct.mount** %7, align 8
  %47 = load %struct.mount*, %struct.mount** %7, align 8
  %48 = call %struct.fuse_data* @fuse_get_mpdata(%struct.mount* %47)
  store %struct.fuse_data* %48, %struct.fuse_data** %11, align 8
  %49 = load %struct.vnode*, %struct.vnode** %4, align 8
  %50 = call i32 @fuse_iosize(%struct.vnode* %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.vnode*, %struct.vnode** %4, align 8
  %52 = getelementptr inbounds %struct.vnode, %struct.vnode* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sdiv i32 %55, %56
  %58 = sub nsw i32 %57, 1
  %59 = load %struct.fuse_data*, %struct.fuse_data** %11, align 8
  %60 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @MIN(i32 %58, i32 %61)
  store i32 %62, i32* %19, align 4
  %63 = load %struct.bufobj**, %struct.bufobj*** %5, align 8
  %64 = icmp ne %struct.bufobj** %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %44
  %66 = load %struct.vnode*, %struct.vnode** %4, align 8
  %67 = getelementptr inbounds %struct.vnode, %struct.vnode* %66, i32 0, i32 0
  %68 = load %struct.bufobj**, %struct.bufobj*** %5, align 8
  store %struct.bufobj* %67, %struct.bufobj** %68, align 8
  br label %69

69:                                               ; preds = %65, %44
  %70 = load i32*, i32** %17, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %19, align 4
  %75 = call i32 @MIN(i32 %73, i32 %74)
  %76 = load i32*, i32** %17, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i32*, i32** %16, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %103

80:                                               ; preds = %77
  %81 = load %struct.vnode*, %struct.vnode** %4, align 8
  %82 = load %struct.thread*, %struct.thread** %6, align 8
  %83 = getelementptr inbounds %struct.thread, %struct.thread* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.thread*, %struct.thread** %6, align 8
  %86 = call i32 @fuse_vnode_size(%struct.vnode* %81, i32* %13, i32 %84, %struct.thread* %85)
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %80
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %12, align 4
  %92 = sdiv i32 %90, %91
  %93 = load i32, i32* %14, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sub nsw i32 %94, 1
  %96 = call i32 @MAX(i32 0, i32 %95)
  %97 = load i32, i32* %19, align 4
  %98 = call i32 @MIN(i32 %96, i32 %97)
  %99 = load i32*, i32** %16, align 8
  store i32 %98, i32* %99, align 4
  br label %102

100:                                              ; preds = %80
  %101 = load i32*, i32** %16, align 8
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %100, %89
  br label %103

103:                                              ; preds = %102, %77
  %104 = load %struct.mount*, %struct.mount** %7, align 8
  %105 = load i32, i32* @FUSE_BMAP, align 4
  %106 = call i64 @fsess_isimpl(%struct.mount* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %151

108:                                              ; preds = %103
  %109 = call i32 @fdisp_init(%struct.fuse_dispatcher* %8, i32 8)
  %110 = load i32, i32* @FUSE_BMAP, align 4
  %111 = load %struct.vnode*, %struct.vnode** %4, align 8
  %112 = load %struct.thread*, %struct.thread** %6, align 8
  %113 = load %struct.thread*, %struct.thread** %6, align 8
  %114 = getelementptr inbounds %struct.thread, %struct.thread* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @fdisp_make_vp(%struct.fuse_dispatcher* %8, i32 %110, %struct.vnode* %111, %struct.thread* %112, i32 %115)
  %117 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %8, i32 0, i32 1
  %118 = load %struct.fuse_bmap_in*, %struct.fuse_bmap_in** %117, align 8
  store %struct.fuse_bmap_in* %118, %struct.fuse_bmap_in** %9, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.fuse_bmap_in*, %struct.fuse_bmap_in** %9, align 8
  %121 = getelementptr inbounds %struct.fuse_bmap_in, %struct.fuse_bmap_in* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load %struct.fuse_bmap_in*, %struct.fuse_bmap_in** %9, align 8
  %124 = getelementptr inbounds %struct.fuse_bmap_in, %struct.fuse_bmap_in* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %8)
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* @ENOSYS, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %108
  %130 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %8)
  %131 = load %struct.mount*, %struct.mount** %7, align 8
  %132 = load i32, i32* @FUSE_BMAP, align 4
  %133 = call i32 @fsess_set_notimpl(%struct.mount* %131, i32 %132)
  store i32 0, i32* %18, align 4
  br label %150

134:                                              ; preds = %108
  %135 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %8, i32 0, i32 0
  %136 = load %struct.fuse_bmap_out*, %struct.fuse_bmap_out** %135, align 8
  store %struct.fuse_bmap_out* %136, %struct.fuse_bmap_out** %10, align 8
  %137 = load i32, i32* %18, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load i32*, i32** %15, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load %struct.fuse_bmap_out*, %struct.fuse_bmap_out** %10, align 8
  %144 = getelementptr inbounds %struct.fuse_bmap_out, %struct.fuse_bmap_out* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %15, align 8
  store i32 %145, i32* %146, align 4
  br label %147

147:                                              ; preds = %142, %139, %134
  %148 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %8)
  %149 = load i32, i32* %18, align 4
  store i32 %149, i32* %2, align 4
  br label %162

150:                                              ; preds = %129
  br label %151

151:                                              ; preds = %150, %103
  %152 = load i32*, i32** %15, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @btodb(i32 %156)
  %158 = mul nsw i32 %155, %157
  %159 = load i32*, i32** %15, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %154, %151
  %161 = load i32, i32* %18, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %160, %147, %42
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local %struct.mount* @vnode_mount(%struct.vnode*) #1

declare dso_local %struct.fuse_data* @fuse_get_mpdata(%struct.mount*) #1

declare dso_local i32 @fuse_iosize(%struct.vnode*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @fuse_vnode_size(%struct.vnode*, i32*, i32, %struct.thread*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @fsess_isimpl(%struct.mount*, i32) #1

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make_vp(%struct.fuse_dispatcher*, i32, %struct.vnode*, %struct.thread*, i32) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fsess_set_notimpl(%struct.mount*, i32) #1

declare dso_local i32 @btodb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
