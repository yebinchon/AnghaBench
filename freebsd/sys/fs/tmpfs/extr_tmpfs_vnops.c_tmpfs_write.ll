; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_write_args = type { i32, i32, %struct.uio*, %struct.vnode* }
%struct.uio = type { i64, i64, i32 }
%struct.vnode = type { i64, i32 }
%struct.tmpfs_node = type { i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@VREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IO_APPEND = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TMPFS_NODE_ACCESSED = common dso_local global i32 0, align 4
@TMPFS_NODE_MODIFIED = common dso_local global i32 0, align 4
@TMPFS_NODE_CHANGED = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@PRIV_VFS_RETAINSUGID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_write_args*)* @tmpfs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_write(%struct.vop_write_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_write_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.tmpfs_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vop_write_args* %0, %struct.vop_write_args** %3, align 8
  %10 = load %struct.vop_write_args*, %struct.vop_write_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_write_args, %struct.vop_write_args* %10, i32 0, i32 3
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  store %struct.vnode* %12, %struct.vnode** %4, align 8
  %13 = load %struct.vop_write_args*, %struct.vop_write_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_write_args, %struct.vop_write_args* %13, i32 0, i32 2
  %15 = load %struct.uio*, %struct.uio** %14, align 8
  store %struct.uio* %15, %struct.uio** %5, align 8
  %16 = load %struct.vop_write_args*, %struct.vop_write_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_write_args, %struct.vop_write_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %19 = load %struct.vnode*, %struct.vnode** %4, align 8
  %20 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %19)
  store %struct.tmpfs_node* %20, %struct.tmpfs_node** %6, align 8
  %21 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %22 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.uio*, %struct.uio** %5, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.vnode*, %struct.vnode** %4, align 8
  %30 = getelementptr inbounds %struct.vnode, %struct.vnode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VREG, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28, %1
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %2, align 4
  br label %183

36:                                               ; preds = %28
  %37 = load %struct.uio*, %struct.uio** %5, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %183

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @IO_APPEND, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %49 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.uio*, %struct.uio** %5, align 8
  %52 = getelementptr inbounds %struct.uio, %struct.uio* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.uio*, %struct.uio** %5, align 8
  %55 = getelementptr inbounds %struct.uio, %struct.uio* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.uio*, %struct.uio** %5, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load %struct.vnode*, %struct.vnode** %4, align 8
  %62 = getelementptr inbounds %struct.vnode, %struct.vnode* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.TYPE_4__* @VFS_TO_TMPFS(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %60, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = load i32, i32* @EFBIG, align 4
  store i32 %69, i32* %2, align 4
  br label %183

70:                                               ; preds = %53
  %71 = load %struct.vnode*, %struct.vnode** %4, align 8
  %72 = load %struct.uio*, %struct.uio** %5, align 8
  %73 = load %struct.uio*, %struct.uio** %5, align 8
  %74 = getelementptr inbounds %struct.uio, %struct.uio* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @vn_rlimit_fsize(%struct.vnode* %71, %struct.uio* %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* @EFBIG, align 4
  store i32 %79, i32* %2, align 4
  br label %183

80:                                               ; preds = %70
  %81 = load %struct.uio*, %struct.uio** %5, align 8
  %82 = getelementptr inbounds %struct.uio, %struct.uio* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.uio*, %struct.uio** %5, align 8
  %85 = getelementptr inbounds %struct.uio, %struct.uio* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %89 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %80
  %93 = load %struct.vnode*, %struct.vnode** %4, align 8
  %94 = load %struct.uio*, %struct.uio** %5, align 8
  %95 = getelementptr inbounds %struct.uio, %struct.uio* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.uio*, %struct.uio** %5, align 8
  %98 = getelementptr inbounds %struct.uio, %struct.uio* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %96, %99
  %101 = load i32, i32* @FALSE, align 4
  %102 = call i32 @tmpfs_reg_resize(%struct.vnode* %93, i64 %100, i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %160

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106, %80
  %108 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %109 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %113 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.uio*, %struct.uio** %5, align 8
  %116 = call i32 @uiomove_object(i32 %111, i64 %114, %struct.uio* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* @TMPFS_NODE_ACCESSED, align 4
  %118 = load i32, i32* @TMPFS_NODE_MODIFIED, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @TMPFS_NODE_CHANGED, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %123 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %127 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @S_ISUID, align 4
  %130 = load i32, i32* @S_ISGID, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %128, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %107
  %135 = load %struct.vop_write_args*, %struct.vop_write_args** %3, align 8
  %136 = getelementptr inbounds %struct.vop_write_args, %struct.vop_write_args* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @PRIV_VFS_RETAINSUGID, align 4
  %139 = call i64 @priv_check_cred(i32 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %134
  %142 = load i32, i32* @S_ISUID, align 4
  %143 = load i32, i32* @S_ISGID, align 4
  %144 = or i32 %142, %143
  %145 = xor i32 %144, -1
  %146 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %147 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %141, %134
  br label %151

151:                                              ; preds = %150, %107
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load %struct.vnode*, %struct.vnode** %4, align 8
  %156 = load i64, i64* %7, align 8
  %157 = load i32, i32* @TRUE, align 4
  %158 = call i32 @tmpfs_reg_resize(%struct.vnode* %155, i64 %156, i32 %157)
  br label %159

159:                                              ; preds = %154, %151
  br label %160

160:                                              ; preds = %159, %105
  %161 = load i32, i32* %8, align 4
  %162 = icmp eq i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = load %struct.uio*, %struct.uio** %5, align 8
  %165 = getelementptr inbounds %struct.uio, %struct.uio* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 @IMPLIES(i32 %163, i32 %168)
  %170 = call i32 @MPASS(i32 %169)
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i32
  %174 = load i64, i64* %7, align 8
  %175 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %176 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %174, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @IMPLIES(i32 %173, i32 %179)
  %181 = call i32 @MPASS(i32 %180)
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %160, %78, %68, %41, %34
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local %struct.TYPE_4__* @VFS_TO_TMPFS(i32) #1

declare dso_local i64 @vn_rlimit_fsize(%struct.vnode*, %struct.uio*, i32) #1

declare dso_local i32 @tmpfs_reg_resize(%struct.vnode*, i64, i32) #1

declare dso_local i32 @uiomove_object(i32, i64, %struct.uio*) #1

declare dso_local i64 @priv_check_cred(i32, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @IMPLIES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
