; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_chown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_chown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.inode = type { i64, i64, i32, i32 }

@VNOVAL = common dso_local global i64 0, align 8
@VADMIN = common dso_local global i32 0, align 4
@PRIV_VFS_CHOWN = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@ISUID = common dso_local global i32 0, align 4
@ISGID = common dso_local global i32 0, align 4
@PRIV_VFS_RETAINSUGID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i64, i64, %struct.ucred*, %struct.thread*)* @ext2_chown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_chown(%struct.vnode* %0, i64 %1, i64 %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %16 = load %struct.vnode*, %struct.vnode** %7, align 8
  %17 = call %struct.inode* @VTOI(%struct.vnode* %16)
  store %struct.inode* %17, %struct.inode** %12, align 8
  store i32 0, i32* %15, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @VNOVAL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.inode*, %struct.inode** %12, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %21, %5
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @VNOVAL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.inode*, %struct.inode** %12, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.vnode*, %struct.vnode** %7, align 8
  %35 = load i32, i32* @VADMIN, align 4
  %36 = load %struct.ucred*, %struct.ucred** %10, align 8
  %37 = load %struct.thread*, %struct.thread** %11, align 8
  %38 = call i32 @VOP_ACCESS(%struct.vnode* %34, i32 %35, %struct.ucred* %36, %struct.thread* %37)
  store i32 %38, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %6, align 4
  br label %118

42:                                               ; preds = %33
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.inode*, %struct.inode** %12, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %59, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.inode*, %struct.inode** %12, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.ucred*, %struct.ucred** %10, align 8
  %57 = call i32 @groupmember(i64 %55, %struct.ucred* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54, %42
  %60 = load %struct.ucred*, %struct.ucred** %10, align 8
  %61 = load i32, i32* @PRIV_VFS_CHOWN, align 4
  %62 = call i32 @priv_check_cred(%struct.ucred* %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %6, align 4
  br label %118

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %54, %48
  %69 = load %struct.inode*, %struct.inode** %12, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %14, align 8
  %72 = load %struct.inode*, %struct.inode** %12, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.inode*, %struct.inode** %12, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.inode*, %struct.inode** %12, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* @IN_CHANGE, align 4
  %82 = load %struct.inode*, %struct.inode** %12, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.inode*, %struct.inode** %12, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ISUID, align 4
  %90 = load i32, i32* @ISGID, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %68
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %14, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %98, %94
  %103 = load %struct.ucred*, %struct.ucred** %10, align 8
  %104 = load i32, i32* @PRIV_VFS_RETAINSUGID, align 4
  %105 = call i32 @priv_check_cred(%struct.ucred* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load i32, i32* @ISUID, align 4
  %109 = load i32, i32* @ISGID, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = load %struct.inode*, %struct.inode** %12, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %107, %102
  br label %117

117:                                              ; preds = %116, %98, %68
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %65, %40
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @groupmember(i64, %struct.ucred*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
