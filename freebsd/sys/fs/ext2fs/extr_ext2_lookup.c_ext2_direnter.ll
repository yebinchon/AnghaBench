; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_lookup.c_ext2_direnter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_lookup.c_ext2_direnter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i64, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vnode = type { i32 }
%struct.componentname = type { i32, i32, i32, i64, i32 }
%struct.ext2fs_direct_2 = type { i32, i32, i64, i32 }

@EXT2F_INCOMPAT_FTYPE = common dso_local global i32 0, align 4
@EXT2_FT_UNKNOWN = common dso_local global i32 0, align 4
@IN_E3INDEX = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4
@EXT2F_COMPAT_DIRHASHINDEX = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_direnter(%struct.inode* %0, %struct.vnode* %1, %struct.componentname* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext2fs_direct_2, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.componentname* %2, %struct.componentname** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 5
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = call %struct.inode* @VTOI(%struct.vnode* %17)
  store %struct.inode* %18, %struct.inode** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %9, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = load %struct.componentname*, %struct.componentname** %7, align 8
  %24 = getelementptr inbounds %struct.componentname, %struct.componentname* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %9, i32 0, i32 2
  store i64 %25, i64* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 5
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* @EXT2F_INCOMPAT_FTYPE, align 4
  %31 = call i64 @EXT2_HAS_INCOMPAT_FEATURE(%struct.TYPE_3__* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @IFTODT(i32 %36)
  %38 = call i32 @DTTOFT(i32 %37)
  %39 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %9, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  br label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EXT2_FT_UNKNOWN, align 4
  %42 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %9, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %33
  %44 = load %struct.componentname*, %struct.componentname** %7, align 8
  %45 = getelementptr inbounds %struct.componentname, %struct.componentname* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.componentname*, %struct.componentname** %7, align 8
  %50 = getelementptr inbounds %struct.componentname, %struct.componentname* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = add i32 %52, 1
  %54 = call i32 @bcopy(i32 %46, i32 %48, i32 %53)
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = call i64 @ext2_htree_has_idx(%struct.inode* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %43
  %59 = load %struct.vnode*, %struct.vnode** %6, align 8
  %60 = load %struct.componentname*, %struct.componentname** %7, align 8
  %61 = call i32 @ext2_htree_add_entry(%struct.vnode* %59, %struct.ext2fs_direct_2* %9, %struct.componentname* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load i32, i32* @IN_E3INDEX, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.inode*, %struct.inode** %8, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @IN_CHANGE, align 4
  %72 = load i32, i32* @IN_UPDATE, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %64, %58
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %151

80:                                               ; preds = %43
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 5
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* @EXT2F_COMPAT_DIRHASHINDEX, align 4
  %85 = call i64 @EXT2_HAS_COMPAT_FEATURE(%struct.TYPE_3__* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %80
  %88 = load %struct.inode*, %struct.inode** %8, align 8
  %89 = call i64 @ext2_htree_has_idx(%struct.inode* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %109, label %91

91:                                               ; preds = %87
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sdiv i32 %94, %95
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %108

98:                                               ; preds = %91
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load %struct.vnode*, %struct.vnode** %6, align 8
  %106 = load %struct.componentname*, %struct.componentname** %7, align 8
  %107 = call i32 @ext2_htree_create_index(%struct.vnode* %105, %struct.componentname* %106, %struct.ext2fs_direct_2* %9)
  store i32 %107, i32* %4, align 4
  br label %151

108:                                              ; preds = %98, %91
  br label %109

109:                                              ; preds = %108, %87, %80
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.vnode*, %struct.vnode** %6, align 8
  %116 = load %struct.componentname*, %struct.componentname** %7, align 8
  %117 = call i32 @ext2_add_first_entry(%struct.vnode* %115, %struct.ext2fs_direct_2* %9, %struct.componentname* %116)
  store i32 %117, i32* %4, align 4
  br label %151

118:                                              ; preds = %109
  %119 = load %struct.vnode*, %struct.vnode** %6, align 8
  %120 = call i32 @ext2_add_entry(%struct.vnode* %119, %struct.ext2fs_direct_2* %9)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %149, label %123

123:                                              ; preds = %118
  %124 = load %struct.inode*, %struct.inode** %8, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %149

128:                                              ; preds = %123
  %129 = load %struct.inode*, %struct.inode** %8, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.inode*, %struct.inode** %8, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %128
  %137 = load %struct.vnode*, %struct.vnode** %6, align 8
  %138 = load %struct.inode*, %struct.inode** %8, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @IO_SYNC, align 4
  %142 = load %struct.componentname*, %struct.componentname** %7, align 8
  %143 = getelementptr inbounds %struct.componentname, %struct.componentname* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.componentname*, %struct.componentname** %7, align 8
  %146 = getelementptr inbounds %struct.componentname, %struct.componentname* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ext2_truncate(%struct.vnode* %137, i32 %140, i32 %141, i32 %144, i32 %147)
  store i32 %148, i32* %11, align 4
  br label %149

149:                                              ; preds = %136, %128, %123, %118
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %149, %114, %104, %78
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i64 @EXT2_HAS_INCOMPAT_FEATURE(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @DTTOFT(i32) #1

declare dso_local i32 @IFTODT(i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i64 @ext2_htree_has_idx(%struct.inode*) #1

declare dso_local i32 @ext2_htree_add_entry(%struct.vnode*, %struct.ext2fs_direct_2*, %struct.componentname*) #1

declare dso_local i64 @EXT2_HAS_COMPAT_FEATURE(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ext2_htree_create_index(%struct.vnode*, %struct.componentname*, %struct.ext2fs_direct_2*) #1

declare dso_local i32 @ext2_add_first_entry(%struct.vnode*, %struct.ext2fs_direct_2*, %struct.componentname*) #1

declare dso_local i32 @ext2_add_entry(%struct.vnode*, %struct.ext2fs_direct_2*) #1

declare dso_local i32 @ext2_truncate(%struct.vnode*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
