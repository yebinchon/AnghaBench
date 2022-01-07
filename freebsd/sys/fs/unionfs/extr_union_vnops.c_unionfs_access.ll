; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vop_access_args = type { i32, i32, %struct.TYPE_8__*, %struct.thread* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.thread = type { i32 }
%struct.unionfs_mount = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }
%struct.vattr = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"unionfs_access: enter\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"unionfs_access: leave (%d)\0A\00", align 1
@UNIONFS_TRANSPARENT = common dso_local global i64 0, align 8
@VAPPEND = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_access_args*)* @unionfs_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_access(%struct.vop_access_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_access_args*, align 8
  %4 = alloca %struct.unionfs_mount*, align 8
  %5 = alloca %struct.unionfs_node*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.vattr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vop_access_args* %0, %struct.vop_access_args** %3, align 8
  %12 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = call i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_8__* %15)
  %17 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %18 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = call %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(%struct.TYPE_9__* %21)
  store %struct.unionfs_mount* %22, %struct.unionfs_mount** %4, align 8
  %23 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = call %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_8__* %25)
  store %struct.unionfs_node* %26, %struct.unionfs_node** %5, align 8
  %27 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %28 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %27, i32 0, i32 1
  %29 = load %struct.vnode*, %struct.vnode** %28, align 8
  store %struct.vnode* %29, %struct.vnode** %6, align 8
  %30 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %31 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %30, i32 0, i32 0
  %32 = load %struct.vnode*, %struct.vnode** %31, align 8
  store %struct.vnode* %32, %struct.vnode** %7, align 8
  %33 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %34 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %33, i32 0, i32 3
  %35 = load %struct.thread*, %struct.thread** %34, align 8
  store %struct.thread* %35, %struct.thread** %8, align 8
  %36 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %37 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @EACCES, align 4
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @VWRITE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %1
  %45 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %46 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MNT_RDONLY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %44
  %56 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %57 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %56, i32 0, i32 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %63 [
    i32 128, label %61
    i32 130, label %61
    i32 129, label %61
  ]

61:                                               ; preds = %55, %55, %55
  %62 = load i32, i32* @EROFS, align 4
  store i32 %62, i32* %2, align 4
  br label %177

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64, %44, %1
  %66 = load %struct.vnode*, %struct.vnode** %6, align 8
  %67 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %68 = icmp ne %struct.vnode* %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load %struct.vnode*, %struct.vnode** %6, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %73 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.thread*, %struct.thread** %8, align 8
  %76 = call i32 @VOP_ACCESS(%struct.vnode* %70, i32 %71, i32 %74, %struct.thread* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %2, align 4
  br label %177

80:                                               ; preds = %65
  %81 = load %struct.vnode*, %struct.vnode** %7, align 8
  %82 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %83 = icmp ne %struct.vnode* %81, %82
  br i1 %83, label %84, label %173

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @VWRITE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %165

89:                                               ; preds = %84
  %90 = load %struct.unionfs_mount*, %struct.unionfs_mount** %4, align 8
  %91 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @MNT_RDONLY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %89
  %101 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %102 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %101, i32 0, i32 2
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %108 [
    i32 128, label %106
    i32 130, label %106
    i32 129, label %106
  ]

106:                                              ; preds = %100, %100, %100
  %107 = load i32, i32* @EROFS, align 4
  store i32 %107, i32* %2, align 4
  br label %177

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108
  br label %155

110:                                              ; preds = %89
  %111 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %112 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %111, i32 0, i32 2
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 128
  br i1 %116, label %124, label %117

117:                                              ; preds = %110
  %118 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %119 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %118, i32 0, i32 2
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 130
  br i1 %123, label %124, label %154

124:                                              ; preds = %117, %110
  %125 = load %struct.unionfs_mount*, %struct.unionfs_mount** %4, align 8
  %126 = getelementptr inbounds %struct.unionfs_mount, %struct.unionfs_mount* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @UNIONFS_TRANSPARENT, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %153

130:                                              ; preds = %124
  %131 = load %struct.unionfs_mount*, %struct.unionfs_mount** %4, align 8
  %132 = load %struct.vnode*, %struct.vnode** %7, align 8
  %133 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %134 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.thread*, %struct.thread** %8, align 8
  %137 = call i32 @unionfs_create_uppervattr(%struct.unionfs_mount* %131, %struct.vnode* %132, %struct.vattr* %9, i32 %135, %struct.thread* %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %2, align 4
  br label %177

142:                                              ; preds = %130
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %145 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @unionfs_check_corrected_access(i32 %143, %struct.vattr* %9, i32 %146)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %2, align 4
  br label %177

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152, %124
  br label %154

154:                                              ; preds = %153, %117
  br label %155

155:                                              ; preds = %154, %109
  %156 = load i32, i32* @VWRITE, align 4
  %157 = load i32, i32* @VAPPEND, align 4
  %158 = or i32 %156, %157
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %10, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* @VREAD, align 4
  %163 = load i32, i32* %10, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %10, align 4
  br label %165

165:                                              ; preds = %155, %84
  %166 = load %struct.vnode*, %struct.vnode** %7, align 8
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %169 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.thread*, %struct.thread** %8, align 8
  %172 = call i32 @VOP_ACCESS(%struct.vnode* %166, i32 %167, i32 %170, %struct.thread* %171)
  store i32 %172, i32* %11, align 4
  br label %173

173:                                              ; preds = %165, %80
  %174 = load i32, i32* %11, align 4
  %175 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %173, %150, %140, %106, %69, %61
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_8__*) #1

declare dso_local %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(%struct.TYPE_9__*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_8__*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, i32, %struct.thread*) #1

declare dso_local i32 @unionfs_create_uppervattr(%struct.unionfs_mount*, %struct.vnode*, %struct.vattr*, i32, %struct.thread*) #1

declare dso_local i32 @unionfs_check_corrected_access(i32, %struct.vattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
