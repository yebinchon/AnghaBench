; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_ncl_vinvalbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_ncl_vinvalbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.thread = type { i32 }
%struct.nfsnode = type { i64, i32, i64 }
%struct.nfsmount = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ncl_vinvalbuf\00", align 1
@NFSMNT_INT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@V_ALLOWCLEAN = common dso_local global i32 0, align 4
@V_SAVE = common dso_local global i32 0, align 4
@V_VMIO = common dso_local global i32 0, align 4
@OBJPC_SYNC = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_vinvalbuf(%struct.vnode* %0, i32 %1, %struct.thread* %2, i32 %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfsnode*, align 8
  %10 = alloca %struct.nfsmount*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.vnode*, %struct.vnode** %5, align 8
  %16 = call %struct.nfsnode* @VTONFS(%struct.vnode* %15)
  store %struct.nfsnode* %16, %struct.nfsnode** %9, align 8
  %17 = load %struct.vnode*, %struct.vnode** %5, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.nfsmount* @VFSTONFS(i32 %19)
  store %struct.nfsmount* %20, %struct.nfsmount** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.vnode*, %struct.vnode** %5, align 8
  %22 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %24 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NFSMNT_INT, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %4
  %31 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %32 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @NFSCL_FORCEDISM(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @PCATCH, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @hz, align 4
  %43 = mul nsw i32 2, %42
  store i32 %43, i32* %13, align 4
  br label %45

44:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load %struct.vnode*, %struct.vnode** %5, align 8
  %47 = call i32 @ncl_excl_start(%struct.vnode* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @V_ALLOWCLEAN, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @V_SAVE, align 4
  %57 = load i32, i32* @V_VMIO, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = load i32, i32* @V_SAVE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %54
  %63 = load %struct.vnode*, %struct.vnode** %5, align 8
  %64 = getelementptr inbounds %struct.vnode, %struct.vnode* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %94

68:                                               ; preds = %62
  %69 = load %struct.vnode*, %struct.vnode** %5, align 8
  %70 = getelementptr inbounds %struct.vnode, %struct.vnode* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @VM_OBJECT_WLOCK(i32* %72)
  %74 = load %struct.vnode*, %struct.vnode** %5, align 8
  %75 = getelementptr inbounds %struct.vnode, %struct.vnode* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @OBJPC_SYNC, align 4
  %79 = call i32 @vm_object_page_clean(i32* %77, i32 0, i32 0, i32 %78)
  %80 = load %struct.vnode*, %struct.vnode** %5, align 8
  %81 = getelementptr inbounds %struct.vnode, %struct.vnode* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @VM_OBJECT_WUNLOCK(i32* %83)
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %68
  %88 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %89 = load %struct.thread*, %struct.thread** %7, align 8
  %90 = call i32 @newnfs_sigintr(%struct.nfsmount* %88, %struct.thread* %89)
  store i32 %90, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %146

93:                                               ; preds = %87, %68
  br label %94

94:                                               ; preds = %93, %62, %54
  %95 = load %struct.vnode*, %struct.vnode** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @vinvalbuf(%struct.vnode* %95, i32 %96, i32 %97, i32 0)
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %111, %94
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %107 = load %struct.thread*, %struct.thread** %7, align 8
  %108 = call i32 @newnfs_sigintr(%struct.nfsmount* %106, %struct.thread* %107)
  store i32 %108, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %146

111:                                              ; preds = %105, %102
  %112 = load %struct.vnode*, %struct.vnode** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @vinvalbuf(%struct.vnode* %112, i32 %113, i32 0, i32 %114)
  store i32 %115, i32* %11, align 4
  br label %99

116:                                              ; preds = %99
  %117 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %118 = call i64 @NFSHASPNFS(%struct.nfsmount* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load %struct.vnode*, %struct.vnode** %5, align 8
  %122 = load %struct.thread*, %struct.thread** %7, align 8
  %123 = call i32 @nfscl_layoutcommit(%struct.vnode* %121, %struct.thread* %122)
  %124 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %125 = call i32 @NFSLOCKNODE(%struct.nfsnode* %124)
  %126 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %127 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %126, i32 0, i32 2
  store i64 0, i64* %127, align 8
  br label %131

128:                                              ; preds = %116
  %129 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %130 = call i32 @NFSLOCKNODE(%struct.nfsnode* %129)
  br label %131

131:                                              ; preds = %128, %120
  %132 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %133 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load i32, i32* @NMODIFIED, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %140 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %136, %131
  %144 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %145 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %144)
  br label %146

146:                                              ; preds = %143, %110, %92
  %147 = load %struct.vnode*, %struct.vnode** %5, align 8
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @ncl_excl_finish(%struct.vnode* %147, i32 %148)
  %150 = load i32, i32* %11, align 4
  ret i32 %150
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i64 @NFSCL_FORCEDISM(i32) #1

declare dso_local i32 @ncl_excl_start(%struct.vnode*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32 @vm_object_page_clean(i32*, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local i32 @newnfs_sigintr(%struct.nfsmount*, %struct.thread*) #1

declare dso_local i32 @vinvalbuf(%struct.vnode*, i32, i32, i32) #1

declare dso_local i64 @NFSHASPNFS(%struct.nfsmount*) #1

declare dso_local i32 @nfscl_layoutcommit(%struct.vnode*, %struct.thread*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @ncl_excl_finish(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
