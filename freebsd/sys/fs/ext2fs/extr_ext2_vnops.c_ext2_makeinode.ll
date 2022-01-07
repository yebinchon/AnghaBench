; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_makeinode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_makeinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.componentname = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.inode = type { i32, i64, i32, i32, i32, i32 }

@IFMT = common dso_local global i32 0, align 4
@IFREG = common dso_local global i32 0, align 4
@IN_ACCESS = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4
@ISGID = common dso_local global i32 0, align 4
@PRIV_VFS_RETAINSUGID = common dso_local global i32 0, align 4
@ISWHITEOUT = common dso_local global i32 0, align 4
@UF_OPAQUE = common dso_local global i32 0, align 4
@HASBUF = common dso_local global i32 0, align 4
@ISUID = common dso_local global i32 0, align 4
@MNT_ACLS = common dso_local global i32 0, align 4
@MNT_SUIDDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vnode*, %struct.vnode**, %struct.componentname*)* @ext2_makeinode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_makeinode(i32 %0, %struct.vnode* %1, %struct.vnode** %2, %struct.componentname* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.vnode**, align 8
  %9 = alloca %struct.componentname*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store %struct.vnode** %2, %struct.vnode*** %8, align 8
  store %struct.componentname* %3, %struct.componentname** %9, align 8
  %14 = load %struct.vnode*, %struct.vnode** %7, align 8
  %15 = call %struct.inode* @VTOI(%struct.vnode* %14)
  store %struct.inode* %15, %struct.inode** %11, align 8
  %16 = load %struct.vnode**, %struct.vnode*** %8, align 8
  store %struct.vnode* null, %struct.vnode** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @IFMT, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* @IFREG, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21, %4
  %26 = load %struct.vnode*, %struct.vnode** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.componentname*, %struct.componentname** %9, align 8
  %29 = getelementptr inbounds %struct.componentname, %struct.componentname* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = call i32 @ext2_valloc(%struct.vnode* %26, i32 %27, %struct.TYPE_7__* %30, %struct.vnode** %12)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %5, align 4
  br label %145

36:                                               ; preds = %25
  %37 = load %struct.vnode*, %struct.vnode** %12, align 8
  %38 = call %struct.inode* @VTOI(%struct.vnode* %37)
  store %struct.inode* %38, %struct.inode** %10, align 8
  %39 = load %struct.inode*, %struct.inode** %11, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.componentname*, %struct.componentname** %9, align 8
  %45 = getelementptr inbounds %struct.componentname, %struct.componentname* %44, i32 0, i32 2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @IN_ACCESS, align 4
  %52 = load i32, i32* @IN_CHANGE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @IN_UPDATE, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @IFTOVT(i32 %63)
  %65 = load %struct.vnode*, %struct.vnode** %12, align 8
  %66 = getelementptr inbounds %struct.vnode, %struct.vnode* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 3
  store i32 1, i32* %68, align 4
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ISGID, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %36
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.componentname*, %struct.componentname** %9, align 8
  %80 = getelementptr inbounds %struct.componentname, %struct.componentname* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = call i32 @groupmember(i32 %78, %struct.TYPE_7__* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %75
  %85 = load %struct.componentname*, %struct.componentname** %9, align 8
  %86 = getelementptr inbounds %struct.componentname, %struct.componentname* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32, i32* @PRIV_VFS_RETAINSUGID, align 4
  %89 = call i64 @priv_check_cred(%struct.TYPE_7__* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load i32, i32* @ISGID, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.inode*, %struct.inode** %10, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %91, %84
  br label %99

99:                                               ; preds = %98, %75, %36
  %100 = load %struct.componentname*, %struct.componentname** %9, align 8
  %101 = getelementptr inbounds %struct.componentname, %struct.componentname* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ISWHITEOUT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load i32, i32* @UF_OPAQUE, align 4
  %108 = load %struct.inode*, %struct.inode** %10, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %106, %99
  %113 = load %struct.vnode*, %struct.vnode** %12, align 8
  %114 = load %struct.vnode*, %struct.vnode** %12, align 8
  %115 = call i32 @DOINGASYNC(%struct.vnode* %114)
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = call i32 @ext2_update(%struct.vnode* %113, i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %134

123:                                              ; preds = %112
  %124 = load %struct.inode*, %struct.inode** %10, align 8
  %125 = load %struct.vnode*, %struct.vnode** %7, align 8
  %126 = load %struct.componentname*, %struct.componentname** %9, align 8
  %127 = call i32 @ext2_direnter(%struct.inode* %124, %struct.vnode* %125, %struct.componentname* %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %134

131:                                              ; preds = %123
  %132 = load %struct.vnode*, %struct.vnode** %12, align 8
  %133 = load %struct.vnode**, %struct.vnode*** %8, align 8
  store %struct.vnode* %132, %struct.vnode** %133, align 8
  store i32 0, i32* %5, align 4
  br label %145

134:                                              ; preds = %130, %122
  %135 = load %struct.inode*, %struct.inode** %10, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 3
  store i32 0, i32* %136, align 4
  %137 = load i32, i32* @IN_CHANGE, align 4
  %138 = load %struct.inode*, %struct.inode** %10, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load %struct.vnode*, %struct.vnode** %12, align 8
  %143 = call i32 @vput(%struct.vnode* %142)
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %134, %131, %34
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @ext2_valloc(%struct.vnode*, i32, %struct.TYPE_7__*, %struct.vnode**) #1

declare dso_local i32 @IFTOVT(i32) #1

declare dso_local i32 @groupmember(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @priv_check_cred(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ext2_update(%struct.vnode*, i32) #1

declare dso_local i32 @DOINGASYNC(%struct.vnode*) #1

declare dso_local i32 @ext2_direnter(%struct.inode*, %struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
