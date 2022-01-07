; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_lookup.c_ext2_dirremove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_lookup.c_ext2_dirremove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32 }
%struct.inode = type { i64, i64, i32 }
%struct.ext2fs_direct_2 = type { i32, i64 }
%struct.buf = type { i64 }

@IN_CHANGE = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_dirremove(%struct.vnode* %0, %struct.componentname* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.componentname*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext2fs_direct_2*, align 8
  %8 = alloca %struct.ext2fs_direct_2*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.componentname* %1, %struct.componentname** %5, align 8
  %11 = load %struct.vnode*, %struct.vnode** %4, align 8
  %12 = call %struct.inode* @VTOI(%struct.vnode* %11)
  store %struct.inode* %12, %struct.inode** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load %struct.vnode*, %struct.vnode** %4, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = bitcast %struct.ext2fs_direct_2** %7 to i8**
  %24 = call i32 @ext2_blkatoff(%struct.vnode* %18, i32 %22, i8** %23, %struct.buf** %9)
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %115

28:                                               ; preds = %17
  %29 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %7, align 8
  %30 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = load %struct.buf*, %struct.buf** %9, align 8
  %33 = getelementptr inbounds %struct.buf, %struct.buf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ext2fs_direct_2*
  %36 = call i32 @ext2_dirent_csum_set(%struct.inode* %31, %struct.ext2fs_direct_2* %35)
  %37 = load %struct.buf*, %struct.buf** %9, align 8
  %38 = call i32 @bwrite(%struct.buf* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @IN_CHANGE, align 4
  %40 = load i32, i32* @IN_UPDATE, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %3, align 4
  br label %115

47:                                               ; preds = %2
  %48 = load %struct.vnode*, %struct.vnode** %4, align 8
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = trunc i64 %55 to i32
  %57 = bitcast %struct.ext2fs_direct_2** %7 to i8**
  %58 = call i32 @ext2_blkatoff(%struct.vnode* %48, i32 %56, i8** %57, %struct.buf** %9)
  store i32 %58, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %47
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %3, align 4
  br label %115

62:                                               ; preds = %47
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %7, align 8
  store %struct.ext2fs_direct_2* %68, %struct.ext2fs_direct_2** %8, align 8
  br label %78

69:                                               ; preds = %62
  %70 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %7, align 8
  %71 = bitcast %struct.ext2fs_direct_2* %70 to i8*
  %72 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %7, align 8
  %73 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %71, i64 %75
  %77 = bitcast i8* %76 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %77, %struct.ext2fs_direct_2** %8, align 8
  br label %78

78:                                               ; preds = %69, %67
  %79 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %8, align 8
  %80 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %7, align 8
  %83 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = load %struct.buf*, %struct.buf** %9, align 8
  %88 = getelementptr inbounds %struct.buf, %struct.buf* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to %struct.ext2fs_direct_2*
  %91 = call i32 @ext2_dirent_csum_set(%struct.inode* %86, %struct.ext2fs_direct_2* %90)
  %92 = load %struct.vnode*, %struct.vnode** %4, align 8
  %93 = call i64 @DOINGASYNC(%struct.vnode* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %78
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.buf*, %struct.buf** %9, align 8
  %102 = call i32 @bdwrite(%struct.buf* %101)
  br label %106

103:                                              ; preds = %95, %78
  %104 = load %struct.buf*, %struct.buf** %9, align 8
  %105 = call i32 @bwrite(%struct.buf* %104)
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* @IN_CHANGE, align 4
  %108 = load i32, i32* @IN_UPDATE, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.inode*, %struct.inode** %6, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %106, %60, %28, %26
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @ext2_blkatoff(%struct.vnode*, i32, i8**, %struct.buf**) #1

declare dso_local i32 @ext2_dirent_csum_set(%struct.inode*, %struct.ext2fs_direct_2*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i64 @DOINGASYNC(%struct.vnode*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
