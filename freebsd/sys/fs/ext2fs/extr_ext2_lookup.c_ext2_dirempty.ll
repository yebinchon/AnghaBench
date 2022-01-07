; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_lookup.c_ext2_dirempty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_lookup.c_ext2_dirempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.ucred = type { i32 }
%struct.dirtemplate = type { i32 }
%struct.ext2fs_direct_2 = type { i64, i64, i32, i8* }
%struct.thread = type { i32 }

@UIO_READ = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@IO_NOMACCHECK = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@MINDIRSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_dirempty(%struct.inode* %0, i64 %1, %struct.ucred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dirtemplate, align 4
  %10 = alloca %struct.ext2fs_direct_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  %14 = bitcast %struct.dirtemplate* %9 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %14, %struct.ext2fs_direct_2** %10, align 8
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %89, %3
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %95

21:                                               ; preds = %15
  %22 = load i32, i32* @UIO_READ, align 4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call i32 @ITOV(%struct.inode* %23)
  %25 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %10, align 8
  %26 = ptrtoint %struct.ext2fs_direct_2* %25 to i32
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* @UIO_SYSSPACE, align 4
  %29 = load i32, i32* @IO_NODELOCKED, align 4
  %30 = load i32, i32* @IO_NOMACCHECK, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.ucred*, %struct.ucred** %7, align 8
  %33 = load i32, i32* @NOCRED, align 4
  %34 = call i32 @vn_rdwr(i32 %22, i32 %24, i32 %26, i32 2, i64 %27, i32 %28, i32 %31, %struct.ucred* %32, i32 %33, i64* %13, %struct.thread* null)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %21
  %38 = load i64, i64* %13, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %21
  store i32 0, i32* %4, align 4
  br label %96

41:                                               ; preds = %37
  %42 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %10, align 8
  %43 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %96

47:                                               ; preds = %41
  %48 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %10, align 8
  %49 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %89

53:                                               ; preds = %47
  %54 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %10, align 8
  %55 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp sgt i32 %57, 2
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %96

60:                                               ; preds = %53
  %61 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %10, align 8
  %62 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 46
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %96

69:                                               ; preds = %60
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %89

73:                                               ; preds = %69
  %74 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %10, align 8
  %75 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 46
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %10, align 8
  %83 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %89

88:                                               ; preds = %81, %73
  store i32 0, i32* %4, align 4
  br label %96

89:                                               ; preds = %87, %72, %52
  %90 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %10, align 8
  %91 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %8, align 8
  br label %15

95:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %88, %68, %59, %46, %40
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @vn_rdwr(i32, i32, i32, i32, i64, i32, i32, %struct.ucred*, i32, i64*, %struct.thread*) #1

declare dso_local i32 @ITOV(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
