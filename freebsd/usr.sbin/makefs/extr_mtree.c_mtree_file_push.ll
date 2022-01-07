; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_mtree_file_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_mtree_file_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtree_fileinfo = type { i64, i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mtree_fileinfo = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @mtree_file_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtree_file_push(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mtree_fileinfo*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call %struct.mtree_fileinfo* @emalloc(i32 24)
  store %struct.mtree_fileinfo* %7, %struct.mtree_fileinfo** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = call i8* @estrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.mtree_fileinfo*, %struct.mtree_fileinfo** %6, align 8
  %15 = getelementptr inbounds %struct.mtree_fileinfo, %struct.mtree_fileinfo* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  br label %22

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @estrdup(i8* %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.mtree_fileinfo*, %struct.mtree_fileinfo** %6, align 8
  %21 = getelementptr inbounds %struct.mtree_fileinfo, %struct.mtree_fileinfo* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  br label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.mtree_fileinfo*, %struct.mtree_fileinfo** %6, align 8
  %24 = getelementptr inbounds %struct.mtree_fileinfo, %struct.mtree_fileinfo* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.mtree_fileinfo*, %struct.mtree_fileinfo** %6, align 8
  %29 = call i32 @free(%struct.mtree_fileinfo* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %3, align 4
  br label %40

31:                                               ; preds = %22
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.mtree_fileinfo*, %struct.mtree_fileinfo** %6, align 8
  %34 = getelementptr inbounds %struct.mtree_fileinfo, %struct.mtree_fileinfo* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.mtree_fileinfo*, %struct.mtree_fileinfo** %6, align 8
  %36 = getelementptr inbounds %struct.mtree_fileinfo, %struct.mtree_fileinfo* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.mtree_fileinfo*, %struct.mtree_fileinfo** %6, align 8
  %38 = load i32, i32* @next, align 4
  %39 = call i32 @SLIST_INSERT_HEAD(i32* @mtree_fileinfo, %struct.mtree_fileinfo* %37, i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %31, %27
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.mtree_fileinfo* @emalloc(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @free(%struct.mtree_fileinfo*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.mtree_fileinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
