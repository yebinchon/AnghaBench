; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_vptocnp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_vptocnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_vptocnp_args = type { i8*, i32*, %struct.vnode**, %struct.vnode* }
%struct.vnode = type { i64, %struct.mount*, %struct.pfs_vdata* }
%struct.mount = type { i32 }
%struct.pfs_vdata = type { i32, %struct.pfs_node* }
%struct.pfs_node = type { i64, i8*, %struct.pfs_node* }

@PFS_NAMELEN = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@pfstype_root = common dso_local global i64 0, align 8
@pfstype_procdir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_vptocnp_args*)* @pfs_vptocnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfs_vptocnp(%struct.vop_vptocnp_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_vptocnp_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode**, align 8
  %6 = alloca %struct.pfs_vdata*, align 8
  %7 = alloca %struct.pfs_node*, align 8
  %8 = alloca %struct.pfs_node*, align 8
  %9 = alloca %struct.mount*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vop_vptocnp_args* %0, %struct.vop_vptocnp_args** %3, align 8
  %20 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %21 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %20, i32 0, i32 3
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  store %struct.vnode* %22, %struct.vnode** %4, align 8
  %23 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %23, i32 0, i32 2
  %25 = load %struct.vnode**, %struct.vnode*** %24, align 8
  store %struct.vnode** %25, %struct.vnode*** %5, align 8
  %26 = load %struct.vnode*, %struct.vnode** %4, align 8
  %27 = getelementptr inbounds %struct.vnode, %struct.vnode* %26, i32 0, i32 2
  %28 = load %struct.pfs_vdata*, %struct.pfs_vdata** %27, align 8
  store %struct.pfs_vdata* %28, %struct.pfs_vdata** %6, align 8
  %29 = load %struct.pfs_vdata*, %struct.pfs_vdata** %6, align 8
  %30 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %29, i32 0, i32 1
  %31 = load %struct.pfs_node*, %struct.pfs_node** %30, align 8
  store %struct.pfs_node* %31, %struct.pfs_node** %7, align 8
  %32 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %33 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %10, align 8
  %35 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %36 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %11, align 8
  %38 = load i32, i32* @PFS_NAMELEN, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %12, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %13, align 8
  %42 = load %struct.pfs_vdata*, %struct.pfs_vdata** %6, align 8
  %43 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %14, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %47 = load %struct.pfs_node*, %struct.pfs_node** %7, align 8
  %48 = call i32 @pfs_lock(%struct.pfs_node* %47)
  %49 = load %struct.vnode*, %struct.vnode** %4, align 8
  %50 = getelementptr inbounds %struct.vnode, %struct.vnode* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VDIR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %1
  %55 = load %struct.pfs_node*, %struct.pfs_node** %7, align 8
  %56 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @pfstype_root, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.vnode*, %struct.vnode** %4, align 8
  %62 = load %struct.vnode**, %struct.vnode*** %5, align 8
  store %struct.vnode* %61, %struct.vnode** %62, align 8
  %63 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %64 = load %struct.vnode*, %struct.vnode** %63, align 8
  %65 = call i32 @vhold(%struct.vnode* %64)
  %66 = load %struct.pfs_node*, %struct.pfs_node** %7, align 8
  %67 = call i32 @pfs_unlock(%struct.pfs_node* %66)
  %68 = call i32 @PFS_RETURN(i32 0)
  br label %122

69:                                               ; preds = %54, %1
  %70 = load %struct.vnode*, %struct.vnode** %4, align 8
  %71 = getelementptr inbounds %struct.vnode, %struct.vnode* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VDIR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %69
  %76 = load %struct.pfs_node*, %struct.pfs_node** %7, align 8
  %77 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @pfstype_procdir, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %75
  %82 = trunc i64 %39 to i32
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @snprintf(i8* %41, i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* @ENOMEM, align 4
  store i32 %91, i32* %17, align 4
  br label %173

92:                                               ; preds = %81
  %93 = load i8*, i8** %10, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @bcopy(i8* %41, i8* %96, i32 %97)
  br label %121

99:                                               ; preds = %75, %69
  %100 = load %struct.pfs_node*, %struct.pfs_node** %7, align 8
  %101 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strlen(i8* %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* @ENOMEM, align 4
  store i32 %110, i32* %17, align 4
  br label %173

111:                                              ; preds = %99
  %112 = load %struct.pfs_node*, %struct.pfs_node** %7, align 8
  %113 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @bcopy(i8* %114, i8* %118, i32 %119)
  br label %121

121:                                              ; preds = %111, %92
  br label %122

122:                                              ; preds = %121, %60
  %123 = load %struct.pfs_node*, %struct.pfs_node** %7, align 8
  %124 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %123, i32 0, i32 2
  %125 = load %struct.pfs_node*, %struct.pfs_node** %124, align 8
  store %struct.pfs_node* %125, %struct.pfs_node** %8, align 8
  %126 = load %struct.pfs_node*, %struct.pfs_node** %7, align 8
  %127 = call i32 @pfs_unlock(%struct.pfs_node* %126)
  %128 = load %struct.vnode*, %struct.vnode** %4, align 8
  %129 = getelementptr inbounds %struct.vnode, %struct.vnode* %128, i32 0, i32 1
  %130 = load %struct.mount*, %struct.mount** %129, align 8
  store %struct.mount* %130, %struct.mount** %9, align 8
  %131 = load %struct.mount*, %struct.mount** %9, align 8
  %132 = call i32 @vfs_busy(%struct.mount* %131, i32 0)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = load i32, i32* %17, align 4
  store i32 %136, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %178

137:                                              ; preds = %122
  %138 = load %struct.vnode*, %struct.vnode** %4, align 8
  %139 = call i32 @VOP_ISLOCKED(%struct.vnode* %138)
  store i32 %139, i32* %18, align 4
  %140 = load %struct.vnode*, %struct.vnode** %4, align 8
  %141 = call i32 @VOP_UNLOCK(%struct.vnode* %140, i32 0)
  %142 = load %struct.mount*, %struct.mount** %9, align 8
  %143 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %144 = load %struct.pfs_node*, %struct.pfs_node** %8, align 8
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @pfs_vncache_alloc(%struct.mount* %142, %struct.vnode** %143, %struct.pfs_node* %144, i32 %145)
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %137
  %150 = load %struct.vnode*, %struct.vnode** %4, align 8
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* @LK_RETRY, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @vn_lock(%struct.vnode* %150, i32 %153)
  %155 = load %struct.mount*, %struct.mount** %9, align 8
  %156 = call i32 @vfs_unbusy(%struct.mount* %155)
  %157 = load i32, i32* %17, align 4
  %158 = call i32 @PFS_RETURN(i32 %157)
  br label %159

159:                                              ; preds = %149, %137
  %160 = load i32, i32* %16, align 4
  %161 = load i32*, i32** %11, align 8
  store i32 %160, i32* %161, align 4
  %162 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %163 = load %struct.vnode*, %struct.vnode** %162, align 8
  %164 = call i32 @VOP_UNLOCK(%struct.vnode* %163, i32 0)
  %165 = load %struct.vnode*, %struct.vnode** %4, align 8
  %166 = load i32, i32* %18, align 4
  %167 = load i32, i32* @LK_RETRY, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @vn_lock(%struct.vnode* %165, i32 %168)
  %170 = load %struct.mount*, %struct.mount** %9, align 8
  %171 = call i32 @vfs_unbusy(%struct.mount* %170)
  %172 = call i32 @PFS_RETURN(i32 0)
  br label %173

173:                                              ; preds = %159, %109, %90
  %174 = load %struct.pfs_node*, %struct.pfs_node** %7, align 8
  %175 = call i32 @pfs_unlock(%struct.pfs_node* %174)
  %176 = load i32, i32* %17, align 4
  %177 = call i32 @PFS_RETURN(i32 %176)
  store i32 0, i32* %19, align 4
  br label %178

178:                                              ; preds = %173, %135
  %179 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %19, align 4
  switch i32 %180, label %183 [
    i32 0, label %181
    i32 1, label %181
  ]

181:                                              ; preds = %178, %178
  %182 = load i32, i32* %2, align 4
  ret i32 %182

183:                                              ; preds = %178
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pfs_lock(%struct.pfs_node*) #2

declare dso_local i32 @vhold(%struct.vnode*) #2

declare dso_local i32 @pfs_unlock(%struct.pfs_node*) #2

declare dso_local i32 @PFS_RETURN(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @vfs_busy(%struct.mount*, i32) #2

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #2

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #2

declare dso_local i32 @pfs_vncache_alloc(%struct.mount*, %struct.vnode**, %struct.pfs_node*, i32) #2

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #2

declare dso_local i32 @vfs_unbusy(%struct.mount*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
