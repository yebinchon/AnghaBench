; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_lock1_args = type { i32, %struct.vnode* }
%struct.vnode = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nfsnode = type { i32, i32 }

@LK_TYPE_MASK = common dso_local global i32 0, align 4
@default_vnodeops = common dso_local global i32 0, align 4
@newnfs_vnodeops = common dso_local global i32 0, align 4
@NVNSETSZSKIP = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_UPGRADE = common dso_local global i32 0, align 4
@LK_TRYUPGRADE = common dso_local global i32 0, align 4
@LK_EATTR_MASK = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@LK_INIT_MASK = common dso_local global i32 0, align 4
@LK_CANRECURSE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@LK_INTERLOCK = common dso_local global i32 0, align 4
@LK_DOWNGRADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_lock1_args*)* @nfs_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_lock(%struct.vop_lock1_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_lock1_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.nfsnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vop_lock1_args* %0, %struct.vop_lock1_args** %3, align 8
  %10 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %10, i32 0, i32 1
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  store %struct.vnode* %12, %struct.vnode** %4, align 8
  %13 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @LK_TYPE_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %19 = call i32 @VOP_LOCK1_APV(i32* @default_vnodeops, %struct.vop_lock1_args* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.vnode*, %struct.vnode** %4, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, @newnfs_vnodeops
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %1
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %206

29:                                               ; preds = %22
  %30 = load %struct.vnode*, %struct.vnode** %4, align 8
  %31 = call %struct.nfsnode* @VTONFS(%struct.vnode* %30)
  store %struct.nfsnode* %31, %struct.nfsnode** %5, align 8
  %32 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %33 = call i32 @NFSLOCKNODE(%struct.nfsnode* %32)
  %34 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %35 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NVNSETSZSKIP, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @LK_SHARED, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @LK_EXCLUSIVE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @LK_UPGRADE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @LK_TRYUPGRADE, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %29
  %57 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %58 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %57)
  store i32 0, i32* %2, align 4
  br label %206

59:                                               ; preds = %52, %48, %44, %40
  %60 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %61 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @LK_EATTR_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @LK_NOWAIT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %59
  %68 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %69 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @LK_INIT_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @LK_CANRECURSE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @LK_SHARED, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @LK_EXCLUSIVE, align 4
  %82 = icmp eq i32 %80, %81
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi i1 [ true, %75 ], [ %82, %79 ]
  br label %85

85:                                               ; preds = %83, %67, %59
  %86 = phi i1 [ false, %67 ], [ false, %59 ], [ %84, %83 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load %struct.vnode*, %struct.vnode** %4, align 8
  %92 = getelementptr inbounds %struct.vnode, %struct.vnode* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %99 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %98)
  %100 = load %struct.vnode*, %struct.vnode** %4, align 8
  %101 = call i32 @VOP_UNLOCK(%struct.vnode* %100, i32 0)
  %102 = load i32, i32* @EBUSY, align 4
  store i32 %102, i32* %2, align 4
  br label %206

103:                                              ; preds = %90, %85
  %104 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %105 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @LK_NOWAIT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @LK_SHARED, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load %struct.vnode*, %struct.vnode** %4, align 8
  %116 = getelementptr inbounds %struct.vnode, %struct.vnode* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114, %103
  %122 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %123 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %122)
  store i32 0, i32* %2, align 4
  br label %206

124:                                              ; preds = %114, %110
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @LK_SHARED, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %170

128:                                              ; preds = %124
  %129 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %130 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %129)
  %131 = load %struct.vnode*, %struct.vnode** %4, align 8
  %132 = call i32 @VOP_UNLOCK(%struct.vnode* %131, i32 0)
  %133 = load i32, i32* @LK_TYPE_MASK, align 4
  %134 = load i32, i32* @LK_INTERLOCK, align 4
  %135 = or i32 %133, %134
  %136 = xor i32 %135, -1
  %137 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %138 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load i32, i32* @LK_EXCLUSIVE, align 4
  %142 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %143 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %147 = call i32 @VOP_LOCK1_APV(i32* @default_vnodeops, %struct.vop_lock1_args* %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %128
  %151 = load %struct.vnode*, %struct.vnode** %4, align 8
  %152 = getelementptr inbounds %struct.vnode, %struct.vnode* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, @newnfs_vnodeops
  br i1 %154, label %155, label %157

155:                                              ; preds = %150, %128
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %2, align 4
  br label %206

157:                                              ; preds = %150
  %158 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %159 = call i32 @NFSLOCKNODE(%struct.nfsnode* %158)
  %160 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %161 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @NVNSETSZSKIP, align 4
  %164 = and i32 %162, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %157
  %167 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %168 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %167)
  br label %185

169:                                              ; preds = %157
  br label %170

170:                                              ; preds = %169, %124
  %171 = load i32, i32* @NVNSETSZSKIP, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %174 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %178 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %6, align 4
  %180 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %181 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %180)
  %182 = load %struct.vnode*, %struct.vnode** %4, align 8
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @vnode_pager_setsize(%struct.vnode* %182, i32 %183)
  br label %185

185:                                              ; preds = %170, %166
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @LK_SHARED, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %205

189:                                              ; preds = %185
  %190 = load i32, i32* @LK_TYPE_MASK, align 4
  %191 = load i32, i32* @LK_INTERLOCK, align 4
  %192 = or i32 %190, %191
  %193 = xor i32 %192, -1
  %194 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %195 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load i32, i32* @LK_DOWNGRADE, align 4
  %199 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %200 = getelementptr inbounds %struct.vop_lock1_args, %struct.vop_lock1_args* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load %struct.vop_lock1_args*, %struct.vop_lock1_args** %3, align 8
  %204 = call i32 @VOP_LOCK1_APV(i32* @default_vnodeops, %struct.vop_lock1_args* %203)
  br label %205

205:                                              ; preds = %189, %185
  store i32 0, i32* %2, align 4
  br label %206

206:                                              ; preds = %205, %155, %121, %97, %56, %27
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i32 @VOP_LOCK1_APV(i32*, %struct.vop_lock1_args*) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vnode_pager_setsize(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
