; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.vop_readdir_args = type { i32*, i32, %struct.uio*, %struct.vnode* }
%struct.uio = type { i64, i32 }
%struct.vnode = type { i64 }
%struct.nfsnode = type { i64, i32, i64, i32 }
%struct.vattr = type { i64, i32 }

@VDIR = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@nfsstatsv1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DIRBLKSIZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_readdir_args*)* @nfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir(%struct.vop_readdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_readdir_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.nfsnode*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vattr, align 8
  store %struct.vop_readdir_args* %0, %struct.vop_readdir_args** %3, align 8
  %11 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %11, i32 0, i32 3
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  store %struct.vnode* %13, %struct.vnode** %4, align 8
  %14 = load %struct.vnode*, %struct.vnode** %4, align 8
  %15 = call %struct.nfsnode* @VTONFS(%struct.vnode* %14)
  store %struct.nfsnode* %15, %struct.nfsnode** %5, align 8
  %16 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %16, i32 0, i32 2
  %18 = load %struct.uio*, %struct.uio** %17, align 8
  store %struct.uio* %18, %struct.uio** %6, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %25 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VDIR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @EPERM, align 4
  store i32 %34, i32* %2, align 4
  br label %155

35:                                               ; preds = %27
  %36 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %37 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %100

40:                                               ; preds = %35
  %41 = load %struct.uio*, %struct.uio** %6, align 8
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %45 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %100

48:                                               ; preds = %40
  %49 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %50 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @NMODIFIED, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %100

55:                                               ; preds = %48
  %56 = load %struct.vnode*, %struct.vnode** %4, align 8
  %57 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %58 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @VOP_GETATTR(%struct.vnode* %56, %struct.vattr* %10, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %99

62:                                               ; preds = %55
  %63 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %64 = call i32 @NFSLOCKNODE(%struct.nfsnode* %63)
  %65 = load %struct.vnode*, %struct.vnode** %4, align 8
  %66 = call i64 @NFS_ISV4(%struct.vnode* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %70 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %68, %62
  %76 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %77 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 1
  %79 = call i32 @NFS_TIMESPEC_COMPARE(i32* %77, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %75, %68
  %82 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %83 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %82)
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 1), align 4
  %85 = call i32 @NFSINCRGLOBAL(i32 %84)
  %86 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %87 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %92 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %81
  store i32 0, i32* %2, align 4
  br label %155

95:                                               ; preds = %75
  %96 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %97 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %96)
  br label %98

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98, %55
  br label %100

100:                                              ; preds = %99, %48, %40, %35
  %101 = load %struct.uio*, %struct.uio** %6, align 8
  %102 = getelementptr inbounds %struct.uio, %struct.uio* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @DIRBLKSIZ, align 4
  %105 = srem i32 %103, %104
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.uio*, %struct.uio** %6, align 8
  %108 = getelementptr inbounds %struct.uio, %struct.uio* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i32, i32* @EINVAL, align 4
  store i32 %112, i32* %2, align 4
  br label %155

113:                                              ; preds = %100
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.uio*, %struct.uio** %6, align 8
  %116 = getelementptr inbounds %struct.uio, %struct.uio* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.uio*, %struct.uio** %6, align 8
  %120 = getelementptr inbounds %struct.uio, %struct.uio* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %7, align 4
  %122 = load %struct.vnode*, %struct.vnode** %4, align 8
  %123 = load %struct.uio*, %struct.uio** %6, align 8
  %124 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %125 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @ncl_bioread(%struct.vnode* %122, %struct.uio* %123, i32 0, i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %148, label %130

130:                                              ; preds = %113
  %131 = load %struct.uio*, %struct.uio** %6, align 8
  %132 = getelementptr inbounds %struct.uio, %struct.uio* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %130
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfsstatsv1, i32 0, i32 0), align 4
  %138 = call i32 @NFSINCRGLOBAL(i32 %137)
  %139 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %140 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %145 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %143, %136
  br label %148

148:                                              ; preds = %147, %130, %113
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.uio*, %struct.uio** %6, align 8
  %151 = getelementptr inbounds %struct.uio, %struct.uio* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %148, %111, %94, %33
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i64 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @NFS_TIMESPEC_COMPARE(i32*, i32*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSINCRGLOBAL(i32) #1

declare dso_local i32 @ncl_bioread(%struct.vnode*, %struct.uio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
