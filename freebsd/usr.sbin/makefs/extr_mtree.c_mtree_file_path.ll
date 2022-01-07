; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_mtree_file_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_mtree_file_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, %struct.TYPE_3__* }
%struct.sbuf = type { i32 }

@MAKEFS_MAX_TREE_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @mtree_file_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mtree_file_path(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %11 = load i32, i32* @MAKEFS_MAX_TREE_DEPTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8*, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %14, i64 %19
  store i8* %17, i8** %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %4, align 8
  br label %24

24:                                               ; preds = %49, %1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MAKEFS_MAX_TREE_DEPTH, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp slt i32 %28, %30
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i1 [ false, %24 ], [ %31, %27 ]
  br i1 %33, label %34, label %53

34:                                               ; preds = %32
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %53

41:                                               ; preds = %34
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %14, i64 %47
  store i8* %44, i8** %48, align 8
  br label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %4, align 8
  br label %24

53:                                               ; preds = %40, %32
  %54 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %54, %struct.sbuf** %5, align 8
  %55 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %56 = icmp eq %struct.sbuf* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @ENOMEM, align 4
  store i32 %58, i32* @errno, align 4
  store i8* null, i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %93

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %63, %59
  %61 = load i32, i32* %9, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %9, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8*, i8** %14, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @sbuf_cat(%struct.sbuf* %64, i8* %69)
  %71 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %72 = call i32 @sbuf_putc(%struct.sbuf* %71, i8 signext 47)
  br label %60

73:                                               ; preds = %60
  %74 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %14, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @sbuf_cat(%struct.sbuf* %74, i8* %78)
  %80 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %81 = call i32 @sbuf_finish(%struct.sbuf* %80)
  %82 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %83 = call i32 @sbuf_data(%struct.sbuf* %82)
  %84 = call i8* @estrdup(i32 %83)
  store i8* %84, i8** %6, align 8
  %85 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %86 = call i32 @sbuf_delete(%struct.sbuf* %85)
  %87 = load i8*, i8** %6, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %73
  %90 = load i32, i32* @ENOMEM, align 4
  store i32 %90, i32* @errno, align 4
  br label %91

91:                                               ; preds = %89, %73
  %92 = load i8*, i8** %6, align 8
  store i8* %92, i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %93

93:                                               ; preds = %91, %57
  %94 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i8*, i8** %2, align 8
  ret i8* %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #2

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #2

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #2

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #2

declare dso_local i8* @estrdup(i32) #2

declare dso_local i32 @sbuf_data(%struct.sbuf*) #2

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
