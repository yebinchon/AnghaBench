; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_vnops.c_unionfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32 }
%struct.vop_open_args = type { i32, %struct.TYPE_3__*, i32*, %struct.thread*, %struct.ucred* }
%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32 }
%struct.ucred = type { i32 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }
%struct.unionfs_node_status = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"unionfs_open: enter\0A\00", align 1
@NULLVP = common dso_local global %struct.vnode* null, align 8
@FWRITE = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@O_TRUNC = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@FREAD = common dso_local global i32 0, align 4
@UNS_OPENL_4_READDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unionfs_open: leave (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_open_args*)* @unionfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionfs_open(%struct.vop_open_args* %0) #0 {
  %2 = alloca %struct.vop_open_args*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.unionfs_node*, align 8
  %5 = alloca %struct.unionfs_node_status*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.thread*, align 8
  store %struct.vop_open_args* %0, %struct.vop_open_args** %2, align 8
  %11 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.vop_open_args*, %struct.vop_open_args** %2, align 8
  %13 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_3__* %14)
  store i32 0, i32* %3, align 4
  %16 = load %struct.vop_open_args*, %struct.vop_open_args** %2, align 8
  %17 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_3__* %18)
  store %struct.unionfs_node* %19, %struct.unionfs_node** %4, align 8
  %20 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %21 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %20, i32 0, i32 0
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  store %struct.vnode* %22, %struct.vnode** %6, align 8
  %23 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %24 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %23, i32 0, i32 1
  %25 = load %struct.vnode*, %struct.vnode** %24, align 8
  store %struct.vnode* %25, %struct.vnode** %7, align 8
  %26 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %26, %struct.vnode** %8, align 8
  %27 = load %struct.vop_open_args*, %struct.vop_open_args** %2, align 8
  %28 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %27, i32 0, i32 4
  %29 = load %struct.ucred*, %struct.ucred** %28, align 8
  store %struct.ucred* %29, %struct.ucred** %9, align 8
  %30 = load %struct.vop_open_args*, %struct.vop_open_args** %2, align 8
  %31 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %30, i32 0, i32 3
  %32 = load %struct.thread*, %struct.thread** %31, align 8
  store %struct.thread* %32, %struct.thread** %10, align 8
  %33 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %34 = load %struct.thread*, %struct.thread** %10, align 8
  %35 = call i32 @unionfs_get_node_status(%struct.unionfs_node* %33, %struct.thread* %34, %struct.unionfs_node_status** %5)
  %36 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %5, align 8
  %37 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %1
  %41 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %5, align 8
  %42 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %40, %1
  %46 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %5, align 8
  %47 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %51, %struct.vnode** %8, align 8
  br label %54

52:                                               ; preds = %45
  %53 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %53, %struct.vnode** %8, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = load %struct.vnode*, %struct.vnode** %8, align 8
  %56 = load %struct.vnode*, %struct.vnode** %7, align 8
  %57 = icmp eq %struct.vnode* %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load %struct.vop_open_args*, %struct.vop_open_args** %2, align 8
  %60 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FWRITE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.vnode*, %struct.vnode** %7, align 8
  %67 = getelementptr inbounds %struct.vnode, %struct.vnode* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @VREG, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %72, %struct.vnode** %8, align 8
  br label %73

73:                                               ; preds = %71, %65, %58, %54
  br label %74

74:                                               ; preds = %73, %40
  %75 = load %struct.vnode*, %struct.vnode** %8, align 8
  %76 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %77 = icmp eq %struct.vnode* %75, %76
  br i1 %77, label %78, label %121

78:                                               ; preds = %74
  %79 = load %struct.vnode*, %struct.vnode** %6, align 8
  %80 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %81 = icmp eq %struct.vnode* %79, %80
  br i1 %81, label %82, label %118

82:                                               ; preds = %78
  %83 = load %struct.vop_open_args*, %struct.vop_open_args** %2, align 8
  %84 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @FWRITE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %115

89:                                               ; preds = %82
  %90 = load %struct.vnode*, %struct.vnode** %7, align 8
  %91 = getelementptr inbounds %struct.vnode, %struct.vnode* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @VREG, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %89
  %96 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %97 = load %struct.vop_open_args*, %struct.vop_open_args** %2, align 8
  %98 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @O_TRUNC, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = load %struct.ucred*, %struct.ucred** %9, align 8
  %106 = load %struct.thread*, %struct.thread** %10, align 8
  %107 = call i32 @unionfs_copyfile(%struct.unionfs_node* %96, i32 %104, %struct.ucred* %105, %struct.thread* %106)
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* %3, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %95
  br label %203

111:                                              ; preds = %95
  %112 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %113 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %112, i32 0, i32 0
  %114 = load %struct.vnode*, %struct.vnode** %113, align 8
  store %struct.vnode* %114, %struct.vnode** %6, align 8
  store %struct.vnode* %114, %struct.vnode** %8, align 8
  br label %117

115:                                              ; preds = %89, %82
  %116 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %116, %struct.vnode** %8, align 8
  br label %117

117:                                              ; preds = %115, %111
  br label %120

118:                                              ; preds = %78
  %119 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %119, %struct.vnode** %8, align 8
  br label %120

120:                                              ; preds = %118, %117
  br label %121

121:                                              ; preds = %120, %74
  %122 = load %struct.vnode*, %struct.vnode** %8, align 8
  %123 = load %struct.vop_open_args*, %struct.vop_open_args** %2, align 8
  %124 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ucred*, %struct.ucred** %9, align 8
  %127 = load %struct.thread*, %struct.thread** %10, align 8
  %128 = load %struct.vop_open_args*, %struct.vop_open_args** %2, align 8
  %129 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @VOP_OPEN(%struct.vnode* %122, i32 %125, %struct.ucred* %126, %struct.thread* %127, i32* %130)
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %3, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %202

134:                                              ; preds = %121
  %135 = load %struct.vnode*, %struct.vnode** %8, align 8
  %136 = load %struct.vnode*, %struct.vnode** %6, align 8
  %137 = icmp eq %struct.vnode* %135, %136
  br i1 %137, label %138, label %184

138:                                              ; preds = %134
  %139 = load %struct.vnode*, %struct.vnode** %6, align 8
  %140 = getelementptr inbounds %struct.vnode, %struct.vnode* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @VDIR, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %179

144:                                              ; preds = %138
  %145 = load %struct.vnode*, %struct.vnode** %7, align 8
  %146 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %147 = icmp ne %struct.vnode* %145, %146
  br i1 %147, label %148, label %179

148:                                              ; preds = %144
  %149 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %5, align 8
  %150 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sle i64 %151, 0
  br i1 %152, label %153, label %179

153:                                              ; preds = %148
  %154 = load %struct.vnode*, %struct.vnode** %7, align 8
  %155 = load i32, i32* @FREAD, align 4
  %156 = load %struct.ucred*, %struct.ucred** %9, align 8
  %157 = load %struct.thread*, %struct.thread** %10, align 8
  %158 = call i32 @VOP_OPEN(%struct.vnode* %154, i32 %155, %struct.ucred* %156, %struct.thread* %157, i32* null)
  store i32 %158, i32* %3, align 4
  %159 = load i32, i32* %3, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %153
  %162 = load %struct.vnode*, %struct.vnode** %6, align 8
  %163 = load %struct.vop_open_args*, %struct.vop_open_args** %2, align 8
  %164 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.ucred*, %struct.ucred** %9, align 8
  %167 = load %struct.thread*, %struct.thread** %10, align 8
  %168 = call i32 @VOP_CLOSE(%struct.vnode* %162, i32 %165, %struct.ucred* %166, %struct.thread* %167)
  br label %203

169:                                              ; preds = %153
  %170 = load i32, i32* @UNS_OPENL_4_READDIR, align 4
  %171 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %5, align 8
  %172 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %5, align 8
  %176 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %176, align 8
  br label %179

179:                                              ; preds = %169, %148, %144, %138
  %180 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %5, align 8
  %181 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* %181, align 8
  br label %194

184:                                              ; preds = %134
  %185 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %5, align 8
  %186 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %186, align 8
  %189 = load %struct.vop_open_args*, %struct.vop_open_args** %2, align 8
  %190 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %5, align 8
  %193 = getelementptr inbounds %struct.unionfs_node_status, %struct.unionfs_node_status* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  br label %194

194:                                              ; preds = %184, %179
  %195 = load %struct.vnode*, %struct.vnode** %8, align 8
  %196 = getelementptr inbounds %struct.vnode, %struct.vnode* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.vop_open_args*, %struct.vop_open_args** %2, align 8
  %199 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %198, i32 0, i32 1
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  store i32 %197, i32* %201, align 4
  br label %202

202:                                              ; preds = %194, %121
  br label %203

203:                                              ; preds = %202, %161, %110
  %204 = load i32, i32* %3, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load %struct.unionfs_node*, %struct.unionfs_node** %4, align 8
  %208 = load %struct.unionfs_node_status*, %struct.unionfs_node_status** %5, align 8
  %209 = call i32 @unionfs_tryrem_node_status(%struct.unionfs_node* %207, %struct.unionfs_node_status* %208)
  br label %210

210:                                              ; preds = %206, %203
  %211 = load i32, i32* %3, align 4
  %212 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #1

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.TYPE_3__*) #1

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.TYPE_3__*) #1

declare dso_local i32 @unionfs_get_node_status(%struct.unionfs_node*, %struct.thread*, %struct.unionfs_node_status**) #1

declare dso_local i32 @unionfs_copyfile(%struct.unionfs_node*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @VOP_OPEN(%struct.vnode*, i32, %struct.ucred*, %struct.thread*, i32*) #1

declare dso_local i32 @VOP_CLOSE(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @unionfs_tryrem_node_status(%struct.unionfs_node*, %struct.unionfs_node_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
