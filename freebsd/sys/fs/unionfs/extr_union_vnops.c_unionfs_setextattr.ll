; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_setextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_setextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.vop_setextattr_args = type { i32, i32, i32, %struct.TYPE_5__*, %struct.thread*, %struct.ucred* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.thread = type { i32 }
%struct.ucred = type { i32 }
%struct.unionfs_node = type { i32, %struct.vnode*, %struct.vnode* }

@EROFS = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"unionfs_setextattr: enter (un_flag=%x)\0A\00", align 1
@MNT_RDONLY = common dso_local global i32 0, align 4
@UNIONFS_OPENEXTU = common dso_local global i32 0, align 4
@UNIONFS_OPENEXTL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"unionfs_setextattr: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_setextattr_args*)* @unionfs_setextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_setextattr(%struct.vop_setextattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_setextattr_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.unionfs_node*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.thread*, align 8
  store %struct.vop_setextattr_args* %0, %struct.vop_setextattr_args** %3, align 8
  %11 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = call i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_5__* %13)
  %15 = load i32, i32* @EROFS, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %16, i32 0, i32 3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_5__* %18)
  store %struct.unionfs_node* %19, %struct.unionfs_node** %5, align 8
  %20 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %21 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %20, i32 0, i32 1
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  store %struct.vnode* %22, %struct.vnode** %6, align 8
  %23 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %24 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %23, i32 0, i32 2
  %25 = load %struct.vnode*, %struct.vnode** %24, align 8
  store %struct.vnode* %25, %struct.vnode** %7, align 8
  %26 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %26, %struct.vnode** %8, align 8
  %27 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %28 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %27, i32 0, i32 5
  %29 = load %struct.ucred*, %struct.ucred** %28, align 8
  store %struct.ucred* %29, %struct.ucred** %9, align 8
  %30 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %31 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %30, i32 0, i32 4
  %32 = load %struct.thread*, %struct.thread** %31, align 8
  store %struct.thread* %32, %struct.thread** %10, align 8
  %33 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %34 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %38 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MNT_RDONLY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = load i32, i32* @EROFS, align 4
  store i32 %48, i32* %2, align 4
  br label %170

49:                                               ; preds = %1
  %50 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %51 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @UNIONFS_OPENEXTU, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %58 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %57, i32 0, i32 1
  %59 = load %struct.vnode*, %struct.vnode** %58, align 8
  store %struct.vnode* %59, %struct.vnode** %8, align 8
  br label %72

60:                                               ; preds = %49
  %61 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %62 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @UNIONFS_OPENEXTL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %69 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %68, i32 0, i32 2
  %70 = load %struct.vnode*, %struct.vnode** %69, align 8
  store %struct.vnode* %70, %struct.vnode** %8, align 8
  br label %71

71:                                               ; preds = %67, %60
  br label %72

72:                                               ; preds = %71, %56
  %73 = load %struct.vnode*, %struct.vnode** %8, align 8
  %74 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %75 = icmp eq %struct.vnode* %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %77, i32* %2, align 4
  br label %170

78:                                               ; preds = %72
  %79 = load %struct.vnode*, %struct.vnode** %8, align 8
  %80 = load %struct.vnode*, %struct.vnode** %7, align 8
  %81 = icmp eq %struct.vnode* %79, %80
  br i1 %81, label %82, label %147

82:                                               ; preds = %78
  %83 = load %struct.vnode*, %struct.vnode** %7, align 8
  %84 = getelementptr inbounds %struct.vnode, %struct.vnode* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @VREG, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %147

88:                                               ; preds = %82
  %89 = load %struct.vnode*, %struct.vnode** %7, align 8
  %90 = load %struct.ucred*, %struct.ucred** %9, align 8
  %91 = load %struct.thread*, %struct.thread** %10, align 8
  %92 = call i32 @VOP_CLOSEEXTATTR(%struct.vnode* %89, i32 0, %struct.ucred* %90, %struct.thread* %91)
  %93 = load %struct.vnode*, %struct.vnode** %6, align 8
  %94 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %95 = icmp eq %struct.vnode* %93, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %88
  %97 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %98 = load %struct.ucred*, %struct.ucred** %9, align 8
  %99 = load %struct.thread*, %struct.thread** %10, align 8
  %100 = call i32 @unionfs_copyfile(%struct.unionfs_node* %97, i32 1, %struct.ucred* %98, %struct.thread* %99)
  store i32 %100, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %133, %102
  %104 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %105 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @UNIONFS_OPENEXTL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %103
  %111 = load %struct.vnode*, %struct.vnode** %7, align 8
  %112 = load %struct.ucred*, %struct.ucred** %9, align 8
  %113 = load %struct.thread*, %struct.thread** %10, align 8
  %114 = call i32 @VOP_OPENEXTATTR(%struct.vnode* %111, %struct.ucred* %112, %struct.thread* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load i32, i32* @UNIONFS_OPENEXTL, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %120 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %116, %110, %103
  br label %166

124:                                              ; preds = %96, %88
  %125 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %126 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %125, i32 0, i32 1
  %127 = load %struct.vnode*, %struct.vnode** %126, align 8
  store %struct.vnode* %127, %struct.vnode** %6, align 8
  %128 = load %struct.vnode*, %struct.vnode** %6, align 8
  %129 = load %struct.ucred*, %struct.ucred** %9, align 8
  %130 = load %struct.thread*, %struct.thread** %10, align 8
  %131 = call i32 @VOP_OPENEXTATTR(%struct.vnode* %128, %struct.ucred* %129, %struct.thread* %130)
  store i32 %131, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %103

134:                                              ; preds = %124
  %135 = load i32, i32* @UNIONFS_OPENEXTL, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %138 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load i32, i32* @UNIONFS_OPENEXTU, align 4
  %142 = load %struct.unionfs_node*, %struct.unionfs_node** %5, align 8
  %143 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %146, %struct.vnode** %8, align 8
  br label %147

147:                                              ; preds = %134, %82, %78
  %148 = load %struct.vnode*, %struct.vnode** %8, align 8
  %149 = load %struct.vnode*, %struct.vnode** %6, align 8
  %150 = icmp eq %struct.vnode* %148, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %147
  %152 = load %struct.vnode*, %struct.vnode** %8, align 8
  %153 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %154 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %157 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.vop_setextattr_args*, %struct.vop_setextattr_args** %3, align 8
  %160 = getelementptr inbounds %struct.vop_setextattr_args, %struct.vop_setextattr_args* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ucred*, %struct.ucred** %9, align 8
  %163 = load %struct.thread*, %struct.thread** %10, align 8
  %164 = call i32 @VOP_SETEXTATTR(%struct.vnode* %152, i32 %155, i32 %158, i32 %161, %struct.ucred* %162, %struct.thread* %163)
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %151, %147
  br label %166

166:                                              ; preds = %165, %123
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* %4, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %166, %76, %47
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_5__*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_5__*) #1

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, i32) #1

declare dso_local i32 @VOP_CLOSEEXTATTR(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @unionfs_copyfile(%struct.unionfs_node*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @VOP_OPENEXTATTR(%struct.vnode*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @VOP_SETEXTATTR(%struct.vnode*, i32, i32, i32, %struct.ucred*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
