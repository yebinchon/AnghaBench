; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/extattrctl/extr_extattrctl.c_showattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/extattrctl/extr_extattrctl.c_showattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_extattr_fileheader = type { i64, i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: invalid file header\0A\00", align 1
@UFS_EXTATTR_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: bad magic\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: version %d, size %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @showattr(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ufs_extattr_fileheader, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @usage()
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = call i32 @open(i8* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @perror(i8* %24)
  store i32 -1, i32* %3, align 4
  br label %74

26:                                               ; preds = %13
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @read(i32 %27, %struct.ufs_extattr_fileheader* %6, i32 16)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @perror(i8* %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @close(i32 %36)
  store i32 -1, i32* %3, align 4
  br label %74

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 16
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @close(i32 %48)
  store i32 -1, i32* %3, align 4
  br label %74

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.ufs_extattr_fileheader, %struct.ufs_extattr_fileheader* %6, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @UFS_EXTATTR_MAGIC, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @close(i32 %61)
  store i32 -1, i32* %3, align 4
  br label %74

63:                                               ; preds = %50
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds %struct.ufs_extattr_fileheader, %struct.ufs_extattr_fileheader* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.ufs_extattr_fileheader, %struct.ufs_extattr_fileheader* %6, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %66, i32 %68, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @close(i32 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %63, %55, %42, %31, %21
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @read(i32, %struct.ufs_extattr_fileheader*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
