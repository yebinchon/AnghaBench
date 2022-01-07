; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/extattrctl/extr_extattrctl.c_initattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/extattrctl/extr_extattrctl.c_initattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_extattr_fileheader = type { i32, i32, i32 }

@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"fp:r:w:\00", align 1
@optarg = common dso_local global i8* null, align 8
@UFS_EXTATTR_MAGIC = common dso_local global i32 0, align 4
@UFS_EXTATTR_VERSION = common dso_local global i32 0, align 4
@zero_buf = common dso_local global %struct.ufs_extattr_fileheader* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @initattr(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ufs_extattr_fileheader, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  %14 = load i32, i32* @O_CREAT, align 4
  %15 = load i32, i32* @O_WRONLY, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @O_TRUNC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @O_EXCL, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %11, align 4
  store i64 0, i64* @optind, align 8
  br label %21

21:                                               ; preds = %38, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %36 [
    i32 102, label %28
    i32 112, label %33
    i32 63, label %35
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @O_EXCL, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %11, align 4
  br label %38

33:                                               ; preds = %26
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** %7, align 8
  br label %38

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %26, %35
  %37 = call i32 (...) @usage()
  br label %38

38:                                               ; preds = %36, %33, %28
  br label %21

39:                                               ; preds = %21
  %40 = load i64, i64* @optind, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load i64, i64* @optind, align 8
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 %45
  store i8** %47, i8*** %5, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 2
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = call i32 (...) @usage()
  br label %52

52:                                               ; preds = %50, %39
  store i32 0, i32* %10, align 4
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @open(i8* %55, i32 %56, i32 384)
  store i32 %57, i32* %9, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @perror(i8* %62)
  store i32 -1, i32* %3, align 4
  br label %133

64:                                               ; preds = %52
  %65 = load i32, i32* @UFS_EXTATTR_MAGIC, align 4
  %66 = getelementptr inbounds %struct.ufs_extattr_fileheader, %struct.ufs_extattr_fileheader* %6, i32 0, i32 2
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @UFS_EXTATTR_VERSION, align 4
  %68 = getelementptr inbounds %struct.ufs_extattr_fileheader, %struct.ufs_extattr_fileheader* %6, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @atoi(i8* %71)
  %73 = getelementptr inbounds %struct.ufs_extattr_fileheader, %struct.ufs_extattr_fileheader* %6, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @write(i32 %74, %struct.ufs_extattr_fileheader* %6, i64 12)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  store i32 -1, i32* %10, align 4
  br label %116

78:                                               ; preds = %64
  %79 = load i8*, i8** %7, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %115

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.ufs_extattr_fileheader, %struct.ufs_extattr_fileheader* %6, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 12, %84
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @num_inodes_by_path(i8* %86)
  %88 = sext i32 %87 to i64
  %89 = mul i64 %85, %88
  store i64 %89, i64* %13, align 8
  br label %90

90:                                               ; preds = %109, %81
  %91 = load i64, i64* %13, align 8
  %92 = icmp ugt i64 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %90
  %94 = load i64, i64* %13, align 8
  %95 = icmp ugt i64 %94, 8
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.ufs_extattr_fileheader*, %struct.ufs_extattr_fileheader** @zero_buf, align 8
  %99 = call i32 @write(i32 %97, %struct.ufs_extattr_fileheader* %98, i64 8)
  store i32 %99, i32* %12, align 4
  br label %105

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.ufs_extattr_fileheader*, %struct.ufs_extattr_fileheader** @zero_buf, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call i32 @write(i32 %101, %struct.ufs_extattr_fileheader* %102, i64 %103)
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %100, %96
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 -1, i32* %10, align 4
  br label %114

109:                                              ; preds = %105
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %13, align 8
  %113 = sub i64 %112, %111
  store i64 %113, i64* %13, align 8
  br label %90

114:                                              ; preds = %108, %90
  br label %115

115:                                              ; preds = %114, %78
  br label %116

116:                                              ; preds = %115, %77
  %117 = load i32, i32* %10, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  %120 = load i8**, i8*** %5, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @perror(i8* %122)
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @unlink(i8* %126)
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @close(i32 %128)
  store i32 -1, i32* %3, align 4
  br label %133

130:                                              ; preds = %116
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @close(i32 %131)
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %130, %119, %59
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @write(i32, %struct.ufs_extattr_fileheader*, i64) #1

declare dso_local i32 @num_inodes_by_path(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
